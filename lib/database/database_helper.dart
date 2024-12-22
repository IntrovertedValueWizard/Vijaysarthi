import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:vijaysarthi/database/column_names.dart';
import 'package:vijaysarthi/database/table_names.dart';

class DatabaseHelper {
  static const dbName = 'vijaysarthi.db';
  static const dbVersion = 1;

  static final DatabaseHelper
  instance = DatabaseHelper();

  late Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDb();
    return _database!;
  }

  initDb() async {
        Directory directory = await
        getApplicationDocumentsDirectory();
        String path = join(
            directory.path, dbName
        );
        return await openDatabase(
            path,
            version: dbVersion,
        onCreate: onCreate);
  }

  Future onCreate(Database db, int version)
  async {
    final table = TableNames();
    final column = ColumnNames();
    db.execute(
      '''
      CREATE TABLE ${table.goal} (
      ${column.id} TEXT PRIMARY KEY,
      ${column.title} TEXT NOT NULL,
      ${column.description} TEXT
      )
      '''
    );
  }
}