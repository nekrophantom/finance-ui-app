// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:finance_ui_app/widgets/activity_list.dart';
import 'package:flutter/material.dart';

import '../widgets/actionbutton_list.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/recent_contact_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mediaQuery.size.height * 0.05,),
        
              // appBar
              Container(
                padding: EdgeInsets.only(bottom: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    // Name title 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello George,',
                          style: Theme.of(context).textTheme.titleMedium
                        ),
                    
                        Text('Welcome Back!',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                    
                      ],
                    ),
                    
                    // Notification icon
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                    
                      ),
                      child: Icon(
                        Icons.notifications_outlined
                      ),
                    )
                  ],
                ),
              ),
        
              // Balance
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black54,
                ),
                padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Current Balance',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),

                          SizedBox(height: 4,),

                          Text('\$12,333,00',
                            style: Theme.of(context).textTheme.bodyLarge,
                          )
                        ],
                      ),

                      // Add balance icon
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black87, width: 3),
                          color: Colors.white
                        ),
                        child: Icon(
                          Icons.add
                        ),
                      )
                    ],
                  ),
                )
              ),
        
              // action button list view
              Container(
                padding: EdgeInsets.only(top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      ActionButtonList(
                        actionName: 'Send',
                        color: Colors.blue,
                        icon: Icons.send_rounded,
                        actionButton: () {print('send');},
                      ),

                       ActionButtonList(
                        actionName: 'Card',
                        color: Colors.purple,
                        icon: Icons.account_balance_wallet,
                        actionButton: () {print('Card');},
                      ),

                       ActionButtonList(
                        actionName: 'More',
                        color: Colors.deepOrangeAccent,
                        icon: Icons.more_vert_rounded,
                        actionButton: () {print('More');},
                      ),
                   ],
                 ),
               ),

              SizedBox(height: 10,),

              // Recent Contact
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Search button
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[100],
                          ),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black87
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            )
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Search', style: Theme.of(context).textTheme.labelSmall,),
                      ],
                    ),
                  ),
                 

                  // Contact list
                  RecentContactList(
                    buttonName: 'Fandit',
                    imagePath: 'assets/images/contact-1.jpg',
                    iconColor: Colors.grey[200],
                  ),
                  RecentContactList(
                    buttonName: 'Aziee',
                    imagePath: 'assets/images/contact-2.jpg',
                    iconColor: Colors.grey[200],
                  ),
                  RecentContactList(
                    buttonName: 'Mamad',
                    imagePath: 'assets/images/contact-3.jpg',
                    iconColor: Colors.grey[200],
                  ),
                  RecentContactList(
                    buttonName: 'Aezo',
                    imagePath: 'assets/images/contact-4.jpg',
                    iconColor: Colors.grey[200],
                  ),
                ],
              ),

              

              SizedBox(height: 10,),
               
              // Recent Activity title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent activity',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  // see all activity
                  TextButton( 
                    onPressed: () {},
                    child: Text('See all', style: Theme.of(context).textTheme.titleMedium,) 
                  )
                ],
              ),

              // Activity listview
              Expanded(
                child: ListView(
                  children: [
                    ActivityList(
                      iconImagePath: 'assets/icons/amazon.png',
                      activityName: 'Amazon Bill',
                      activityAmount: 299.0,
                    ),
                    ActivityList(
                      iconImagePath: 'assets/icons/tik-tok.png',
                      activityName: 'Tiktok product',
                      activityAmount: 42.99,
                    ),
                    ActivityList(
                      iconImagePath: 'assets/icons/github.png',
                      activityName: 'Github premium',
                      activityAmount: 378.2,
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
      
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: BottomNavigation(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner_outlined),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}