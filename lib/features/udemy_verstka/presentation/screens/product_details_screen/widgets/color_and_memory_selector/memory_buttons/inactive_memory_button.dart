import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class InactiveMemoryButton extends StatelessWidget{
  const InactiveMemoryButton({super.key, required this.memory});
final String memory;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text('$memory gb',
        style: TextStyles.forInactiveMemoryButtonText,
      ),
      ),
    );
  }
}