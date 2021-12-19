import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/main.dart';
import 'package:state_management_provider/provider/CounterModel.dart';
class MultiplyPage extends StatelessWidget {
  const MultiplyPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(builder: (context,counterModel,child){
      return Scaffold(
      appBar: AppBar(
      
        title: Text('Multiply Page'),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Multiplied count',
            ),
            Text(
              '${counterModel.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (_)=> IncrementPage()));
            }, child: Text('Increment Counter Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> counterModel.setCounter = counterModel.counter * 200,
        tooltip: 'Decrement',
        child: Icon(Icons.multiline_chart),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    });
  }
}