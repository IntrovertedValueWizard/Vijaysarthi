import 'package:get_it/get_it.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_bloc.dart';

GetIt getIt = GetIt.I;

class GoalDependencies {

  void provideListGoalBloc(){
    GetIt.I.registerSingleton<
    ListGoalBloc>(
      ListGoalBloc()
    );
  }
}

