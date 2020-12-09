import 'package:flutter/material.dart';
import 'package:plantapp/src/pages/signin_page.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPageState createState() => _OrderPageState();
}
class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
        title: Text("Your Plant Cart",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
        body:ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(), 
          OrderCard(),
          OrderCard(),
          _buildTotalContainer()
  ],
      ),
    );
  }
  Widget _buildTotalContainer(){
    return Container(
      height: 280.0,
      margin: EdgeInsets.only(top:20.0),
      padding: EdgeInsets.symmetric(horizontal:10.0),
      child: Column(
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("\u20B1180.0",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,),),
            ],
          ),
          SizedBox(height:12.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("\u20B145.0",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,),),
            ],
          ),
          SizedBox(height:12.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("\u20B10.12",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,),),
            ],
          ),
          Divider(height:45.0,color:Colors.black),
          SizedBox(height:12.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total Amount",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.grey),),
              Text("\u20B1180.0",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,),),
            ],
          ),
          SizedBox(height:30.0),
          GestureDetector(
            onTap:(){
             Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => SignInPage())); 
            },
            child:Container(
            width: MediaQuery.of(context).size.width,
            height:50.0,
            decoration:BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(30.0),
            ),
            child:Center(
            child:Text("Proceed to Checkout",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          ),
          ),
        ],
      ),
      );
    
  }
}
