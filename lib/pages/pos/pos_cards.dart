import 'package:flutter/material.dart';
import '../../models/light_pos_product.dart';

class PosCards extends StatelessWidget {
  final LightPosProduct? data;
  final String selectedProduct;

  PosCards(
    this.data,
    this.selectedProduct, {
    super.key,
  });

  getProduct(List<Products> products, String selectedProduct) {
    if (selectedProduct == "") {
      return products;
    } else {
      return products
          .where((product) => product.name!
              .toLowerCase()
              .contains(selectedProduct.toLowerCase()))
          .toList();
    }
  }

  // final List<PosProduct> products = const [
  @override
  Widget build(BuildContext context) {
    final List<Products>? products =
        getProduct(data!.products!, selectedProduct);
    print(selectedProduct);

    return Expanded(
      child: GridView.builder(
        itemBuilder: (context, index) => PosCard(
          product: products![index],
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2 / 1),
        itemCount: products!.length,
      ),
    );
  }
}

class PosCard extends StatelessWidget {
  final Products product;
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
              product.name!,
              style: const TextStyle(fontWeight: FontWeight.w600),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$10",
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
