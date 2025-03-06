import 'package:flutter/material.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LTI Plans Management')),
      body: const PlansList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle adding a new plan
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PlansList extends StatelessWidget {
  const PlansList({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for now
    final List<Map<String, String>> plans = [
      {
        "Plan Name": "LTIP 2024",
        "Vehicle": "RSU",
        "Status": "Active",
        "Currency": "USD",
        "Total Grants": "1000",
      },
      {
        "Plan Name": "LTIP 2025",
        "Vehicle": "Cash",
        "Status": "Configuration",
        "Currency": "EUR",
        "Total Grants": "500",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Plan Name')),
          DataColumn(label: Text('Vehicle')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Currency')),
          DataColumn(label: Text('Total Grants')),
        ],
        rows: plans.map((plan) {
          return DataRow(cells: [
            DataCell(Text(plan["Plan Name"]!)),
            DataCell(Text(plan["Vehicle"]!)),
            DataCell(Text(plan["Status"]!)),
            DataCell(Text(plan["Currency"]!)),
            DataCell(Text(plan["Total Grants"]!)),
          ]);
        }).toList(),
      ),
    );
  }
}
