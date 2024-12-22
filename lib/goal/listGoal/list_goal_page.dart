import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_card.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_cubit.dart';
import 'package:vijaysarthi/navigation/app_route_constants.dart';


class ListGoalsPage extends StatelessWidget {
  const ListGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListGoalCubit(),
      child: Scaffold(
        floatingActionButton:
        FloatingActionButton(
         child: const Icon(
          Symbols.add
         ),
            onPressed: (){
              GoRouter.of(context)
                  .pushNamed(
                VijaysarthiRouteConstants
                .addGoalRoute
              );
            }
        ),
        body: Padding(
          padding: const EdgeInsets.all(
              8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return
                const ListGoalCard();
            },
            itemCount: 1,
          ),
        ),
      ),
    );
  }
}
