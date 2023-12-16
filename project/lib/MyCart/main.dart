import 'package:flutter/material.dart';

import 'package:project/MyCart/myCart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CartScreen();
  }
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            leading: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notes,
                color: Colors.black,
                size: 40,
              ),
            ),
            title: const Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: Text(
                'My Cart',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            actions: const [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0,
          ),
          body: const MyCart(),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            ],
          ),
        ));
  }
}
