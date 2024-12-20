import 'package:flutter/cupertino.dart';

class RouteNotFoundPage extends StatelessWidget {
  const RouteNotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Center(
          child: Text('Route Not Found'),
        )
    );
  }
}
