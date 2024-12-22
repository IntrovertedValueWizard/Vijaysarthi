import 'package:get_it/get_it.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:vijaysarthi/database/column_names.dart';
import 'package:vijaysarthi/database/database_helper.dart';
import 'package:vijaysarthi/database/table_names.dart';

class GoalDatabaseRepo {

  final String goal = GetIt.I.get<
      TableNames>().goal;

  final ColumnNames column = GetIt.I.get<
      ColumnNames>();

  insertGoal(
      Map<String, dynamic> row) async {
    Database db = await GetIt.I
        .get<
        DatabaseHelper>()
        .database;
    return await db.insert(goal, row);
  }

  Future<List<Map<String, dynamic>>>
  readAllGoals() async {
    Database db = await GetIt.I
        .get<
        DatabaseHelper>()
        .database;
    return await db.query(goal);
  }

  Future<int> updateGoalWithId(
      Map<String, dynamic> row
      )async{
    final String id = row[column.id];

    Database db = await GetIt.I
        .get<
        DatabaseHelper>()
        .database;
    return await db.update(
        goal,
        row,
    where: '${column.id} = ?',
    whereArgs: [id]);
  }

  Future<int> deleteGoalWithId(
      String id
      ) async {
    Database db = await GetIt.I
        .get<
        DatabaseHelper>()
        .database;
    return await db.delete(
        goal,
    where: '${column.id} = ?',
    whereArgs: [id]);

  }
}