import 'package:flutter/material.dart';
// import "./pos_card.dart";

class PosProduct {
  const PosProduct(this.name, this.price);
  final String name;
  final double price;
}

class PosCards extends StatefulWidget {
  const PosCards({super.key});

  @override
  State<PosCards> createState() => _PosCardsState();
}

class _PosCardsState extends State<PosCards> {
  final List<PosProduct> products = const [
    PosProduct('Eggs', 10),
    PosProduct('b', 18),
    PosProduct('c1', 6),
    PosProduct('c2', 77),
    PosProduct('c3', 22),
    PosProduct('c5', 3),
    PosProduct('c6', 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemBuilder: (context, index) => PosCard(
          product: products[index],
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2 / 1),
        itemCount: products.length,
      ),
    );
  }
}

class PosCard extends StatelessWidget {
  final PosProduct product;
  const PosCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.push_pin_outlined,
                  color: Colors.blue[700],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
