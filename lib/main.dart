import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/DecrementPage.dart';
import 'package:state_management_provider/MultiplePage.dart';
import 'package:state_management_provider/Screens/FruitsListPage.dart';
import 'package:state_management_provider/provider/CounterModel.dart';
import 'package:state_management_provider/provider/FruitsProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_)=> FruitProvider(),
        ),
        ChangeNotifierProvider(
          create: (_)=> CounterModel(),
        )
      ],
      child:  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: FruitsListPage(),
    ),
    );
    return ChangeNotifierProvider(
      create: (_)=> CounterModel(),
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: FruitsListPage(),
    ),
    );
  }
}


  

 class IncrementPage extends StatelessWidget {
   const IncrementPage({ Key key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context,counterModel,child){
        return Scaffold(
      appBar: AppBar(
      
        title: Text('Increment Page'),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterModel.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (_)=> DecrementPage()));
            }, child: Text('Decrement Counter Page')),

            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (_)=> MultiplyPage()));
            }, child: Text('Multiply Counter Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> counterModel.setCounter = counterModel.counter + 100,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ); 
      },
    );
   
   }
 }