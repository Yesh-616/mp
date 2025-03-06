import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LTI Payments')),
      body: const PaymentsList(),
    );
  }
}

class PaymentsList extends StatelessWidget {
  const PaymentsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> payments = [
      {
        "Employee Name": "John Doe",
        "Plan Name": "LTIP 2024",
        "Amount": "\$5000",
        "Status": "Paid",
      },
      {
        "Employee Name": "Alice Smith",
        "Plan Name": "LTIP 2025",
        "Amount": "\$1200",
        "Status": "Pending",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Employee Name')),
          DataColumn(label: Text('Plan Name')),
          DataColumn(label: Text('Amount')),
          DataColumn(label: Text('Status')),
        ],
        rows: payments.map((payment) {
          return DataRow(cells: [
            DataCell(Text(payment["Employee Name"]!)),
            DataCell(Text(payment["Plan Name"]!)),
            DataCell(Text(payment["Amount"]!)),
            DataCell(Text(payment["Status"]!)),
          ]);
        }).toList(),
      ),
    );
  }
}
