import 'package:flutter/material.dart';
import 'package:plantapp/src/admin/pages/add_plant_item.dart';
import 'package:plantapp/src/scoped-model/main_model.dart';
import 'package:plantapp/src/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';


class App extends StatelessWidget{

final MainModel mainModel= MainModel();
  
  @override
  Widget build(BuildContext context){
    return  ScopedModel<MainModel>(
      model: mainModel ,
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SaSa Plant Delivery App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent 
      ),
      home: MainScreen(model: mainModel),
      // home: AddPlantItem(),
    ),
    );
  }
}
