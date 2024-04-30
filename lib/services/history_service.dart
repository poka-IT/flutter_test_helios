// account_history_service.dart
import 'dart:async';

import 'package:flutter_test_helios/models/graphql/accounts.graphql.dart';
import 'package:flutter_test_helios/services/squid_service.dart';

class AccountHistoryService {
  String? _cursor;
  bool _hasMorePages = true;

  List<Query$GetAccountHistory$transferConnection$edges$node> _accountHistory =
      [];

  List<Query$GetAccountHistory$transferConnection$edges$node>
      get accountHistory => _accountHistory;

  Future<void> fetchNextPage(String address, [int size = 30]) async {
    if (!_hasMorePages) return;

    final page = await SquidService.client.getAccountHistory(
      address,
      number: size,
      cursor: _cursor,
    );

    final newTransactions = page?.edges.map((edge) => edge.node).toList() ?? [];

    _cursor = page?.pageInfo.endCursor;
    _accountHistory = [..._accountHistory, ...newTransactions];
    _hasMorePages = page?.pageInfo.hasNextPage ?? false;
  }

  Future<void> refetchData(String address, [int size = 30]) async {
    _cursor = null;
    _hasMorePages = true;
    _accountHistory = [];
    await fetchNextPage(address, size);
  }
}
