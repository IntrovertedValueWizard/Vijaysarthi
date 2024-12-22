
import 'package:get_it/get_it.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:vijaysarthi/database/column_names.dart';
import 'package:vijaysarthi/database/database_helper.dart';
import 'package:vijaysarthi/database/table_names.dart';

GetIt getIt = GetIt.I;

class DatabaseDependencies {
  void provideDatabase() {
    GetIt.I.registerSingleton<
        DatabaseHelper
    >(DatabaseHelper());
  }

  void provideTableNames() {
    GetIt.I.registerFactory<
        TableNames>(() => TableNames());
  }

  void provideColumnNames() {
    GetIt.I.registerFactory<
        ColumnNames>(() => ColumnNames());
  }
}
