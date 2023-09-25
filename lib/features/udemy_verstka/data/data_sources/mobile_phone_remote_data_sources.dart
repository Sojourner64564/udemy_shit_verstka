import '../../domain/entities/mobile_phones_entity.dart';

abstract class MobilePhonesRemoteDataSources{
  Future<MobilePhonesEntity> getMobilePhones();
}