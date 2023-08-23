import 'package:flutter/material.dart';
import './routes.dart';
import '../../models/menu.dart';

const List<MenuItem> menus = [
  MenuItem("1", "Entrance", Icons.home, routeEntrance),
  MenuItem("2", "Camping", Icons.public, routeCamping),
  MenuItem("3", "Pos", Icons.sell, routePos),
  MenuItem("4", "Report", Icons.trending_up, routeReport),
];

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(200, 0, 0, 0),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: menus.map((item) {
          return ListTile(
            hoverColor: Color.fromARGB(255, 62, 158, 237),
            selectedTileColor: Color.fromARGB(255, 62, 158, 237),
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
              Navigator.of(context).pushNamed(item.route);

              // Navigator.pushNamed(context, "/camping");
            },
          );
        }).toList(),
      ),
    );
  }
}
