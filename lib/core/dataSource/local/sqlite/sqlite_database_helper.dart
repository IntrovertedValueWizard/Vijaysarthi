import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/column_names.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/table_names.dart';

class SqliteDatabaseHelper {

  static final SqliteDatabaseHelper _instance
  = SqliteDatabaseHelper._internal();

  factory SqliteDatabaseHelper() => _instance;
  SqliteDatabaseHelper._internal();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB();
    return _database!;
  }

  Future<void> _onCreate(
      Database database,
      int version
      ) async {

    final db = database;
    await db.execute(
    'CREATE TABLE IF NOT EXISTS ' +
    GetIt.I.get<TableNames>().goal + ' ( ' +
            GetIt.I.get<ColumnNames>().id +
        ' TEXT PRIMARY KEY, ' +
            GetIt.I.get<ColumnNames>()
        .title + ' TEXT)'
          );

  }

  Future<Database> _initDB() async {
    sqfliteFfiInit();
    final databaseFactory =
        databaseFactoryFfi;
    final appDocumentsDir =
    await getApplicationDocumentsDirectory();
    final dbPath = join(
        appDocumentsDir.path,
        'databases', 'data.db');
    final db =
    await databaseFactory.openDatabase(
      dbPath,
      options: OpenDatabaseOptions(
        version: 1,
        onCreate: _onCreate,
      ),
    );
    return db;
  }
}






