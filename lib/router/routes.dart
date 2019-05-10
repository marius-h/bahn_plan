part of 'router.dart';

class Routes {
  static String root = '/';
  static String departures = '/departures';
  static String maps = '/maps';
  static String routes = '/routes';
  static String savedTrips = '/savedTrips';
  static String settings = '/settings';

  static void configureRoutes(Router router) {
    router.notFoundHandler =
        Handler(handlerFunc: (context, Map<String, List<String>> params) {
      print('ROUTE WAS NOT FOUND!');
    });
    router.define(root, handler: rootHandler);
    router.define(departures, handler: departuresHandler);
    router.define(maps, handler: mapsHandler);
    router.define(routes, handler: routesHandler);
    router.define(savedTrips, handler: savedTripsHandler);
    router.define(settings, handler: settingsHandler);
  }
}
