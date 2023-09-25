import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phones_entity.dart';

class MobilePhonesModel extends MobilePhonesEntity{
  const MobilePhonesModel({required super.page, required super.mobilePhoneList});

  factory MobilePhonesModel.formJson(Map<String, dynamic> json){
    return MobilePhonesModel(
      page: json['page'],
      mobilePhoneList: json['mobilePhoneList'],
    );
  }
}