import '../../domain/entities/mobile_phones_entity.dart';

abstract class GridMobilePhonesRemoteDataSources{
  Future<MobilePhonesEntity> getMobilePhones();
}