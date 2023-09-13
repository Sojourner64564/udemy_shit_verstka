import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/first_screen/first_page.dart';

class FirstScreen extends StatefulWidget{
   const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
 String dropDownValue = 'One';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(240, 240, 255, 1),
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.gps_fixed_outlined,
            color: Colors.redAccent,
              size: Sizes.iconAppBarSize,
            ),
            DropdownButton(
              icon: const Icon(Icons.keyboard_arrow_down),
              elevation: 0,
              value: dropDownValue,
              items: const [
                DropdownMenuItem(
                  value: 'One',
                  child: Text('data'),
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
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.filter_alt_outlined,
              color: MyColors.blackColor,
              )),
        ],
      ),
      body: const FirstPage(),
    );
  }
}
