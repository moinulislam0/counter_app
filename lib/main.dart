import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Counter app",
      home: MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyHomePageUi();
  }
}
class MyHomePageUi extends State<MyHomePage>{
  int counterNumber = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app"),
        
      ),
      body: Center(child: Text("counter app "+counterNumber.toString()),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                counterNumber=counterNumber+1;
              });
            },
            child: Icon(Icons.add),
            heroTag: "increment",

          ),
          SizedBox(width: 11,),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                counterNumber=counterNumber-1;
              });
            },
            child: Icon(Icons.remove),
            heroTag: "decrement",
          )
        ],
      ),


    );
  }
}

