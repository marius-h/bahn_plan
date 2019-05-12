import 'package:bahn_plan/components/cupertino_settings_group.dart';
import 'package:bahn_plan/components/cupertino_settings_item.dart';
import 'package:bahn_plan/themes/cupertino_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

part 'direction_settings.dart';
part 'common_settings.dart';
part 'about_settings.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Container(
        color: CupertinoStyles.scaffoldBackground,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Settings'),
            ),
            SliverSafeArea(
              top: false,
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  CommonSettings(),
                  DirectionSettings(),
                  AboutSettings(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
