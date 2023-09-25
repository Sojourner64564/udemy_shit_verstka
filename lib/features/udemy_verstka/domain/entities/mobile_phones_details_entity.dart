import 'package:equatable/equatable.dart';

class MobilePhoneDetailsEntity extends Equatable{
  const MobilePhoneDetailsEntity({required this.id,
    required this.newCost, required this.oldCost, required this.productName, required this.imgAssetLink,
    required this.cpu, required this.camera, required this.ram, required this.minMemory, required this.maxMemory,
    required this.score,
  });
  final String id;
  final String imgAssetLink;
  final String newCost;
  final String oldCost;
  final String productName;
  final String cpu;
  final String camera;
  final String ram;
  final String minMemory;
  final String maxMemory;
  final int score;

  @override
  List<Object?> get props => [
    id,
    imgAssetLink,
    newCost,
    oldCost,
    productName,
    cpu,
    camera,
    ram,
    minMemory,
    maxMemory,
    score,
  ];
}