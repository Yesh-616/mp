import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LTI Transactions')),
      body: const TransactionsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle transaction processing
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> transactions = [
      {
        "Transaction Type": "Dividend Processed",
        "Plan Name": "LTIP 2024",
        "Date": "2024-02-20",
        "Amount": "\$5000",
      },
      {
        "Transaction Type": "Interest Applied",
        "Plan Name": "LTIP 2025",
        "Date": "2024-03-01",
        "Amount": "\$1200",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Transaction Type')),
          DataColumn(label: Text('Plan Name')),
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Amount')),
        ],
        rows: transactions.map((transaction) {
          return DataRow(cells: [
            DataCell(Text(transaction["Transaction Type"]!)),
            DataCell(Text(transaction["Plan Name"]!)),
            DataCell(Text(transaction["Date"]!)),
            DataCell(Text(transaction["Amount"]!)),
          ]);
        }).toList(),
      ),
    );
  }
}
