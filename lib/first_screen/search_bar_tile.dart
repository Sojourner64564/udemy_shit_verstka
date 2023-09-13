import 'package:flutter/material.dart';

class SearchBarTile extends StatelessWidget{
  const SearchBarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 30,
              //width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50)
              ),

            ),
          ),
          const SizedBox(width: 15),
          Container(
            height: 30,
            width: 30,
            color: Colors.redAccent,
            child:  const Icon(Icons.ac_unit_rounded),
          )
        ],
      ),
    );
  }
}
