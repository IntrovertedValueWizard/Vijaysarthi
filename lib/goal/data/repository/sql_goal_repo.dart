import 'package:get_it/get_it.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/column_names.dart';
import 'package:vijaysarthi/goal/domain/model/goal_model.dart';
import 'package:vijaysarthi/goal/domain/repository/goal_repo.dart';

import '../../../core/dataSource/local/sqlite/daos/goal_dao.dart';

class SqlGoalRepo extends GoalRepo {

  @override
  Future<void> addGoal(GoalModel model) 
  async {
    await GetIt.I
        .get<GoalDao>()
        .insertGoal(model);
  }

  @override
  Future<void> deleteGoal(String id) async {
    // TODO: implement deleteGoal
    throw UnimplementedError();
  }

  Future<List<GoalModel>> readGoals() async {
    final List<Map<String, dynamic>> maps =
    await GetIt.I.get<GoalDao>().getAllGoals();

    return List.generate(maps.length, (i) {
      final id = maps[i]['id'] as String?;
      final title = maps[i]['title'] as String?;

      return GoalModel(
        id: id ?? '', // Provide a default value if id is null
        title: title ?? '', // Provide a default value if title is null
      );
    });
  }

  @override
  Future<void> updateGoal(GoalModel model)
  async {
    // TODO: implement updateGoal
    throw UnimplementedError();
  }

}