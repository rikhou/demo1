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
    MenuItem("1", "Entrance", Icons.abc),
    MenuItem("2", "Camping", Icons.sell),
    MenuItem("3", "Pos", Icons.abc),
    MenuItem("4", "Report", Icons.sell),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 150,
      alignment: Alignment.center,
      // child: Container(
      //   // alignment: Alignment.center,
      //   color: Colors.amber,
      //   height: 100,
      //   child: Column(
      //     children: [
      //       Text(
      //         "ddd",
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     ],
      //   ),
      // ),
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Column(children: [
          for (var item in menus)
            Container(
              color: Colors.amber,
              padding: EdgeInsets.only(top: 25, bottom: 25),
              height: 60,
              child: Column(
                children: [
                  Icon(
                    item.icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    item.title,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            )
        ]),
      ),
    );
  }
}
