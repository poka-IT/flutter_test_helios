import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_helios/global.dart';
import 'package:flutter_test_helios/providers/history_provider.dart';
import 'package:flutter_test_helios/screens/widgets/transaction_item.dart';
import 'package:flutter_test_helios/services/squid_service.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final _scrollController = ScrollController();
  Timer? _debounceTimer;
  String searchTerm = '';

  // This is a test address
  final address = '5CQ8T4qpbYJq7uVsxGPQ5q2df7x3Wa4aRY6HUWMBYjfLZhnn';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    SquidService.init('wss://gdev-squid.axiom-team.fr/v1beta1/relay');
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    const duration = Duration(milliseconds: 300);
    if (maxScroll - currentScroll <= 100) {
      if (_debounceTimer?.isActive ?? false) {
        _debounceTimer?.cancel();
        _debounceTimer = Timer(duration, () {
          ref.read(accountHistoryProvider(address).notifier).fetchNextPage(20);
        });
      } else {
        ref.read(accountHistoryProvider(address).notifier).fetchNextPage(20);
        _debounceTimer = Timer(duration, () {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _refreshTransactions() async {
      ref.read(accountHistoryProvider(address).notifier).refetchData();
    }

    final historyAsync = ref.watch(accountHistoryProvider(address));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Helios Test App'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchTerm = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
      body: historyAsync.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stack) {
          log.e('Error: $error');
          return Center(child: Text('Error: $error'));
        },
        data: (transactions) {
          Widget transactionList() {
            final filteredTransactions = transactions.where((tx) {
              final fromAddress = tx.fromId?.toLowerCase() ?? '';
              final toAddress = tx.toId?.toLowerCase() ?? '';
              final searchTermLower = searchTerm.toLowerCase();
              return fromAddress.contains(searchTermLower) ||
                  toAddress.contains(searchTermLower);
            }).toList();

            if (filteredTransactions.isEmpty) {
              return const Center(
                child: Text('nothing found...', style: TextStyle(fontSize: 16)),
              );
            }

            return ListView.builder(
              controller: _scrollController,
              itemCount: filteredTransactions.length,
              itemBuilder: (context, index) {
                final tx = filteredTransactions[index];
                return TransactionItem(tx, tx.fromId == address);
              },
            );
          }

          return RefreshIndicator(
            onRefresh: _refreshTransactions,
            child: transactionList(),
          );
        },
      ),
    );
  }
}
