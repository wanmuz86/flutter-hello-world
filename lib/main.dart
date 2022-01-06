import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Hello World")),
      body:Center(child:
      Column(
        children: [
          Text(
              "Welcome to my app",
              style: TextStyle(color: Colors.blue, fontSize: 20)),
          SizedBox(height: 8,),
          Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
          SizedBox(height: 8,),
          Text("I hope you like my app", style:TextStyle(color:Colors.red, fontSize: 16)),
          SizedBox(height: 8,),
          Text("This is my first app on Flutter"),
          TextButton(
            child: Text("Press Me"),
            onPressed: (){
              Fluttertoast.showToast(
                  msg: "Hello World. Welcome to my app",
                  toastLength: Toast.LENGTH_SHORT
              );
            },
          )
        ],
      ))
    );
  }
}
