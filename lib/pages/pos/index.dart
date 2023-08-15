import 'package:flutter/material.dart';
import 'pos_title.dart';
import 'pos_category.dart';
import 'pos_cards.dart';
import 'shopping_cart.dart';

class PosPage extends StatefulWidget {
  const PosPage({super.key});

  @override
  State<PosPage> createState() => _PosPageState();
}

class _PosPageState extends State<PosPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: const Color.fromARGB(255, 242, 243, 246),
            child: Column(
              children: [
                PosTitle(),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                      child: Column(children: [PosCategory(), PosCards()])),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: ShoppingCart(),
        )
      ],
    );
  }
}
