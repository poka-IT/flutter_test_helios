import 'dart:async';
import 'package:flutter_test_helios/global.dart';
import 'package:flutter_test_helios/models/graphql/accounts.graphql.dart';
import 'package:flutter_test_helios/services/history_service.dart';
import 'package:flutter_test_helios/services/squid_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_provider.g.dart';

@riverpod
class AccountHistory extends _$AccountHistory {
  late String address;
  late AccountHistoryService _accountHistoryService;
  StreamSubscription? _historySubscriptions;
  bool _isFirstFetchComplete = false;

  @override
  FutureOr<List<Query$GetAccountHistory$transferConnection$edges$node>> build(
      String address) async {
    log.d('Building account history for $address');
    this.address = address;
    await _accountHistoryService.fetchNextPage(address);
    return _accountHistoryService.accountHistory;
  }

  Future<void> fetchNextPage([int size = 20]) async {
    await _accountHistoryService.fetchNextPage(address, size);
    state = AsyncValue.data(_accountHistoryService.accountHistory);
  }

  Future<void> refetchData([int size = 20]) async {
    state = const AsyncValue.loading();
    await _accountHistoryService.refetchData(address, size);
    state = AsyncValue.data(_accountHistoryService.accountHistory);
  }

  void subscribeToAccountHistory() {
    if (_historySubscriptions != null) {
      return;
    }

    log.d('Subscribing to account history for $address');

    final client = SquidService.client;
    _isFirstFetchComplete = false;
    _historySubscriptions = client.subAccountHistory(address).listen(
      (update) {
        if (_isFirstFetchComplete) {
          refetchData();
        } else {
          _isFirstFetchComplete = true;
        }
      },
      onError: (err) {
        log.e('Subscription error: $err');
      },
    );
  }

  void dispose() {
    _historySubscriptions?.cancel();
    _historySubscriptions = null;
  }
}
