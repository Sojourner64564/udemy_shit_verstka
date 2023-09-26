import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

abstract class ProductCartRemoteDataSource{
  Future<MobilePhoneEntity> getProductAtCart(String id);
}