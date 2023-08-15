import 'dart:js_util';

import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final ButtonStyle style = ElevatedButton.styleFrom(
    foregroundColor: Colors.black,
    textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6))),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black12, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Guest",
            style: TextStyle(fontSize: 16, color: Colors.blue[900]),
          ),
          const Divider(),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(80),
                child: Column(
                  children: [
                    Image.asset("assets/images/empty-cart.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "The cart is empty",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                )),
          ),
          const Divider(),
          Column(
            children: [
              getItem("Tax:"),
              getItem("Transaction Fee:"),
              getItem("Discounts:"),
            ],
          ),
          const Divider(),
          Container(
            alignment: Alignment.center,
            height: 80,
            child: Row(
              children: [
                OutlinedButton(
                    style: style,
                    onPressed: () => {},
                    child: const Text("CANCEL")),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: style,
                        onPressed: () => {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [const Text("PAY NOW"), const Text("\$0")],
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget getItem(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), const Text("\$0.00")],
    ),
  );
}
