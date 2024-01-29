// ignore: file_names
import 'package:flutter/material.dart';
import 'package:nile/screens/screens.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const String routeName = '/car';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Card',
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
