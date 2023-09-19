import 'package:flutter/material.dart';

class StarsTile extends StatelessWidget{
  const StarsTile({super.key, required this.stars});

  final int stars;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: stars,
          itemBuilder: (context, index){
        return const Icon(Icons.star,
        color: Colors.orange,
        );
      }),
    );

  }
}
