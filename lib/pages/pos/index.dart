import 'package:flutter/material.dart';
import '../../models/light_pos_product.dart';
import 'pos_title.dart';
import 'pos_category.dart';
import 'pos_cards.dart';
import 'shopping_cart.dart';
import '../../service/pos_service.dart';

class PosPage extends StatefulWidget {
  const PosPage({super.key});

  @override
  State<PosPage> createState() => _PosPageState();
}

class _PosPageState extends State<PosPage> {
  String selectedProduct = '';

  @override
  Widget build(BuildContext context) {
    var service = new PosService();
    return FutureBuilder(
      future: service.getLightPosProducts(),
      builder: (BuildContext context, AsyncSnapshot<LightPosProduct> snapshot) {
        if (snapshot.hasData) {
          var posData = snapshot.data;

          return Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: const Color.fromARGB(255, 242, 243, 246),
                  child: Column(
                    children: [
                      PosTitle(
                        posData: posData,
                        onSelectedProduct: (productName) {
                          setState(() {
                            selectedProduct = productName;
                          });
                        },
                      ),
                      Expanded(
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                            child: Column(children: [
                              PosCategory(),
                              PosCards(posData, selectedProduct)
                            ])),
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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
