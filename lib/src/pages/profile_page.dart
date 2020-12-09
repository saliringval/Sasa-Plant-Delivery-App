import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/custom_list_tile.dart';
import 'package:plantapp/src/widgets/small_button.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  bool turnOnNotification = false;
  bool turnOnTrack = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  SingleChildScrollView(
              child: Container(
         padding: EdgeInsets.symmetric(vertical:50.0,horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Text("Profile",style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
                ),
                SizedBox(height:20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Container(
                    height: 120.0,
                      width: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow:[ 
                            BoxShadow(
                            blurRadius: 3.0,
                            offset: Offset(0,4.0),
                            color: Colors.black,
                          ),
                          ],
                          image: DecorationImage(
                            image: AssetImage("assets/images/merlito.jpg",),
                            fit: BoxFit.cover,
                            ),
                            ),
                    ),
                    SizedBox(width:30.0), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Merlito B. Salas Jr",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height:10.0),
                        Text("+639123456789",style: TextStyle(fontSize: 18.0,color: Colors.grey),),
                        SizedBox(height:20.0),
                        SmallButton(btnText:"Edit"),  
                      ],
                    ),
                ],
              ),
              SizedBox(height:30.0),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.black
                ),
          ),
          SizedBox(height: 20.0,),
          Card(
            elevation: 5.0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children:<Widget>[
                  CustomListTile(
                    icon: Icons.location_on,
                    text: "Location",
                  ),
                  Divider(
                    height:10.0, 
                    color:Colors.grey,
                  ),
                   CustomListTile(
                    icon: Icons.visibility,
                    text: "Change Password",
                  ),
                  Divider(
                    height:10.0, 
                    color:Colors.grey,
                  ),
                    CustomListTile(
                    icon: Icons.local_shipping,
                    text: "Shipping",
                  ),
              
                   Divider(
                    height:10.0, 
                    color:Colors.grey,
                  ),
                 CustomListTile(
                    icon: Icons.payment,
                    text: "Payment",
                  ),
                  
                   Divider(
                    height:10.0, 
                    color:Colors.grey,
                  ),
                ],
              ),
              ),
          ),
          SizedBox(height:30.0),
              Text(
                "Notification",
                style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black
                ),
          ),
          SizedBox(height: 20.0,),
          Card(
            elevation: 4.0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "App Notification",
                        style: TextStyle(fontSize: 16.0),),
                     
                     Switch(
                       value: turnOnNotification,
                       onChanged: (bool value){
                        //  print("The value :$value");
                        setState(() {
                          turnOnNotification = value;
                        });
                       }),
                    ],
                  ),
                  Divider(
                    height:10.0, 
                    color:Colors.grey,
                  ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Tracking",
                        style: TextStyle(fontSize: 16.0),),
                     
                     Switch(
                       value: turnOnTrack,
                       onChanged: (bool value){
                        //  print("The value :$value");
                        setState(() {
                          turnOnTrack = value;
                        });
                       }),
                    ],
                  ),
                  Divider(
                    height:10.0, 
                    color:Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:30.0),
              Text(
                "Others",
                style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black
                ),
          ),
          SizedBox(height: 20.0,),
          Card(
            child: Padding(
              padding:EdgeInsets.all(16.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Language",
                  style: TextStyle(
                  fontSize: 16.0,
                  ),
                  ),
                  // SizedBox(height: 10.0,),
                   Divider(
                    height:30.0, 
                    color:Colors.grey,
                  ),
                  Text("Currency",
                  style: TextStyle(
                  fontSize: 16.0,
                  ),
                  ),
                  // SizedBox(height: 10.0,),
                  Divider(
                    height:30.0, 
                    color:Colors.grey,
                  ),
                ],
              ),
              )
              ),
          ),
        ],
        ),
        ),
      ),
    );
  }
}
