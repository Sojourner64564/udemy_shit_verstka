import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class ThirdPageForPageview extends StatelessWidget{
  const ThirdPageForPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: const Center(child: Text('Тут могли бы быть ваши Feautes',style: TextStyles.hugeFontStyle, overflow: TextOverflow.ellipsis,)),
    );
  }
}