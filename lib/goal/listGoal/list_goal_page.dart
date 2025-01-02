import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_card.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_event.dart';
import 'package:vijaysarthi/navigation/app_route_constants.dart';

import 'list_goal_bloc.dart';
import 'list_goal_state.dart';


class ListGoalsPage extends StatelessWidget {
  const ListGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
        ListGoalBloc,
        ListGoalState>(
      bloc: GetIt.I.get<ListGoalBloc>(),
      listenWhen: (previous, current) =>
      current is ListGoalActionState,
      buildWhen: (previous, current) =>
      current is !ListGoalActionState,
      listener: (context, state) {
        if(state is
        ListGoalNavigateToAddGoalState){
          GoRouter.of(context).pushNamed(
              VijaysarthiRouteConstants
              .addGoalRoute
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton:
          FloatingActionButton(
              mini: true,
              onPressed: () {
                GetIt.I
                    .get<ListGoalBloc>().add(
                  NavigateToAddGoalPageEvent()
                );

              },
              child: const Icon(
                Symbols.add,
                weight: 100,
              )
          ),
          body: Padding(
            padding: const EdgeInsets.all(
                8.0),
            child: ListView.builder(
              itemBuilder: (context,
                  index) {
                return
                  ListGoalCard(
                    index: index,
                  );
              },
              itemCount: 0
            ),
          ),
        );
      },
    );
  }
}
