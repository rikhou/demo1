import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Ridgway State Park",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              SizedBox(
                height: 42,
                width: 100,
                child: FilledButton(
                    onPressed: null,
                    style: FilledButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                      child: const Row(
                        children: [
                          Icon(Icons.shopping_cart),
                          SizedBox(width: 5),
                          Column(children: [
                            Text(
                              "0 ITEM",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "\$0.00",
                              style: TextStyle(fontSize: 12),
                            ),
                          ]),
                        ],
                      ),
                    )),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 42,
                width: 42,
                child: FilledButton(
                  onPressed: () => {},
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(98, 98, 98, 1),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: const Text("AL"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
