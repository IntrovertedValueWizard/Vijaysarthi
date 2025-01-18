import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../../core/navigation/route_consts.dart';

class ListGoalPage extends StatelessWidget {
  const ListGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton:
        FloatingActionButton.small(
          child: const Icon(
            Symbols.add,
            weight: 100,
          ),
            onPressed: (){
              GoRouter
              .of(context)
                  .pushNamed(
                RouteConsts.addGoal
              );
            }),

      body: ListView.builder(
          itemBuilder: (context, state){
            return Text('data');
          },
        itemCount: 5,
      )
    );
  }
}
