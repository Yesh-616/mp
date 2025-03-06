import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('LTIP Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: const Text('Awards'),
            onTap: () => context.go('/awards'),
          ),
          ListTile(
            title: const Text('Plans'),
            onTap: () => context.go('/plans'),
          ),
          ListTile(
            title: const Text('Transactions'),
            onTap: () => context.go('/transactions'),
          ),
          ListTile(
            title: const Text('Approvals'),
            onTap: () => context.go('/approvals'),
          ),
          ListTile(
            title: const Text('Payments'),
            onTap: () => context.go('/payments'),
          ),
        ],
      ),
    );
  }
}
