import 'package:dartz/dartz.dart';

import '../error/failures.dart';

abstract class UseCaseMobilePhone<Type, TypeParams>{
  Future<Either<Failure, Type>> call(TypeParams params);
}