import 'package:gogo_password/source/database/model/local_secure_info.dart';

abstract class BaseDataSource {
  Future<void> upsertOne({required LocalSecureInfo localSecureInfo});

  Future<bool> deleteOne({required String id});

  Future<LocalSecureInfo?> getOne({required String id});

  Stream<List<LocalSecureInfo>> observeAll();
}
