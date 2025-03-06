import 'package:flutter/material.dart';

class ApprovalsPage extends StatelessWidget {
  const ApprovalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LTI Approvals')),
      body: const ApprovalsList(),
    );
  }
}

class ApprovalsList extends StatelessWidget {
  const ApprovalsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> approvals = [
      {
        "Employee Name": "John Doe",
        "Plan Name": "LTIP 2024",
        "Status": "Pending",
        "Step": "Step 1",
      },
      {
        "Employee Name": "Alice Smith",
        "Plan Name": "LTIP 2025",
        "Status": "Pending",
        "Step": "Step 2",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Employee Name')),
          DataColumn(label: Text('Plan Name')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Step')),
        ],
        rows: approvals.map((approval) {
          return DataRow(cells: [
            DataCell(Text(approval["Employee Name"]!)),
            DataCell(Text(approval["Plan Name"]!)),
            DataCell(Text(approval["Status"]!)),
            DataCell(Text(approval["Step"]!)),
          ]);
        }).toList(),
      ),
    );
  }
}
