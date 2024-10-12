import 'package:example_abc_storage/src/data/dto/identity_model_entity.dart';

abstract class IdentityStorageRepository {
  Future<void> init();
  Future<int> saveIdentityModel(IdentityModelEntity entity);
  Future<int> updateIdentityModel(IdentityModelEntity entity);
  Future<List<IdentityModelEntity>> getIdentityModel();
}