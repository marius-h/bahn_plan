import 'package:bahn_plan/router/router.dart';
import 'package:bahn_plan/themes/material_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'themes/cupertino_styles.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = initRouter();
    changeToCupertinoPlatform();
    return AppRouter(
      router: router,
      child: PlatformApp(
        title: 'BahnPlan',
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        onGenerateRoute: router.generator,
        localizationsDelegates: [],
        ios: _buildCupertinoApp,
        android: _buildMaterialApp,
      ),
    );
  }

  CupertinoAppData _buildCupertinoApp(_) {
    return CupertinoAppData(
      theme: CupertinoStyles.light,
    );
  }

  MaterialAppData _buildMaterialApp(_) {
    return MaterialAppData(
      theme: MaterialTheme.light,
    );
  }
}
