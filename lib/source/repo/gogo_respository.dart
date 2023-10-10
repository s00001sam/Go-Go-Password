import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gogo_password/model/bank_info.dart';
import 'package:gogo_password/model/base_secure_info.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/model/note_info.dart';
import 'package:gogo_password/source/database/model/local_secure_info.dart';
import 'package:gogo_password/source/datasource/base_data_source.dart';
import 'package:gogo_password/source/datasource/local_data_source.dart';
import 'package:gogo_password/source/repo/base_repository.dart';
import 'package:gogo_password/util/ext/local_secure_info_ext.dart';

final dataRepositoryProvider = Provider((ref) => GogoRepository());

class GogoRepository extends BaseRepository {
  late final BaseDataSource localDataSource;

  GogoRepository() {
    localDataSource = LocalDataSource();
  }

  @override
  Future<void> upsertLoginInfo({required LoginInfo loginInfo}) {
    final localSecureInfo = loginInfo.toLocalSecureInfo();
    return localDataSource.upsertOne(localSecureInfo: localSecureInfo);
  }

  @override
  Future<void> upsertBankInfo({required BankInfo bankInfo}) {
    final localSecureInfo = bankInfo.toLocalSecureInfo();
    return localDataSource.upsertOne(localSecureInfo: localSecureInfo);
  }

  @override
  Future<void> upsertNoteInfo({required NoteInfo noteInfo}) {
    final localSecureInfo = noteInfo.toLocalSecureInfo();
    return localDataSource.upsertOne(localSecureInfo: localSecureInfo);
  }

  @override
  Future<bool> deleteSecureInfo({required String id}) =>
      localDataSource.deleteOne(id: id);

  @override
  Future<BaseSecureInfo?> getSecureInfo({required String id}) async {
    var localSecureInfo = await localDataSource.getOne(id: id);
    if (localSecureInfo == null) return null;
    if (localSecureInfo.isLoginInfo()) return localSecureInfo.toLoginInfo();
    if (localSecureInfo.isBankInfo()) return localSecureInfo.toBankInfo();
    if (localSecureInfo.isNoteInfo()) return localSecureInfo.toNoteInfo();
    return null;
  }

  @override
  Stream<List<LocalSecureInfo>> observeAllSecureInfo() =>
      localDataSource.observeAll();
}
