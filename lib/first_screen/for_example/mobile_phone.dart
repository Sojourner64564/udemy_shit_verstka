
class MobilePhone {
  MobilePhone( {required this.onTap,
      required this.newCost, required this.oldCost, required this.productName, required this.imgAssetLink,
    required this.cpu, required this.camera, required this.ram, required this.minMemory, required this.maxMemory,
    required this.score,
  });
  final String imgAssetLink;
  final String newCost;
  final String oldCost;
  final String productName;
  final void Function() onTap;
  final String cpu;
  final String camera;
  final String ram;
  final String minMemory;
  final String maxMemory;
  final int score;
}
