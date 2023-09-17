import 'package:flutter/material.dart';

class ColorAndMemorySelectorTile extends StatelessWidget{
  const ColorAndMemorySelectorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
    Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
      const SizedBox(width: 10),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      const Expanded(child: SizedBox()),
      Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(child: Text('256GB')),
      ),
      const SizedBox(width: 10),
      Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(child: Text('256GB')),
      ),
    ],);

  }
}
