import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

class MobilePhoneModel extends MobilePhoneEntity {
  MobilePhoneModel(
      {required super.id,
      required super.newCost,
      required super.oldCost,
      required super.productName,
      required super.imgAssetLink});

  factory MobilePhoneModel.fromJson(Map<String, dynamic> json) {
    return MobilePhoneModel(
        id: json['id'],
        newCost: json['newCost'],
        oldCost: json['oldCost'],
        productName: json['productName'],
        imgAssetLink: json['imgAssetLink'],
    );
  }
}
