import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget{

  final String categoryName;
  final String imagePath;
  final int numberofItems;

  PlantCard({this.categoryName,this.imagePath,this.numberofItems});
  @override 
  Widget build(BuildContext context){
    return Container(
      child: Card(
        margin: EdgeInsets.only(right:20.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0 ,vertical:5.0),
          child: Row(
            children: <Widget>[
              Image(
                image:AssetImage(imagePath),
                height: 95.0,
                width: 95.0,
                ),
                SizedBox(width: 16.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(categoryName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                    Text("$numberofItems Kinds",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                  ],
                )
            ],
            ),
            ),
      ),
    );
  }
} 
