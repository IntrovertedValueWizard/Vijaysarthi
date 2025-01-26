import '../model/goal_model.dart';

abstract class GoalRepo {

  Future<void> addGoal(GoalModel model);

  Future<void> updateGoal(GoalModel model);

  Future<List<GoalModel>> readGoals();

  Future<void> deleteGoal(String id);

}