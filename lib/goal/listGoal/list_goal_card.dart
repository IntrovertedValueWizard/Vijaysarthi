import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_cubit.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_page.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_state.dart';
import 'package:vijaysarthi/navigation/app_route_constants.dart';

import 'list_goal_card_options.dart';

class ListGoalCard extends StatelessWidget {
  const ListGoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Card(
          elevation: 3,
          child: ListTile(
            leading: BlocBuilder<
                ListGoalCubit,
                ListGoalState?>(
              builder: (context, state) {
                return Text(
                    state?.title ?? "Ferrari"
                );
              },
            ),
            trailing: const
            ListGoalCardOptions(),
            onTap: () {
              GoRouter
                  .of(context)
                  .pushNamed(
                VijaysarthiRouteConstants
                .editGoalRoute
              );
            },
          )
      );
  }
}



