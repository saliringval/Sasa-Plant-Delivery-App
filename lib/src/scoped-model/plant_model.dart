import 'dart:convert';
import 'package:plantapp/src/models/plant_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class PlantModel extends Model{
  List<Plant> _plants =[];

  List<Plant> get plants{
    return List.from(_plants);
  }

  void addPlant(Plant plant) async{
    // _plants.add(plant);
    final Map<String,dynamic> plantData ={
      "title" : plant.name,
      "description": plant.description,
      "category": plant.category,
      "price": plant.price,
      "discount": plant.discount,
    };
    final http.Response response = await http.post("https://plant-8663e-default-rtdb.firebaseio.com/plants.json",body: json.encode(plantData));
    
    final Map<String,dynamic> responeData = json.decode(response.body);
    // print(responeData["name"]);

    Plant plantWithID = Plant(
      id: responeData["name"],
      name: plant.name,
      description: plant.description,
      category: plant.category,
      discount: plant.discount,
      price: plant.price,
    );
    _plants.add(plantWithID);
    print(_plants);
  }

  void fetchPlants(){
    http
    .get("https://plant-8663e-default-rtdb.firebaseio.com/plants.json")
    //  .get("http://192.168.1.11/flutter_plantapp/api/plants/getPlants.php")
    .then((http.Response response){
      final List fetchedData = json.decode(response.body);
      print(fetchedData);
      // final List<Plant> fetchedPlantItems =[];

      // fetchedData.forEach((data) {
      //   Plant plant = Plant(
      //     id: data["id"],
      //     category: data["category_id"],
      //     discount: double.parse(data["discount"]),
      //     imagePath: data["image_path"],
      //     name: data["title"],
      //     price: double.parse(data["price"]),
      //   );
      //   fetchedPlantItems.add(plant);
      //   print("Plant name: ${data['title']}");
      //  },
      //  );

   
    // _plants = fetchedPlantItems;
    // print(_plants);
  },
  );
  }

}
