// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ActivityList extends StatelessWidget {
  final iconImagePath;
  final String activityName;
  final double activityAmount;

  ActivityList({
    required this.iconImagePath,
    required this.activityName,
    required this.activityAmount,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200]
                ),
                child: 
                // ImageIcon(
                //   AssetImage(iconImagePath),
                //   size: 30,
                // ),
                Image(
                  image: AssetImage(iconImagePath),
                  height: 30,
                )
              ),

              SizedBox(width: 16,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(activityName,
                  style: Theme.of(context).textTheme.labelMedium,
                  ),

                  Text(DateFormat.yMMMd().format(DateTime.now()),
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ],
          ),

          Text('\$ ${activityAmount.toString()}',
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      )
    );
  }
}