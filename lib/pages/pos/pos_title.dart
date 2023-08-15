import 'package:flutter/material.dart';

class PosTitle extends StatelessWidget {
  const PosTitle({super.key});

  // TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Point of Sale",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 300,
            child: TextField(
              // controller: usernameController,
              textCapitalization: TextCapitalization.characters,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(10.0),
                // icon: Icon(Icons.person),
                labelText: 'Enter product name or barcode #',
              ),
              textInputAction: TextInputAction.go,
            ),
          ),
        ],
      ),
    );
  }
}
