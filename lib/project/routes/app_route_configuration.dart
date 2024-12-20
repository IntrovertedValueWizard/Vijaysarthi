import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vijaysarthi/goal/addGoal/add_goal.dart';
import 'package:vijaysarthi/goal/editGoal/edit_goal_page.dart';
import 'package:vijaysarthi/pages/todo_overview.dart';
import 'package:vijaysarthi/project/routes/app_route_constants.dart';

import '../../goal/listGoal/list_goal_page.dart';
import '../../pages/route_not_found.dart';

class VijaysarthiRouter {
  GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          name: VijaysarthiRouteConstants
              .listGoalRoute,
          path: '/',
          pageBuilder: (context, state){
            return const MaterialPage(child:
            ListGoalsPage()
            );
      }),

      GoRoute(
          name: VijaysarthiRouteConstants
              .addGoalRoute,
          path: '/addGoal',
          pageBuilder: (context, state){
            return const MaterialPage(
                child: AddGoalPage()
            );
          }),

      GoRoute(
          name: VijaysarthiRouteConstants
              .editGoalRoute,
          path: '/editGoal',
          pageBuilder: (context, state){
            return const MaterialPage(
                child: EditGoalPage()
            );
          }),

      GoRoute(
          name: VijaysarthiRouteConstants
              .todoOverviewRouteName,
          path: '/todoOverview',
          pageBuilder: (context, state){
            return const MaterialPage(
                child: TodoOverview()
            );
          }),
    ],

    errorPageBuilder: (context, state){
      return const MaterialPage(
          child: RouteNotFoundPage()
      );
    }
  );
}