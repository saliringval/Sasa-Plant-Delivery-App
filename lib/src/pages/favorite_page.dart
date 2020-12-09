import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/small_button.dart';

class FavoritePage extends StatefulWidget{
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:16.0,vertical:60.0),
        child: Column(
      children: <Widget>[
        Text("View All Plants",style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 20.0,
            ),
        Container(
          margin: EdgeInsets.symmetric(vertical:10.0),
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          height: 120.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(0, 0.5),
              color: Colors.black38,
            ),
          ],
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right:10.0),
                width: 110.0,
                height: 110.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/aglaonema.jpg"
                    ),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Algaonema",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height:10.0),
                   Container(
                     width:220.0,
                     child: Text(
                      "This is the description of plant item,This is really awesome",
                      ),
                   ) , 
                     SizedBox(
                       height:10.0),
                     Container(
                       width: 200.0,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Text("\u{20B1}30.0",
                          style: TextStyle(fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                             ),
                          ),
                          SmallButton(btnText: "Buy"),
                        ],
                      ),
                     ),
                ],
              ),
            ],
          ),
        ),
      ],
      ),
      ),
    );
  }
}
