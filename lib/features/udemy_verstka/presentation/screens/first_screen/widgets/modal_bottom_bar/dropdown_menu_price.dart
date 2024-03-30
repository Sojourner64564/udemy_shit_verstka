import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';


class Price {
  final int id;
  final String name;

  Price({
    required this.id,
    required this.name,
  });
}



class DroppdownMenuPrice extends StatefulWidget {
  @override
  _DroppdownMenuPriceState createState() => _DroppdownMenuPriceState();
}

class _DroppdownMenuPriceState extends State<DroppdownMenuPrice> {
  static final List<Price> _prices = [
    Price(id: 1, name: "0p-5000p"),
    Price(id: 2, name: "5000p-15000p"),
    Price(id: 3, name: "15000p-45000p"),
    Price(id: 4, name: "45000p-150000p"),
  ];
  final _items = _prices
      .map((price) => MultiSelectItem<Price>(price, price.name))
      .toList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
      items: _items,
      title: const Text("Price"),
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
        "Price",
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