import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:bahn_plan/router/handlers.dart';

part 'routes.dart';

Router initRouter() {
  final Router router = Router();
  Routes.configureRoutes(router);
  return router;
}

class AppRouter extends InheritedWidget {
  const AppRouter({
    Key key,
    @required this.router,
    @required Widget child,
  })  : assert(router != null),
        assert(child != null),
        super(key: key, child: child);

  final Router router;

  static Router of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(AppRouter) as AppRouter).router;
  }

  @override
  bool updateShouldNotify(AppRouter old) {
    return router != old.router;
  }
}
