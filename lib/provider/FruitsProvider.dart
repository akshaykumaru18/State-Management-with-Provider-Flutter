import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FruitProvider extends ChangeNotifier {
  List<Fruit> fruits =  [
    new Fruit('Apple','Apple a day keeps doctor away'),
    new Fruit('Mango','King of fruits'),
    new Fruit('Banana','Powerbank of nutrition'),
    new Fruit('Strawberry','Yummy for milk shake'),
    new Fruit('Grapes','Good for wine'),
    new Fruit('Kiwi','Healthy healthy'),
    
  ];


  void cartOperation(Fruit f){
    fruits.forEach((element) {
      if(element.fName == f.fName){
        element.addToCart = !element.addToCart;
        notifyListeners();
      }
    });
  }
  
}

class Fruit{
  final String fName;
  final String fDesc;
  bool addToCart;
  Fruit(this.fName,this.fDesc,{this.addToCart = false});
}