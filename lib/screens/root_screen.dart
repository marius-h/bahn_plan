import 'package:bahn_plan/screens/departure_screen.dart';
import 'package:bahn_plan/screens/map_screen.dart';
import 'package:bahn_plan/screens/route_screen.dart';
import 'package:bahn_plan/screens/saved_trip_screen.dart';
import 'package:bahn_plan/screens/settings/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: buildContent(),
      bottomNavBar: PlatformNavBar(
        currentIndex: _selectedTabIndex,
        itemChanged: (int index) {
          setState(() {
            _selectedTabIndex = index;
          });
        },
        android: (_) {
          return MaterialNavBarData(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            backgroundColor: Colors.redAccent,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: PlatformWidget(
              ios: (_) => Icon(Ionicons.ios_navigate),
              android: (_) => Icon(Ionicons.md_navigate),
            ),
            title: Text('Route Planner'),
          ),
          BottomNavigationBarItem(
            icon: PlatformWidget(
              ios: (_) => Icon(Ionicons.ios_today),
              android: (_) => Icon(Ionicons.md_today),
            ),
            title: Text('Departures'),
          ),
          BottomNavigationBarItem(
            icon: PlatformWidget(
              ios: (_) => Icon(Ionicons.ios_map),
              android: (_) => Icon(Ionicons.md_map),
            ),
            title: Text('Routemaps'),
          ),
          BottomNavigationBarItem(
            icon: PlatformWidget(
              ios: (_) => Icon(Ionicons.ios_star),
              android: (_) => Icon(Ionicons.md_star),
            ),
            title: Text('Saved Trips'),
          ),
          BottomNavigationBarItem(
            icon: PlatformWidget(
              ios: (_) => Icon(Ionicons.ios_cog),
              android: (_) => Icon(Ionicons.md_settings),
            ),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }

  buildContent() {
    switch (_selectedTabIndex) {
      case 0:
        return RouteScreen();
      case 1:
        return DepartureScreen();
      case 2:
        return MapScreen();
      case 3:
        return SavedTripScreen();
      case 4:
        return SettingsScreen();
    }
  }
}
