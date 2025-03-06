import 'package:flutter/material.dart';

class AwardsPage extends StatelessWidget {
  const AwardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Awards Management')),
      body: const AwardsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle award addition logic
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AwardsList extends StatelessWidget {
  const AwardsList({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for now
    final List<Map<String, String>> awards = [
      {
        "Employee ID": "EMP123",
        "Employee Name": "John Doe",
        "Plan Name": "LTIP 2024",
        "Award Status": "Approved",
        "Award Date": "2024-02-15"
      },
      {
        "Employee ID": "EMP456",
        "Employee Name": "Alice Smith",
        "Plan Name": "LTIP 2025",
        "Award Status": "Pending",
        "Award Date": "2024-03-01"
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Employee ID')),
          DataColumn(label: Text('Employee Name')),
          DataColumn(label: Text('Plan Name')),
          DataColumn(label: Text('Award Status')),
          DataColumn(label: Text('Award Date')),
        ],
        rows: awards.map((award) {
          return DataRow(cells: [
            DataCell(Text(award["Employee ID"]!)),
            DataCell(Text(award["Employee Name"]!)),
            DataCell(Text(award["Plan Name"]!)),
            DataCell(Text(award["Award Status"]!)),
            DataCell(Text(award["Award Date"]!)),
          ]);
        }).toList(),
      ),
    );
  }
}
