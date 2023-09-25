import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/data/data_sources/mobile_phone_remote_data_sources.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

import '../../domain/entities/mobile_phones_entity.dart';

@LazySingleton(as: MobilePhonesRemoteDataSources)
class MobilePhonesRemoteDataSourcesImpl implements MobilePhonesRemoteDataSources{
  MobilePhonesRemoteDataSourcesImpl();

  final MobilePhonesEntity mobilePhonesEntity = const MobilePhonesEntity(
    page: '0',
    mobilePhoneList: [MobilePhoneEntity(
      id: '0',
      newCost: '1,213',
      oldCost: '1337',
      productName: 'Samsung Galaxy S23',
      imgAssetLink: 'assets/images/s23ultra.jpg',
    ),
      MobilePhoneEntity(
        id: '1',
        newCost: '300',
        oldCost: '445',
        productName: 'Honor 8 Lite',
        imgAssetLink: 'assets/images/honor8lite.jpg',
      ),
      MobilePhoneEntity(
        id: '2',
        newCost: '230',
        oldCost: '300',
        productName: 'Samsung Galaxy Note 8',
        imgAssetLink: 'assets/images/note8.jpg',
      ),
      MobilePhoneEntity(
        id: '3',
        newCost: '720',
        oldCost: '800',
        productName: 'Xiaomi Mi 9',
        imgAssetLink: 'assets/images/xiaomimi9.jpg',
      )],
 );



  @override
  Future<MobilePhonesEntity> getMobilePhones() async{
    return mobilePhonesEntity;
  }

}