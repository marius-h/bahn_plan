import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {},
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.train_style_one),
            title: Text('Route Planner'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text('Departures'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            title: Text('Routemaps'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            title: Text('Saved Trips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
