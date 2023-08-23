import 'package:flutter/material.dart';
import '../../models/light_pos_product.dart';

class PosTitle extends StatelessWidget {
  PosTitle(
      {super.key,
      required this.data,
      required this.onSelected,
      required this.onChanged});

  final LightPosProduct? data;
  final Function(Products) onSelected;
  final Function(String) onChanged;

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
            width: 300,
            child: Autocomplete<Products>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                return Future.delayed(const Duration(milliseconds: 50), () {
                  return data!.products!
                      .where((product) => product.name!
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase()))
                      .toList();
                });
              },
              onSelected: onSelected,
              fieldViewBuilder: (BuildContext context,
                  TextEditingController textEditingController,
                  FocusNode focusNode,
                  VoidCallback onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onChanged: onChanged,
                  textInputAction: TextInputAction.search,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Enter product name',
                    hintStyle: TextStyle(color: Colors.black26),
                    suffixIcon: Icon(Icons.search),
                  ),
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
