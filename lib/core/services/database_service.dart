import 'dart:io';

import 'package:drift_flutter/drift_flutter.dart';
import 'package:lunchbox/core/services/app_database.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_service.g.dart';

/// 打开本地数据库，drift 懒连接，无需 await。
AppDatabase openAppDatabase() => AppDatabase(driftDatabase(name: 'lunchbox'));

/// 清理旧 SQLite 数据库文件，不迁移历史购物车。
Future<void> cleanupLegacySqliteDatabase() async {
  final documentsDir = await getApplicationDocumentsDirectory();
  for (final fileName in const [
    'db.sqlite',
    'db.sqlite-shm',
    'db.sqlite-wal',
  ]) {
    final file = File(p.join(documentsDir.path, fileName));
    if (await file.exists()) {
      try {
        await file.delete();
      } on FileSystemException {
        // 清理失败不阻塞启动；旧文件不会再被使用。
      }
    }
  }
}

/// 数据库 Provider，由 main() 初始化后注入。
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  throw UnimplementedError('AppDatabase must be provided at app startup.');
}
