import 'package:flutter/material.dart';
import '../pos/index.dart';
import "../camping/index.dart";
import "../entrance/index.dart";
import "../report/index.dart";
import 'sideBar.dart';
import './routes.dart';
import "./header.dart";

class Layout extends StatelessWidget {
  Layout({super.key});
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: _navigatorKey,
        initialRoute: routePos,
        onGenerateRoute: _onGenerateRoute,
      ),
    );
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
      case routeEntrance:
        page = EntrancePage();
        break;
      case routeReport:
        page = ReportPage();
        break;
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return Row(
          children: [
            const SideBar(),
            Expanded(
              child: Column(
                children: [
                  Header(),
                  Expanded(child: page),
                ],
              ),
            ),
          ],
        );
      },
      settings: settings,
    );
  }
}
