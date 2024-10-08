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
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE $_identityTable (id TEXT PRIMARY KEY, token TEXT, ivToken TEXT, privateKeyPassword TEXT, publicKeyPassword TEXT, encryptedPassword TEXT, passwordSignature TEXT)',
        );
      },
    );
  }

  @override
  Future<int> saveIdentityModel(IdentityModelEntity entity) {
    return database.insert(_identityTable, entity.toJson());
  }
}
