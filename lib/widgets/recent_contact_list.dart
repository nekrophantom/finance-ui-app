// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class RecentContactList extends StatelessWidget {
  final Color? iconColor;
  final imagePath;
  final String buttonName;

  RecentContactList({
    required this.iconColor,
    required this.imagePath,
    required this.buttonName,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[100],
            ),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: iconColor
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(imagePath),
              )
            ),
          ),
          SizedBox(height: 10,),
          Text(buttonName, style: Theme.of(context).textTheme.labelSmall,),
        ],
      ),
    );
  }
}