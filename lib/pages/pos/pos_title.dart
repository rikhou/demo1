import 'package:flutter/material.dart';
import '../../models/light_pos_product.dart';

class PosTitle extends StatelessWidget {
  PosTitle({
    super.key,
    required this.posData,
    required this.onSelectedProduct,
  });

  final LightPosProduct? posData;
  final Function(String) onSelectedProduct;
  String selectedProduct = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Point of Sale",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: Autocomplete<Products>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                return Future.delayed(const Duration(milliseconds: 50), () {
                  return posData!.products!
                      .where((product) => product.name!
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase()))
                      .toList();
                });
              },
              onSelected: (Products product) {
                onSelectedProduct(product.name!);
              },
              fieldViewBuilder: (BuildContext context,
                  TextEditingController textEditingController,
                  FocusNode focusNode,
                  VoidCallback onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onChanged: (text) {
                    selectedProduct = text;
                  },
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: 'Enter product name',
                      hintStyle: const TextStyle(color: Colors.black26),
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              textEditingController.text.isNotEmpty
                                  ? IconButton(
                                      icon: const Icon(Icons.cancel,
                                          color: Colors.grey),
                                      onPressed: () {
                                        textEditingController.clear();
                                        onSelectedProduct("");
                                      },
                                    )
                                  : Container(),
                              const VerticalDivider(),
                              IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {
                                  onSelectedProduct(selectedProduct);
                                },
                              )
                            ]),
                      )),
                );
              },
              displayStringForOption: (Products product) => '${product.name}',
            ),
          ),
        ],
      ),
    );
  }
}
