// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ActionButtonList extends StatelessWidget {
  final String actionName;
  final Color color;
  final icon;
  final VoidCallback actionButton;
  
  
  ActionButtonList({
    required this.icon,
    required this.actionName,
    required this.color,
    required this.actionButton,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionButton,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
        ),
          child: Container(
            padding: EdgeInsets.only(top: 8, left: 14, right: 14, bottom: 8),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white30
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
          
                SizedBox(height: 10,),
        
                Text(actionName,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
      ),
    );
  }
}