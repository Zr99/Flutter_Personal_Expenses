import 'package:flutter/material.dart';
import '../models/transcation.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 98.50, date: DateTime.now()),
    Transaction(id: 't2', title: 'New Socks', amount: 60, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                padding: EdgeInsets.all(10),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tx.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      DateFormat.yMMMEd().format(tx.date),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ])
            ],
          ),
        );
      }).toList(),
    );
  }
}
