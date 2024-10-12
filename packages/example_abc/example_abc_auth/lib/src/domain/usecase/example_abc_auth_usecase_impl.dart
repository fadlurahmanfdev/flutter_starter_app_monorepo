import 'dart:developer';

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
        privateKey: passwordCreationToken.privateKey,
        publicKey: passwordCreationToken.publicKey,
      ));
      return right(true);
    } on Exception catch (e) {
      print("createPassword e: ${e.toString()}");
      return left(e);
    }
  }

  @override
  Future<Either<Exception, bool>> isPasswordAlreadyCreated() async {
    try {
      final identityModels = await identityStorageRepository.getIdentityModel();
      final identityModel = identityModels.firstOrNull;

      if (identityModel == null) {
        log("identityModel not exist, password not yet created");
        return right(false);
      }

      if (identityModel.privateKey == null ||
          identityModel.publicKey == null ||
          identityModel.passwordSignature == null) {
        log("some variable missing");
        throw Exception('PRIVATE_KEY_MISSING');
      }

      log("true");
      return right(true);
    } on Exception catch (e) {
      print("isPasswordAlreadyCreated e: ${e.toString()}");
      return left(e);
    }
  }

  @override
  Future<Either<Exception, bool>> createPIN({required String pin}) async {
    try {
      final identityModels = await identityStorageRepository.getIdentityModel();
      final identityModel = identityModels.firstOrNull;

      if (identityModel == null) throw Exception('IDENTITY_MODEL_MISSING');
      if (identityModel.privateKey == null) throw Exception('PRIVATE_KEY_MISSING');

      final signature = coreAuthRepository.createPIN(privateKey: identityModel.privateKey!, pin: pin);
      await identityStorageRepository.updateIdentityModel(identityModel.copyWith(
        pinSignature: signature,
      ));
      return right(true);
    } on Exception catch (e) {
      print("createPIN e: ${e.toString()}");
      return left(e);
    }
  }
}
