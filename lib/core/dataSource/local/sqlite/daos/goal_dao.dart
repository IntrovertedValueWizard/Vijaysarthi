import 'package:get_it/get_it.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/column_names.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/sqlite_database_helper.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/table_names.dart';
import 'package:vijaysarthi/goal/domain/model/goal_model.dart';

class GoalDao {
  final helper = GetIt.I
      .get<SqliteDatabaseHelper>();

  Future<List<Map<String, dynamic>>>
  getAllGoals() async {
    final db = await helper.database;
    return db.query(
      GetIt.I.get<TableNames>().goal
    );
  }

  Future<void> insertGoal(
  GoalModel  model) async {
    final db = await helper.database;
    db.insert(
    GetIt.I.get<TableNames>().goal,
        {GetIt.I.get<ColumnNames>().title :
        model.title});
  }


}