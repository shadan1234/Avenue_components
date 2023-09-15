import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
 Icon icons;
 String time;
 String work;
 String workdetails;
 String location;
 CardWidget({required this.icons,required this.time,required this.location,required this.work,required this.workdetails});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(

        margin: EdgeInsets.only(right: 16.0,top: 16.0,bottom: 16.0), // Add margin for spacing
        child: Padding(
          padding: EdgeInsets.all(16.0), // Add padding for spacing inside the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
            children: [
              Row(
                children: [
                 icons,
                  SizedBox(width: 8.0), // Add spacing between icon and text
                  Text(
                   time,
                    style: TextStyle(

                      fontWeight: FontWeight.w400, // Add bold style
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0), // Add vertical spacing between rows
              Row(
                children: [
                  Text(
                   work,
                    style: TextStyle(
                      // fontSize: 16.0, // Adjust font size
                      fontWeight: FontWeight.w300, // Add bold style
                    ),
                  ),
                  SizedBox(width: 6,),
                  Icon(Icons.brightness_1,size: 6,color: Colors.black45,),

                  SizedBox(width: 8.0), // Add spacing between text elements
                  Text(
                    'Lunch',
                    style: TextStyle(

                      fontWeight: FontWeight.w300, // Add bold style
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6,),
              Flexible(child: Text(workdetails)),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    'Roti ',
                    style: TextStyle(
                      // fontSize: 16.0, // Adjust font size
                      fontWeight: FontWeight.w300, // Add bold style
                    ),
                  ),
                  Icon(Icons.brightness_1,size: 6,color: Colors.black45,),

                  SizedBox(width: 8.0), // Add spacing between text elements
                  Text(
                    'Rassam',
                    style: TextStyle(

                      fontWeight: FontWeight.w300, // Add bold style
                    ),
                  ),
                  Icon(Icons.brightness_1,size: 6,color: Colors.black45,),

                  SizedBox(width: 8.0), // Add spacing between text elements
                  Text(
                    'Rice',
                    style: TextStyle(

                      fontWeight: FontWeight.w300, // Add bold style
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
