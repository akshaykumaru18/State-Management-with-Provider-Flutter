import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/provider/FruitsProvider.dart';
class BasketPage extends StatelessWidget {
  const BasketPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final fruitProvider = Provider.of<FruitProvider>(context);
    return Scaffold(
       appBar: AppBar(
        title: Text('basket Page'),
       
      ),
      body: ListView(
        children: fruitProvider.fruits.map((e) {

          return e.addToCart == true ? ListTile(
            title: Text('${e.fName}'),
            subtitle: Text('${e.fDesc}'),
            trailing: IconButton(
                icon: e.addToCart == false
                    ? Icon(Icons.shopping_bag,color: Colors.black,)
                    : Icon(Icons.delete,color: Colors.red),
                onPressed: () {
                  fruitProvider.cartOperation(e);
                }),
          ) : Container();
        }).toList(),
      ),
    );
  }
}