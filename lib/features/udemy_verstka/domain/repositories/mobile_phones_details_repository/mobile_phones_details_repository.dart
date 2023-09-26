import 'package:dartz/dartz.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';

abstract class MobilePhonesDetailsRepository{
  Future<Either<Failure, MobilePhoneDetailsEntity>> getPhoneDetails(String id);
}