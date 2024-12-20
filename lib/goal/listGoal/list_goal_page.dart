import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_card.dart';
import 'package:vijaysarthi/project/routes/app_route_constants.dart';

import 'listGoalBloc/list_goal_bloc.dart';

class ListGoalsPage extends StatelessWidget {
  const ListGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
        ListGoalBloc,
        ListGoalState>(
      bloc: GetIt.I.get<ListGoalBloc>(),
      listener: (context, state) {
        if(state is
        !NavToEditGoalPageState){
          GoRouter.of(context)
              .pushNamed(
            VijaysarthiRouteConstants
            .editGoalRoute
          );
          print(
              'listened from if statement'
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            child: Padding(
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
      },
    );
  }
}

