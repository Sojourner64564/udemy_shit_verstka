import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/data/data_sources/product_cart_remote_data_source/product_cart_remote_data_source.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';

@LazySingleton(as: ProductCartRemoteDataSource)
class ProductCartRemoteDataSourceImpl implements ProductCartRemoteDataSource{
  final List<MobilePhoneEntity> mobilePhone = [
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
  Future<MobilePhoneEntity> getProductAtCart(String id) async{
    await Future.delayed(const Duration(seconds: 1));
    return mobilePhone[int.parse(id)];
  }

}