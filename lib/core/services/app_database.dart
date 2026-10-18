import 'package:drift/drift.dart';

part 'app_database.g.dart';

/// 购物车条目表
class CartEntries extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get deviceId => text()();
  TextColumn get productId => text()();
  TextColumn get productData => text()();
  IntColumn get quantity => integer().withDefault(const Constant(1))();
  BoolColumn get isSelected => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

/// 本地数据库，目前仅承载购物车
@DriftDatabase(tables: [CartEntries])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
