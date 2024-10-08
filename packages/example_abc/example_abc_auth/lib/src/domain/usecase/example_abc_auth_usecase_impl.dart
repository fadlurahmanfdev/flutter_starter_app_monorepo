import 'package:dartz/dartz.dart';
import 'package:example_abc_auth/src/domain/usecase/examble_abc_auth_usecase.dart';
import 'package:core_auth/core_auth.dart';
import 'package:example_abc_storage/example_abc_storage.dart';

class ExampleAbcAuthUseCaseImpl extends ExampleAbcAuthUseCase {
  CoreAuthRepository coreAuthRepository;
  IdentityStorageRepository identityStorageRepository;

  ExampleAbcAuthUseCaseImpl({
    required this.coreAuthRepository,
    required this.identityStorageRepository,
  });

  @override
  Future<Either<Exception, bool>> createPassword({required String password}) async {
    try {
      final passwordCreationToken = coreAuthRepository.createPasswordCreationToken(password: password);
      await identityStorageRepository.saveIdentityModel(IdentityModelEntity(
        id: '1',
        token: passwordCreationToken.token,
        ivToken: passwordCreationToken.ivToken,
        privateKeyPassword: passwordCreationToken.privateKey,
        publicKeyPassword: passwordCreationToken.publicKey,
        encryptedPassword: passwordCreationToken.encryptedPassword,
        passwordSignature: passwordCreationToken.encryptedPassword,
      ));
      return right(true);
    } on Exception catch (e) {
      print("masuk e: ${e.toString()}");
      return left(e);
    }
  }
}
