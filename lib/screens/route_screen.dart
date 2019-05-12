import 'package:bahn_plan/themes/cupertino_styles.dart';
import 'package:flutter/cupertino.dart' hide CupertinoTheme;
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class RouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Route Planner'),
        ios: (_) => CupertinoNavigationBarData(),
      ),
      iosContentPadding: true,
      iosContentBottomPadding: true,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: PlatformTextField(
              ios: (_) {
                return CupertinoTextFieldData(
                  prefix: Text('From:'),
                  suffix: PlatformIconButton(
                    iosIcon: Icon(Ionicons.ios_locate),
                    androidIcon: Icon(Ionicons.md_locate),
                    onPressed: () {},
                  ),
                  decoration: CupertinoStyles.textFieldDecoration,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: PlatformTextField(
              ios: (_) {
                return CupertinoTextFieldData(
                  prefix: Text('To:'),
                  suffix: Transform.rotate(
                    angle: 1.6,
                    child: PlatformIconButton(
                      iosIcon: Icon(Ionicons.ios_swap),
                      androidIcon: Icon(Ionicons.md_swap),
                      onPressed: () {},
                    ),
                  ),
                  decoration: CupertinoStyles.textFieldDecoration,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: PlatformWidget(
              ios: (_) {
                return Container(
                  decoration: CupertinoStyles.textFieldDecoration,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
