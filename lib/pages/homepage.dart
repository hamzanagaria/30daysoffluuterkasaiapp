import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int hamza = 30;
    String Iqbal = "Flutter";
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Welcome to $hamza days of $Iqbal"),
          height: 50,
          width: 70,
        ),
      ),
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      // Drawer mai navigation baar dege
      drawer: Drawer(child: Text("Hamza ")),
    );
  }
}
// Humne ek chiz dekhi app mai khud se appbar mai mai color aara or text center aara ye kaisa possible hai ?? ye isliye possible hai kyuki hum material library import kare hai joh ki jaruri hai or isme hum tarah tarh ke alag widget use karte jaise ke material app , scalfold or bhi bohot hai 
