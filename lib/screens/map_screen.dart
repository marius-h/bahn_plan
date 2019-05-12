import 'package:bahn_plan/screens/settings/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'departure_screen.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        PlatformWidget(
          ios: (_) {
            return CupertinoSliverNavigationBar(
              largeTitle: Text('Routemaps'),
              leading: PlatformIconButton(
                iosIcon: Icon(Ionicons.ios_trash),
                androidIcon: Icon(Ionicons.md_trash),
                onPressed: () {},
              ),
              trailing: PlatformIconButton(
                iosIcon: Icon(Ionicons.ios_cloud_download),
                androidIcon: Icon(Ionicons.md_cloud_download),
                onPressed: () {},
              ),
            );
          },
        ),
        SliverFillViewport(
          delegate: SliverChildListDelegate([
            CupertinoSegmentedControl(
              onValueChanged: (value) {
                setState(() {
                  _selectedTab = value;
                });
              },
              groupValue: _selectedTab,
              children: {
                0: Text('All'),
                1: Text('Available offline'),
              },
            )
          ]),
        )
      ],
    );
  }
}
