import 'package:flutter/material.dart';

class InactiveColorButton extends StatelessWidget{
  const InactiveColorButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      );
  }
}