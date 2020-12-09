import 'package:flutter/material.dart';
import 'package:plantapp/src/scoped-model/main_model.dart';
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/favorite_page.dart';
import '../pages/profile_page.dart';


class MainScreen extends StatefulWidget{
final MainModel model ;

MainScreen({this.model});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{

  int currentTabIndex = 0; 

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  @override
  void initState(){
    // widget.plantModel.fetchPlants();

    widget.model.fetchPlants();
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage,favoritePage,orderPage,profilePage];
    currentPage = homePage;
  
  }
  
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState((){
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title:Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title:Text("Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title:Text("Profile")
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
