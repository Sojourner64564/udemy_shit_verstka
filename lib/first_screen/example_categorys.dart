import 'package:flutter/material.dart';

class ExampleCategorys extends StatelessWidget{
  const ExampleCategorys({super.key, required this.icon, required this.title});
    final IconData icon;
    final String title;
    
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.redAccent,
            ),
            child: Icon(icon),
          ),
          Text(title),
        ],
      ),
    );
  }
}
