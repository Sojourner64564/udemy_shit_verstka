import 'package:flutter/material.dart';
import 'package:udemy_shit_verstka/assets/text_styles/text_styles.dart';

class InactiveButtonFromRow extends StatelessWidget{
  const InactiveButtonFromRow({super.key, required this.title });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width/4.1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Center(
          child: Text(
            title,
            style: TextStyles.forInactiveButtonsForPageview,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
