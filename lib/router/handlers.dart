import 'package:bahn_plan/screens/DepartureScreen.dart';
import 'package:bahn_plan/screens/MapScreen.dart';
import 'package:bahn_plan/screens/RootScreen.dart';
import 'package:bahn_plan/screens/RouteScreen.dart';
import 'package:bahn_plan/screens/SavedTripScreen.dart';
import 'package:bahn_plan/screens/SettingsScreen.dart';
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
