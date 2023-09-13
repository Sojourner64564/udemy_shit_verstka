import 'package:flutter/material.dart';


class HotSalesImage extends StatelessWidget{
  const HotSalesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child:  Image.asset('merkava.jpg'),
      ),
    );
  }
}
