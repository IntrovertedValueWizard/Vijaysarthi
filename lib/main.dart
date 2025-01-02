import 'package:flutter/material.dart';
import 'package:vijaysarthi/dependencyInjections/database_di.dart';
import 'package:vijaysarthi/vijaysarthi.dart';

import 'dependencyInjections/goal_di.dart';

void main() {
  GoalDependencies().provideListGoalBloc();
  DatabaseDependencies();
  runApp(const Vijaysarthi());
}
