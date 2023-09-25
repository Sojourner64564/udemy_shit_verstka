import 'package:dartz/dartz.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';

import '../entities/mobile_phones_entity.dart';

abstract class MobilePhonesRepository{
  Future<Either<Failure, MobilePhonesEntity>> getMobilePhones();
}