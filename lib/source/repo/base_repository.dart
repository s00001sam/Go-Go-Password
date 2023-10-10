import 'package:gogo_password/model/bank_info.dart';
import 'package:gogo_password/model/base_secure_info.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/model/note_info.dart';
import 'package:gogo_password/source/database/model/local_secure_info.dart';

abstract class BaseRepository {
  Future<void> upsertLoginInfo({required LoginInfo loginInfo});

  Future<void> upsertBankInfo({required BankInfo bankInfo});

  Future<void> upsertNoteInfo({required NoteInfo noteInfo});

  Future<bool> deleteSecureInfo({required String id});

  Future<BaseSecureInfo?> getSecureInfo({required String id});

  Stream<List<LocalSecureInfo>> observeAllSecureInfo();
}
