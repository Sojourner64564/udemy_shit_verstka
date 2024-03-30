import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';

class Brand {
  final int id;
  final String name;

  Brand({
    required this.id,
    required this.name,
  });
}



class DroppdownMenuBrand extends StatefulWidget {
  @override
  _DroppdownMenuBrandState createState() => _DroppdownMenuBrandState();
}

class _DroppdownMenuBrandState extends State<DroppdownMenuBrand> {
  static final List<Brand> _brands = [
    Brand(id: 1, name: "Samsung"),
    Brand(id: 2, name: "Honor"),
    Brand(id: 3, name: "Xiaomi"),
  ];
  final _items = _brands
      .map((brand) => MultiSelectItem<Brand>(brand, brand.name))
      .toList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      items: _items,
      title: const Text("Brand name"),
      selectedColor: Colors.blue,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: MyColors.lightGrey,
          width: 2,
        ),
      ),
      buttonIcon: const Icon(
        Icons.keyboard_arrow_down,
        color: MyColors.lightGrey,
        size: Sizes.iconShaffleItemButtondropdownSize,
      ),
      buttonText: const Text(
        "Brand",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      onConfirm: (results) {
        //_selectedAnimals = results;
      },
    );

  }
}