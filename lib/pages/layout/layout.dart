import 'package:flutter/material.dart';
import '../pos/index.dart';
import "../camping/index.dart";
import 'sideBar.dart';

const routeCamping = '/camping';
const routePos = '/pos';

class Layout extends StatelessWidget {
  Layout({super.key});
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("dd"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Row(
          children: [
            SideBar(),
            Expanded(
              child: Navigator(
                key: _navigatorKey,
                initialRoute: routeCamping,
                onGenerateRoute: _onGenerateRoute,
              ),
            ),
          ],
        ));
  }

  Route _onGenerateRoute(RouteSettings settings) {
    late Widget page;
    switch (settings.name) {
      case routeCamping:
        page = CampingPage();
        break;
      case routePos:
        page = PosPage();
        break;
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
