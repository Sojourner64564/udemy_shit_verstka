import 'package:udemy_shit_verstka/features/udemy_verstka/data/data_sources/mobile_phone_remote_data_sources.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

class MobilePhoneRemoteDataSourcesImpl implements MobilePhoneRemoteDataSources{

  final List<MobilePhoneEntity> mobilePhonesEntity = [
    const MobilePhoneEntity(
        id: '0',
        newCost: '1,213',
        oldCost: '1337',
        productName: 'Samsung Galaxy S23',
        imgAssetLink: 'assets/images/s23ultra.jpg',
    ),
    const MobilePhoneEntity(
      id: '1',
      newCost: '300',
      oldCost: '445',
      productName: 'Honor 8 Lite',
      imgAssetLink: 'assets/images/honor8lite.jpg',
    ),
    const MobilePhoneEntity(
      id: '2',
      newCost: '230',
      oldCost: '300',
      productName: 'Samsung Galaxy Note 8',
      imgAssetLink: 'assets/images/note8.jpg',
    ),
    const MobilePhoneEntity(
      id: '3',
      newCost: '720',
      oldCost: '800',
      productName: 'Xiaomi Mi 9',
      imgAssetLink: 'assets/images/xiaomimi9.jpg',
    )
  ];


  @override
  Future<MobilePhoneEntity> getMobilePhone() {

  }

}