import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_helios/models/graphql/accounts.graphql.dart';
import 'package:flutter_test_helios/services/utils.dart';

class DetailsAccount extends ConsumerWidget {
  const DetailsAccount(this.account);
  final Query$GetAccountHistory$transferConnection$edges$node account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail ${getShortAddress(account.fromId!)}'),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text('From: ${getShortAddress(account.fromId!)}'),
            ),
            ListTile(
              title: Text('To: ${getShortAddress(account.toId!)}'),
            ),
            ListTile(
              title: Text('Amount: ${account.amount / 100} ĞDev'),
            ),
            ListTile(
              title: Text('Date: ${formatDateTime(account.timestamp)}'),
            ),
          ],
        ));
  }

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}';
  }
}
