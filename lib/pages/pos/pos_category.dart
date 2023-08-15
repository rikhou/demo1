import 'package:flutter/material.dart';

class PosCategory extends StatelessWidget {
  const PosCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.white,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black54),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 14)),
                minimumSize: MaterialStateProperty.all(const Size(80, 80)),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero)),
              ),
              onPressed: () => {},
              child: Text("Pinned(0)"),
            ),
            const VerticalDivider(thickness: 1, color: Colors.black12),
          ],
        ),
      ),
    );
  }
}
