import 'package:flutter/material.dart';
import 'package:plantapp/src/widgets/plant_category.dart';
import 'widgets/home_top_info.dart';
import 'widgets/plant_category.dart';
import 'widgets/search_field.dart';
import 'widgets/bought_plants.dart';
import 'data/plant_data.dart';
import 'models/plant_model.dart';

class HomeScreen extends StatefulWidget{
  @override 
  _HomeScreenState createState() => _HomeScreenState(); 
}


class _HomeScreenState extends State<HomeScreen>{
  List<Plant> _plants = plants;
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
          Column(
          children: _plants.map(_buildPlantItems).toList(),
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
        imagePath: plant.imagePath,
        category: plant.category,
        discount: plant.discount,
        price: plant.price,
        ratings: plant.ratings,
      ),
    );
  }
}
