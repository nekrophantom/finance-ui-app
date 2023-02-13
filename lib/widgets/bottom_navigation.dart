// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {

  BottomNavigation({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row( 
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey[600],
            ),
            onPressed: () {},
          ),
    
          IconButton(
            icon: Icon(
              Icons.insert_chart_outlined_rounded,
              color: Colors.grey[600],
            ),
          onPressed: () {},
          ),
    
          IconButton(
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.grey[600],
            ),
            onPressed: () {},
          ),
    
          IconButton(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.grey[600],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}