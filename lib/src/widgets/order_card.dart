import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width:45.0,
              decoration: BoxDecoration(
                border:Border.all(width:2.0,color: Color(0xFFD3D3D3),),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:Column(
                children: <Widget>[
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.keyboard_arrow_up,color: Color(0xFFD3D3D3),),
                  ),
                Text("0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                InkWell(
                  onTap:(){}, 
                  child:Icon(Icons.keyboard_arrow_down,color: Color(0xFFD3D3D3),),
                  )
                ],
                ),
            ),
            SizedBox(width:20.0,),
            Container(
              height: 70.0,
              width: 70.0,
                decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/images/triumph.jpg"),
                  fit: BoxFit.cover,
                ),
                 borderRadius:BorderRadius.circular(35.0),
                 boxShadow:[
                   BoxShadow(
                     color:Colors.black,
                      blurRadius: 5.0,
                      offset:Offset(0.0, 5.0),
                   ),
                 ],
              ),
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Triumph",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 7.0,),
                Text("\u20B1 45.0",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.red),),
                SizedBox(height: 5.0,),
                Container(
                  height:25.0,
                  width:120.0,
                  child:ListView(
                    scrollDirection: Axis.horizontal,
                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.only(right:7.0),
                      ),
                      Row(
                        children:<Widget>[
                          Text("Tulips",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5.0,),
                          InkWell(
                            onTap: (){},
                            child: Text("x",
                            style: TextStyle(fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                            ),
                            ),
                        ],
                      ),
                    ]
                  )
                )
              ],
              ),
              Spacer(),
              GestureDetector(
                child: Icon(Icons.cancel,color: Colors.grey,
              ),
              ),
          ],
          ),
      ),
    );
  }
}
