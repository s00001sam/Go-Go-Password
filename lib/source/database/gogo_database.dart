import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'model/local_secure_info.dart';

class MyDB {
  static final MyDB _instance = MyDB._internal();

  factory MyDB() => _instance;

  MyDB._internal();

  late Isar isar;

  Future<Isar> init() async {
    if (Isar.instanceNames.isEmpty) {
      final Directory dir = await getApplicationDocumentsDirectory();
      isar = await Isar.open(
        [LocalSecureInfoSchema],
        directory: dir.path,
      );
    } else {
      isar = Isar.getInstance()!;
    }

    return isar;
  }
}
