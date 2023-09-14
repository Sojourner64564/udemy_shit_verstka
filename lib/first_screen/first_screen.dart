import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/assets/sizes/sizes.dart';
import 'package:udemy_shit_verstka/first_screen/first_page.dart';
import 'package:udemy_shit_verstka/first_screen/geo_tile.dart';

class FirstScreen extends StatefulWidget{
   const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.pageBackground,
        centerTitle: true,
        elevation: 0,
        title: const Row(children: [
          Spacer(flex: 2),
          GeoTile(),
          Spacer(flex: 1),
        ],),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.filter_alt_outlined,
              color: MyColors.blackColor,
                size: Sizes.iconAppBarSize,
              )),
        ],
      ),
      body: const FirstPage(),
    );
  }
}
