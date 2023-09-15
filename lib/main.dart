import 'package:flutter/material.dart';

import 'components.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avenue',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30,top: 80,),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Today'),
                    SizedBox(width: 170,),
                   InkWell(
                     onTap:(){},
                     child: Row(
                       children: [
                         Text('View Calendar',style: TextStyle(color: Colors.blue),),

                         Icon(Icons.navigate_next,color: Colors.blue,),
                       ],
                     ),
                   )

                  ],
                ),
                Container(
                  height: 200,
                  child: ListView(
                    physics: ScrollPhysics(
                    ),
                    children: [
                      CardWidget(icons: Icon(Icons.doorbell,size: 16,),time: '1:15',location: 'Roti',work: 'Mess',workdetails: 'Chicken Butter Masala with extra gobi and cheese-Son papri-Aloo-matar-paneer',),
                      CardWidget(icons: Icon(Icons.calendar_month,size: 16,),time: '6:00 pm',location: 'LA-117',work: 'Design Tab',workdetails: 'Induction process',),
                      CardWidget(icons: Icon(Icons.brightness_1,size: 6,color: Colors.black45,),time: '1:15',location: 'Roti',work: 'Mess',workdetails: 'Chicken Butter Masala with extra gobi and cheese-Son papri-Aloo-matar-paneer',),

                    ],
                    scrollDirection: Axis.horizontal,



                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
