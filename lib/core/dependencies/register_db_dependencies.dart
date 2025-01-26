import 'package:get_it/get_it.dart';
import 'package:vijaysarthi/core/dataSource/local/sqlite/sqlite_database_helper.dart';

import '../dataSource/local/sqlite/column_names.dart';
import '../dataSource/local/sqlite/table_names.dart';

void registerDbDependencies(){

  GetIt.I.registerSingleton<ColumnNames>(
      ColumnNames()
  );

  GetIt.I.registerSingleton<TableNames>(
      TableNames()
  );

  GetIt.I.registerSingleton<
      SqliteDatabaseHelper>(
      SqliteDatabaseHelper()
  );

}
