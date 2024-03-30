import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';


class Size {
  final int id;
  final String name;

  Size({
    required this.id,
    required this.name,
  });
}

class DroppdownMenuSize extends StatefulWidget {
  @override
  _DroppdownMenuSizeState createState() => _DroppdownMenuSizeState();
}

class _DroppdownMenuSizeState extends State<DroppdownMenuSize> {
  static final List<Size> _sizes = [
    Size(id: 1, name: "4'"),
    Size(id: 2, name: "5'"),
    Size(id: 3, name: "6'"),
    Size(id: 4, name: "7'"),

  ];
  final _items = _sizes
      .map((size) => MultiSelectItem<Size>(size, size.name))
      .toList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      items: _items,
      title: const Text("Screen Size"),
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
        "Size",
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