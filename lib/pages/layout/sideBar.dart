import 'package:flutter/material.dart';

class PosProduct {
  const PosProduct(this.name, this.price);
  final String name;
  final double price;
}

class MenuItem {
  const MenuItem(this.id, this.title, this.icon);
  final String id;
  final String title;
  final IconData icon;
}

class SideBar extends StatelessWidget {
  SideBar({super.key});

  List<MenuItem> menus = [
    MenuItem("1", "Camping", Icons.abc),
    MenuItem("2", "Pos", Icons.sell),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 150,
      alignment: Alignment(0, 0),
      child: ListView(children: [
        for (var item in menus)
          Column(
            children: [
              Icon(item.icon),
              Text(item.title),
            ],
          )
      ]),
    );
  }
}
