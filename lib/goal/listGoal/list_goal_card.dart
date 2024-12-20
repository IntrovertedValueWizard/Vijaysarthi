import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:vijaysarthi/goal/listGoal/listGoalBloc/list_goal_bloc.dart';

import 'list_goal_card_options.dart';

class ListGoalCard
    extends StatelessWidget {
  const ListGoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Card(
          elevation: 3,
          child: ListTile(
            leading: const
            Text("Ferrari"),
            trailing: const
            ListGoalCardOptions(),
            onTap: () {
              GetIt
                  .I
                  .get<
                  ListGoalBloc
              >().add(
                  NavToSubGoals()
              );
            },
          )
      );
  }
}



