import 'package:flutter/material.dart';

class SearchField extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:32.0,vertical:14.0),
          hintText: "Search any plant",
          suffixIcon: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(0.0),
            child: Icon(Icons.search,
            color: Colors.green),
          ),
          border:InputBorder.none
        ),
      ),
    );
  }
}
