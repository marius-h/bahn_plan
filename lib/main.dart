import 'package:bahn_plan/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = initRouter();
    bool useCupertino = true;
    return AppRouter(
      router: router,
      child: useCupertino
          ? CupertinoApp(
              title: 'BahnPlan',
              onGenerateRoute: router.generator,
            )
          : MaterialApp(
              title: 'BahnPlan',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.red,
              ),
              onGenerateRoute: router.generator,
            ),
    );
  }
}
