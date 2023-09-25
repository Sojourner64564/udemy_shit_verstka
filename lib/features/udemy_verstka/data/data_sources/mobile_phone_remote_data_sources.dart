import '../../domain/entities/mobile_phone_entity.dart';

abstract class MobilePhoneRemoteDataSources{
  Future<MobilePhoneEntity> getMobilePhone();
}