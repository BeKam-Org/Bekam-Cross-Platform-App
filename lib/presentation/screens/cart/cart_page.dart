// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Cart'),
      ),
    );
  }
}
