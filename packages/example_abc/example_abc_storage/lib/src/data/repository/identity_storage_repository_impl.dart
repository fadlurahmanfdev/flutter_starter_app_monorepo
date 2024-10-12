import 'dart:developer';

import 'package:example_abc_storage/src/data/dto/identity_model_entity.dart';
import 'package:example_abc_storage/src/data/repository/identity_storage_repository.dart';
import 'package:sqflite/sqflite.dart';

const _identityTable = 'identity';

class IdentityStorageRepositoryImpl extends IdentityStorageRepository {
  late Database database;

  @override
  Future<void> init() async {
    var databasesPath = await getDatabasesPath();
    final path = '$databasesPath/app.db';

    database = await openDatabase(
      path,
      version: 2,
      onCreate: (Database db, int version) async {
        log("onCreate db -> version: $version");
        final batch = db.batch();
        batch.execute(
          '''CREATE TABLE $_identityTable (id TEXT PRIMARY KEY, token TEXT, ivToken TEXT, privateKey TEXT, publicKey TEXT, passwordSignature TEXT, pinSignature TEXT)''',
        );
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        log("onUpgrade db -> old: $oldVersion, new: $newVersion");
        final batch = db.batch();
        if (oldVersion < 2) {
          batch.execute('''ALTER TABLE $_identityTable RENAME COLUMN privateKeyPassword to privateKey''');
          batch.execute('''ALTER TABLE $_identityTable RENAME COLUMN publicKeyPassword to publicKey''');
        }
        await batch.commit();
      },
    );
  }

  @override
  Future<int> saveIdentityModel(IdentityModelEntity entity) {
    return database.insert(_identityTable, entity.toJson());
  }

  @override
  Future<int> updateIdentityModel(IdentityModelEntity entity) {
    return database.update(_identityTable, entity.toJson(), where: 'id = ?', whereArgs: [entity.id]);
  }

  @override
  Future<List<IdentityModelEntity>> getIdentityModel() async {
    return (await database.query(_identityTable)).map((e) => IdentityModelEntity.fromJson(e)).toList();
  }
}
