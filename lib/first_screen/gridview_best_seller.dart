import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/first_screen/gridview_box.dart';


class GridviewBestSeller extends StatelessWidget{
  const GridviewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 490,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.80,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index){
            return GridviewBox();
          }),
    );
  }
}
