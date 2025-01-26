import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vijaysarthi/core/navigation/route_consts.dart';
import 'package:vijaysarthi/goal/presentation/addGoal/add_goal_page.dart';
import 'package:vijaysarthi/goal/presentation/listGoal/list_goal_page.dart';

import '../../goal/presentation/editGoal/edit_goal_page.dart';
import '../../goal/presentation/listGoal/list_goal_bloc.dart';

class RouteConfig {
  static final GoRouter router = GoRouter(
    initialLocation: '/addGoal',

      routes: [

        GoRoute(
            name: RouteConsts.listGoal,
            path: '/',
            pageBuilder: (context, state) {
              return MaterialPage(
                  child: ListGoalPage()
              );
            }
        ),


        GoRoute(
            name: RouteConsts.editGoal,
            path: '/editGoal',
            pageBuilder: (context, state) {
              return MaterialPage(
                  child: EditGoalPage()
              );
            }
        ),


        GoRoute(
            name: RouteConsts.addGoal,
            path: '/addGoal',
            pageBuilder: (context, state) {
              return MaterialPage(
                  child: AddGoalPage()
              );
            }
        ),

      ]
  );
}