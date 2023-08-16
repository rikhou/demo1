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

class SideBar extends StatefulWidget {
  SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;
  List<MenuItem> menus = [
    MenuItem("1", "Entrance", Icons.home),
    MenuItem("2", "Camping", Icons.public),
    MenuItem("3", "Pos", Icons.sell),
    MenuItem("4", "Report", Icons.trending_up),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(200, 0, 0, 0),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var item in menus)
            ListTile(
              selected: true,
              hoverColor: Color.fromARGB(255, 62, 158, 237),
              contentPadding: EdgeInsets.only(top: 20, bottom: 20),
              title: Column(
                children: [
                  Icon(
                    item.icon,
                    size: 28,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text(
                    item.title,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              onTap: () {
                // Navigator.pushNamed("/camping");
              },
            ),
        ],
      ),
    );
  }
}
