import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/data/data_sources/mobile_phones_details_remote_data_sources/mobile_phones_details_remote_data_source.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';

@LazySingleton(as: MobilePhonesDetailsRemoteDataSource)
class MobilePhonesDetailsRemoteDataSourceImpl implements MobilePhonesDetailsRemoteDataSource{

  final List<MobilePhoneDetailsEntity> mobilePhoneDetails = [
    const MobilePhoneDetailsEntity(
        id: '0',
        newCost: '1,213',
        oldCost: '1337',
        productName: 'Samsung Galaxy S23',
        imgAssetLink: 'assets/images/s23ultra.jpg',
        cpu: 'Snapdragon 8 Gen 2',
        camera: '108',
        ram: '12',
        minMemory: '256',
        maxMemory: '1024',
        score: 5
    ),
    const MobilePhoneDetailsEntity(
      id: '1',
      newCost: '300',
      oldCost: '445',
      productName: 'Honor 8 Lite',
      imgAssetLink: 'assets/images/honor8lite.jpg',
      cpu: 'HiSilicon Kirin 655',
      camera: '12',
      ram: '4',
      minMemory: '16',
      maxMemory: '64',
      score: 4,
    ),
    const MobilePhoneDetailsEntity(
      id: '2',
      newCost: '230',
      oldCost: '300',
      productName: 'Samsung Galaxy Note 8',
      imgAssetLink: 'assets/images/note8.jpg',
      cpu: 'Snapdragon 835',
      camera: '12',
      ram: '6',
      minMemory: '128',
      maxMemory: '256',
      score: 4,
    ),
    const MobilePhoneDetailsEntity(
      id: '3',
      newCost: '720',
      oldCost: '800',
      productName: 'Xiaomi Mi 9',
      imgAssetLink: 'assets/images/xiaomimi9.jpg',
      cpu: 'Snapdragon 855',
      camera: '48',
      ram: '8',
      minMemory: '128',
      maxMemory: '256',
      score: 3,
    )
  ];

  @override
  Future<MobilePhoneDetailsEntity> getMobileDetails(String id) async{
    await Future.delayed(const Duration(seconds: 3));
    return mobilePhoneDetails[int.parse(id)];
  }

}