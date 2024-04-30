import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_helios/global.dart';
import 'package:flutter_test_helios/models/graphql/accounts.graphql.dart';
import 'package:flutter_test_helios/providers/history_provider.dart';
import 'package:flutter_test_helios/services/history_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class MockAccountHistoryService extends Mock implements AccountHistoryService {
  @override
  List<Query$GetAccountHistory$transferConnection$edges$node> accountHistory =
      [];
}

void main() {
  late MockAccountHistoryService mockAccountHistoryService;
  late ProviderContainer container;
  final address = '5CQ8T4qpbYJq7uVsxGPQ5q2df7x3Wa4aRY6HUWMBYjfLZhnn';

  setUp(() {
    mockAccountHistoryService = MockAccountHistoryService();
    container = ProviderContainer(
      overrides: [
        accountHistoryProvider(address)
            .overrideWith(() => TestAccountHistory(mockAccountHistoryService)),
      ],
    );
  });

  test('fetchNextPage should update state with new transactions', () async {
    final transactions = [
      Query$GetAccountHistory$transferConnection$edges$node(
        amount: 1000,
        fromId: address,
        toId: address,
        timestamp: DateTime.now(),
      ),
    ];

    when(() => mockAccountHistoryService.fetchNextPage(address, 20))
        .thenAnswer((_) async {
      mockAccountHistoryService.accountHistory = transactions;
    });

    await container
        .read(accountHistoryProvider(address).notifier)
        .fetchNextPage(20);

    expect(container.read(accountHistoryProvider(address)).value, transactions);
    verify(() => mockAccountHistoryService.fetchNextPage(address, 20))
        .called(1);
  });
}

class TestAccountHistory extends AccountHistory {
  TestAccountHistory(this.mockAccountHistoryService);

  final MockAccountHistoryService mockAccountHistoryService;

  @override
  FutureOr<List<Query$GetAccountHistory$transferConnection$edges$node>> build(
      String address) async {
    log.d('Building account history for $address');
    this.address = address;
    accountHistoryService = mockAccountHistoryService;
    return accountHistoryService.accountHistory;
  }
}
