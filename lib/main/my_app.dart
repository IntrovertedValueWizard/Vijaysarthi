import 'package:flutter/material.dart';

import '../core/navigation/route_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      debugShowCheckedModeBanner: false,

      routeInformationParser:
      RouteConfig
          .router
          .routeInformationParser,

      routeInformationProvider:
      RouteConfig
          .router
          .routeInformationProvider,

      routerDelegate:
      RouteConfig
          .router
          .routerDelegate,
    );
  }
}
