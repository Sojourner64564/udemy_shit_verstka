import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';


class GeoTile extends StatefulWidget{
  const GeoTile({super.key});

  @override
  State<GeoTile> createState() => _GeoTileState();
}

class _GeoTileState extends State<GeoTile> {
  String dropDownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.gps_fixed_outlined,
          color: Colors.redAccent,
          size: Sizes.iconAppBarSize,
        ),
        const SizedBox(width: 10),
        DropdownButton(
          icon: const Icon(Icons.keyboard_arrow_down),
          elevation: 0,
          value: dropDownValue,
          items: const [
            DropdownMenuItem(
              value: 'One',
              child: Text('Guangzhou',
              style: TextStyles.textNormal,
              ),
            ),
            DropdownMenuItem(
              value: 'Two',
              child: Text('daeeta'),
            ),
            DropdownMenuItem(
              value: 'Three',
              child: Text('r'),
            ),
          ],
          onChanged: (String? newValue){
            setState((){
              dropDownValue = newValue!;
            });
          }, )
      ],
    );
  }
}
