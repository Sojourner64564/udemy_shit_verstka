import 'package:dartz/dartz.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

abstract class CartProductRepository{
  Future<Either<Failure, MobilePhoneEntity>> getProductAtCart(String id);
}