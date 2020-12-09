import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget{
final textStyle = TextStyle(fontSize: 27.0,fontWeight:FontWeight.bold,);
  @override 
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("What kind of plant would",style: textStyle),
                    Text("you like to order",style: textStyle)
                  ],
                ),
                Icon(Icons.notifications_none,size:30.0,color: Theme.of(context).primaryColor,),
              ],
            ),
    );
  }
}
