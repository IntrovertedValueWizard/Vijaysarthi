import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vijaysarthi/navigation/app_route_constants.dart';

import 'list_goal_card_options.dart';

class ListGoalCard extends StatelessWidget {
  final int index;
  const ListGoalCard({super.key,
  required this.index});

  @override
  Widget build(BuildContext context) {
    return
      Card(
          elevation: 3,
          child: ListTile(
            leading: const Text(
                    "Ferrari"
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



