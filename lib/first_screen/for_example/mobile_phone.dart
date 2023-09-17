
class MobilePhone {
  MobilePhone({required this.onTap,
      required this.newCost, required this.oldCost, required this.productName, required this.imgAssetLink});
  final String imgAssetLink;
  final String newCost;
  final String oldCost;
  final String productName;
  final void Function() onTap;
}
