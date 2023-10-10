import 'package:gogo_password/source/database/gogo_database.dart';
import 'package:gogo_password/source/database/model/local_secure_info.dart';
import 'package:gogo_password/source/datasource/base_data_source.dart';
import 'package:isar/isar.dart';

class LocalDataSource extends BaseDataSource {
  late Isar isarDB;

  LocalDataSource() {
    isarDB = MyDB().isar;
  }

  @override
  Future<void> upsertOne({required LocalSecureInfo localSecureInfo}) async {
    await isarDB.writeTxn(() async {
      await isarDB.localSecureInfos.put(localSecureInfo);
    });
  }

  @override
  Future<bool> deleteOne({required String id}) async {
    final LocalSecureInfo? info =
        await isarDB.localSecureInfos.filter().idEqualTo(id).findFirst();

    if (info == null) return true;

    await isarDB.writeTxn(() async {
      final isDelete = await isarDB.localSecureInfos.delete(info.isarId);
      return isDelete;
    });

    return false;
  }

  @override
  Future<LocalSecureInfo?> getOne({required String id}) async {
    return await isarDB.localSecureInfos.filter().idEqualTo(id).findFirst();
  }

  @override
  Stream<List<LocalSecureInfo>> observeAll() {
    return isarDB.localSecureInfos.where().watch();
  }
}
