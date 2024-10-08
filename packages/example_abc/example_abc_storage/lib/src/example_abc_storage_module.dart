import 'package:core_config/core_config.dart';
import 'package:example_abc_storage/src/data/repository/identity_storage_repository.dart';
import 'package:example_abc_storage/src/data/repository/identity_storage_repository_impl.dart';
import 'package:get_it/get_it.dart';

class ExampleAbcStorageModule extends ClassModule {
  @override
  Future<void> registerDependency(GetIt c) async {
    c.registerSingleton<IdentityStorageRepository>(IdentityStorageRepositoryImpl()..init());
  }
}