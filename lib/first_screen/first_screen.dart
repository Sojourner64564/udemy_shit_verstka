import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/first_screen/first_page.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.gps_fixed_outlined,
            color: Colors.redAccent,),
            DropdownButton(items: [
              DropdownMenuItem(child: Text('Гуанчжо '), value: 'fdf',),
              DropdownMenuItem(child: Text('Ио '), value:  'dfds',),
            ], onChanged: (value){}, )
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.filter_alt)),
        ],
      ),
      body: FirstPage(),
    );
  }
}
