import 'package:dartz/dartz.dart';

abstract class ExampleAbcAuthUseCase {
  Future<Either<Exception, bool>> createPassword({required String password});
}