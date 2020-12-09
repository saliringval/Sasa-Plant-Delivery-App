import 'package:flutter/material.dart';
import 'package:plantapp/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/home_top_info.dart';
import '../widgets/plant_category.dart';
import '../widgets/search_field.dart';
import '../widgets/bought_plants.dart';
import '../models/plant_model.dart';

class HomePage extends StatefulWidget{
  // final PlantModel plantModel;

  // HomePage(this.plantModel);
  @override 
  _HomePageState createState() => _HomePageState(); 
}
  

class _HomePageState extends State<HomePage>{

  @override
  void initState(){
    // widget.plantModel.fetchPlants();
    super.initState();
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top:50.0,left:20.0,right:20.0),
        children: <Widget>[
          HomeTopInfo(),
          PlantCategory (),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Plants",
                style: TextStyle(
                  fontSize: 18.0 , fontWeight: FontWeight.bold,
                ),
                ),
              GestureDetector(
                onTap:(){},
                  child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 18.0)
                    ),
              ),
            ],
          ),
          SizedBox(height:20.0,),
          ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child,MainModel model){
            return Column(
              children: model.plants.map(_buildPlantItems).toList(),
            );
          },
          ),
            ],
          ),
    );
  }

  Widget _buildPlantItems(Plant plant){
    return Container(
      margin: EdgeInsets.only(bottom:20.0),
      child: BoughtPlants(
        id:plant.id,
        name: plant.name,
        imagePath:plant.imagePath,
        category: plant.category,
        discount: plant.discount,
        price: plant.price,
        ratings: plant.ratings,
      ),
    );
  }
}
