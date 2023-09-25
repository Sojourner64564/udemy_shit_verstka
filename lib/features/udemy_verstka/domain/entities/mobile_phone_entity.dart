import 'package:equatable/equatable.dart';

class MobilePhoneEntity extends Equatable{
  const MobilePhoneEntity({required this.id,
    required this.newCost, required this.oldCost, required this.productName, required this.imgAssetLink,
  });
  final String id;
  final String imgAssetLink;
  final String newCost;
  final String oldCost;
  final String productName;

  @override
  List<Object?> get props => [id,
   imgAssetLink,
   newCost,
   oldCost,
   productName,];
}
