import 'package:equatable/equatable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';

class MobilePhonesEntity extends Equatable{
 const MobilePhonesEntity({required this.page, required this.mobilePhoneList});

 final String page;
 final List<MobilePhoneEntity> mobilePhoneList;


  @override
  List<Object?> get props => [page, mobilePhoneList];

}