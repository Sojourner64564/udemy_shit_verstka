import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_details_entity.dart';


class MobilePhoneDetailsModel extends MobilePhoneDetailsEntity {
    MobilePhoneDetailsModel(
      {required super.id,
      required super.newCost,
      required super.oldCost,
      required super.productName,
      required super.imgAssetLink,
      required super.cpu,
      required super.camera,
      required super.ram,
      required super.minMemory,
      required super.maxMemory,
      required super.score});

  factory MobilePhoneDetailsModel.fromJson(Map<String, dynamic> json) {
    return MobilePhoneDetailsModel(
        id: json['id'],
        newCost: json['newCost'],
        oldCost: json['oldCost'],
        productName: json['productName'],
        imgAssetLink: json['imgAssetLink'],
        cpu: json['cpu'],
        camera: json['camera'],
        ram: json['ram'],
        minMemory: json['minMemory'],
        maxMemory: json['maxMemory'],
        score: json['score'],
    );
  }
}
