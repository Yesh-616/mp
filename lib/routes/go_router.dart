import 'package:go_router/go_router.dart';
import '../screens/home_page.dart';
import '../screens/awards_page.dart';
import '../screens/plans_page.dart';
import '../screens/transactions_page.dart';
import '../screens/approvals_page.dart';
import '../screens/payments_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/awards', builder: (context, state) => const AwardsPage()),
    GoRoute(path: '/plans', builder: (context, state) => const PlansPage()),
    GoRoute(path: '/transactions', builder: (context, state) => const TransactionsPage()),
    GoRoute(path: '/approvals', builder: (context, state) => const ApprovalsPage()),
    GoRoute(path: '/payments', builder: (context, state) => const PaymentsPage()),
  ],
);
