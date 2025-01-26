import 'package:get_it/get_it.dart';
import 'package:vijaysarthi/goal/data/repository/sql_goal_repo.dart';
import '../../goal/domain/repository/goal_repo.dart';
import '../../goal/presentation/addGoal/add_goal_bloc.dart';
import '../../goal/presentation/listGoal/list_goal_bloc.dart';
import '../dataSource/local/sqlite/daos/goal_dao.dart';

void registerGoalDependencies(){

  GetIt.I.registerSingleton<ListGoalBloc>(
      ListGoalBloc()
  );

  GetIt.I.registerSingleton<AddGoalBloc>(
      AddGoalBloc()
  );

  GetIt.I.registerSingleton<
      GoalRepo>(
    SqlGoalRepo()
  );
  
  GetIt.I.registerSingleton<
  GoalDao>(GoalDao());

}
