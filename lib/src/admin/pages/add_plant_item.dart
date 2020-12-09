import 'package:flutter/material.dart';
import 'package:plantapp/src/models/plant_model.dart';
import 'package:plantapp/src/scoped-model/main_model.dart';
import 'package:plantapp/src/widgets/button.dart';
import 'package:scoped_model/scoped_model.dart';


class AddPlantItem extends StatefulWidget{
    AddPlantItem({Key key}) : super(key: key);

  @override
  _AddPlantItemState createState() => _AddPlantItemState();

}


class _AddPlantItemState extends State<AddPlantItem>{

String name;
String category;
String description;
String price;
String discount;

GlobalKey<FormState> _plantItemFormKey = GlobalKey();
  @override


  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical:60.0,horizontal: 16.0),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Form(
          key :_plantItemFormKey,
          child: Column(
            children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom:10.0),
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              decoration: BoxDecoration(
                // color: Colors.grey,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage (
                    "assets/images/noimage.png",
                    ),
                    ),
                ),
              
            ),
            _buildTextFormField("Plant Title"),
            _buildTextFormField("Category"),
            _buildTextFormField("Description",maxLine: 5),
            _buildTextFormField("Price"),
            _buildTextFormField("Discount"),
            SizedBox(height:150.0),
            ScopedModelDescendant(
              builder: (BuildContext context,Widget child,MainModel model){
              return GestureDetector(
              onTap: (){
                if(_plantItemFormKey.currentState.validate()){
                  _plantItemFormKey.currentState.save();
                
                  final Plant plant = Plant(
                    name: name,
                    category: category,
                    description: description,
                    price: double.parse(price),
                    discount: double.parse(discount),
                  );
                  model.addPlant(plant);
                }
              },
              child: Button(btnText: 
              "Add Plant Item",
                ),
              );
              },
            ),
            
            ],
          ),),
      ),
    );
  }

  Widget  _buildTextFormField(String hint,{int maxLine = 1}){
    return TextFormField(
                decoration: InputDecoration(
                  hintText:"$hint",
                ),
                maxLines: maxLine,  
                keyboardType: hint == "Price" || hint == "Discount" ? TextInputType.number : TextInputType.text,
                validator: (String value){
                  // var errorMsg = "";
                  if (value.isEmpty && hint == "Plant Title"){
                    return "Plant Title is required";
                  }
                  if (value.isEmpty && hint == "Description"){
                    return "Description is required";
                  }
                  if (value.isEmpty && hint == "Category"){
                    return  "Category is required";
                  }
                  if (value.isEmpty && hint == "Price"){
                    return  "price is required";
                  }
                  // return errorMsg;
                },
                onChanged: (String value){
                  if(hint == "Plant Name"){
                    name = value;
                  }
                   if(hint == "Category"){
                    category = value;
                  }
                   if(hint == "Description"){
                    description = value;
                  }
                   if(hint == "Price"){
                    price = value;
                  }
                   if(hint == "Discount"){
                    discount = value;
                  }
                },
              );
  }
}
