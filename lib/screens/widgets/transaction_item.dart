import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_helios/models/graphql/accounts.graphql.dart';
import 'package:flutter_test_helios/services/utils.dart';
import 'package:intl/intl.dart';

class TransactionItem extends ConsumerWidget {
  final Query$GetAccountHistory$transferConnection$edges$node transaction;
  final bool isOutgoing;

  const TransactionItem(this.transaction, this.isOutgoing);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amountFormatted = transaction.amount / 100;

    return ListTile(
      leading: isOutgoing
          ? const Icon(Icons.call_made)
          : const Icon(Icons.call_received),
      title: isOutgoing
          ? Text('To ${getShortAddress(transaction.toId!)}')
          : Text('From ${getShortAddress(transaction.fromId!)}'),
      subtitle: Text(DateFormat.yMd().add_Hms().format(transaction.timestamp)),
      trailing: Text(
        '${isOutgoing ? '-' : '+'} $amountFormatted ĞDev',
        style: TextStyle(
          color: isOutgoing ? Colors.blue : Colors.green,
          fontSize: 14,
        ),
      ),
    );
  }
}
