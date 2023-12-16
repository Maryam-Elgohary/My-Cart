import 'package:flutter/material.dart';

class CartTotalPrice extends StatefulWidget {
  const CartTotalPrice({super.key});

  @override
  State<CartTotalPrice> createState() => _CartTotalPriceState();
}

class _CartTotalPriceState extends State<CartTotalPrice> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.00, 1.00),
      child: Container(
        width: 404,
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(
                      color: Color(0xFF636363),
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$120.00',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(200, 47)),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                child: const Text(
                  "Check Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
