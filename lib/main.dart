import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/awards_page.dart';
import 'screens/plans_page.dart';
import 'screens/transactions_page.dart';
import 'screens/approvals_page.dart';
import 'screens/payments_page.dart';

void main() {
  runApp(const LTIPApp());
}

class LTIPApp extends StatelessWidget {
  const LTIPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const AwardsPage(),
    const PlansPage(),
    const TransactionsPage(),
    const ApprovalsPage(),
    const PaymentsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Awards'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle), label: 'Approvals'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payments'),
        ],
      ),
    );
  }
}
