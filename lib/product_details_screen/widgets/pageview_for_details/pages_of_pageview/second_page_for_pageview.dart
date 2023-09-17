import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class SecondPageForPageview extends StatelessWidget{
  const SecondPageForPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: const Center(child: Text('Тут могли бы быть ваши Details',style: TextStyles.hugeFontStyle, overflow: TextOverflow.ellipsis,)),
    );
  }
}