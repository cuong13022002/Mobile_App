import 'package:flutter/material.dart';
import 'package:login/views/homepage.dart';

class AddCar extends StatefulWidget {
  const AddCar ({Key? key}) : super(key: key);

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("My Cocktail"),
        actions:<Widget> [
          
          // IconButton(
          //     onPressed: ()=>Navigator.of(context).pushNamed(.routeName),
          //     icon: Icon(Icons.shopping_cart,size: 30,)
          // )
        ],
      ),
    );
  }
}

