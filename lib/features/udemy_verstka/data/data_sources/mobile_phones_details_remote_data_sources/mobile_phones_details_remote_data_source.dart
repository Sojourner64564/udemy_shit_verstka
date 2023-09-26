import 'package:udemy_shit_verstka/core/usecases/params/params.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';

abstract class MobilePhonesDetailsRemoteDataSource{
  Future<MobilePhoneDetailsEntity> getMobileDetails(String id);
}