import 'package:flutter/material.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final userTransactions;
  final deleteTx;
  TransactionList({@required this.userTransactions, @required this.deleteTx});
  @override
  Widget build(BuildContext context) {
    // dynamic rightNow = DateTime(2000, 6, 20);
    // rightNow = DateFormat.yMd().format(rightNow);
    /*var month = DateFormat('').format(rightNow);
     print(month);
     print(rightNow);*/
    return userTransactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                const Text(
                  'No transactions added yet!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    './images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          })
        : ListView(
            children: [
              ...userTransactions
                  .map((tx) => TransactionItem(
                    key: ValueKey(tx.id),
                        deleteTx: deleteTx,
                        transaction: tx,
                      ))
                  
            ],
          );
  }
}
