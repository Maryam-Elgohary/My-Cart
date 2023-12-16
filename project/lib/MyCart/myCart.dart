import 'package:flutter/material.dart';
import 'package:project/MyCart/CartListView.dart';
import 'package:project/MyCart/CartTotalPrice.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
        alignment: Alignment.bottomCenter,
        children: [CartList(), CartTotalPrice()]);
  }
}
