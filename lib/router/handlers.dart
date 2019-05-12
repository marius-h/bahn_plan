import 'package:bahn_plan/screens/departure_screen.dart';
import 'package:bahn_plan/screens/map_screen.dart';
import 'package:bahn_plan/screens/root_screen.dart';
import 'package:bahn_plan/screens/route_screen.dart';
import 'package:bahn_plan/screens/saved_trip_screen.dart';
import 'package:bahn_plan/screens/settings/settings_screen.dart';
import 'package:fluro/fluro.dart';

Handler rootHandler = Handler(
  handlerFunc: (context, _) => RootScreen(),
);

Handler departuresHandler = Handler(
  handlerFunc: (context, _) => DepartureScreen(),
);

Handler mapsHandler = Handler(
  handlerFunc: (context, _) => MapScreen(),
);

Handler routesHandler = Handler(
  handlerFunc: (context, _) => RouteScreen(),
);

Handler savedTripsHandler = Handler(
  handlerFunc: (context, _) => SavedTripScreen(),
);

Handler settingsHandler = Handler(
  handlerFunc: (context, _) => SettingsScreen(),
);
