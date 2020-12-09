import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/button.dart';
import '../pages/signup_page.dart';

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{

bool _toggleVisibility = true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText:"Your Email or Username",
        hintStyle:TextStyle(
          color: Colors.black,
          fontSize:18.0,
        ),
      ),
    );
  }
  Widget _buildPasswordTextField(){
    return TextFormField(
       decoration: InputDecoration(
        hintText:"Password",
        hintStyle:TextStyle(
          color: Colors.black,
          fontSize:18.0,
        ),
        suffixIcon: IconButton(
          onPressed:(){
            setState(() {
              _toggleVisibility =! _toggleVisibility;
            });
          },
          icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility_off),
          ),
        ),
      obscureText: _toggleVisibility,
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
              style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),
              ),
              SizedBox(height:100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
              Text("Forgot Password?",style: TextStyle(fontSize:18.0,color:Colors.blueAccent,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5.0,),
          Card(
            elevation:10.0,
            child: Padding(
              padding: EdgeInsets.all(20.0),
                child: Column(
                children: <Widget>[
                  _buildEmailTextField(),
                  SizedBox(height: 20.0,),
                  _buildPasswordTextField(),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          Button(btnText: "Sign In"),
          Divider(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Dont have an account ?",style:TextStyle(color:Colors.black,fontSize:18.0,fontWeight:FontWeight.bold),),
             SizedBox(width: 10.0,),
             GestureDetector(
               onTap:(){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => SignUpPage()));
               },
                  child: Text(
                 "Sign Up",
                 style:TextStyle(color:Colors.blue,fontSize:18.0,fontWeight:FontWeight.bold),
                 ),
             ),      
           ], 
          ),
          ],
        ),   
        ),
    );
  }
}
