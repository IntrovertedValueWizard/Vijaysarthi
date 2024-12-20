import 'package:get_it/get_it.dart';
import 'package:vijaysarthi/goal/listGoal/listGoalBloc/list_goal_bloc.dart';


final GetIt getIt = GetIt.I;

Future<void> listGoalDependencies() async {
  getIt.registerSingleton<
      ListGoalBloc
  >(
    ListGoalBloc()
  );
}