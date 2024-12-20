import 'package:flutter/material.dart';
import 'package:vijaysarthi/project/routes/app_route_configuration.dart';

class Vijaysarthi extends StatelessWidget {
  const Vijaysarthi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: VijaysarthiRouter().router,
      debugShowCheckedModeBanner: false,
    );
  }
}
