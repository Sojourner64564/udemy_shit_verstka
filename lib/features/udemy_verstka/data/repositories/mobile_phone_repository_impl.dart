import 'package:dartz/dartz.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/mobile_phone_repository.dart';

class MobilePhoneRepositoryImpl extends MobilePhoneRepository{

  @override
  Future<Either<Failure, MobilePhoneEntity>> getMobilePhone() {
    // TODO: implement getMobilePhone
    throw UnimplementedError();
  }

}