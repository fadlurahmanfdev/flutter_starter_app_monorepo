import 'package:dartz/dartz.dart';

abstract class ExampleAbcAuthUseCase {
  Future<Either<Exception, bool>> createPassword({required String password});
  Future<Either<Exception, bool>> isPasswordAlreadyCreated();
  Future<Either<Exception, bool>> createPIN({required String pin});
}