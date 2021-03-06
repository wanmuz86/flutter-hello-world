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

  /// Create me a TextEditingController to be linked to the name Text Field and I call it nameEditingController
  var nameEditingController = TextEditingController();
  var ageEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Hello World")),
      body:SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child:
          Column(
            children: [
              Text(
                  "Welcome to my app",
                  style: TextStyle(color: Colors.blue, fontSize: 30)),
              SizedBox(height: 8,),
              Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
              SizedBox(height: 8,),
              Row(
                children: [
                  Text("This is left"),
                  SizedBox(width: 10,),
                  Text("This is right")
                ],
              ),
              SizedBox(height: 8,),
              Text("I hope you like my app", style:TextStyle(color:Colors.red, fontSize: 20)),
              SizedBox(height: 8,),
              Text("This is my first app on Flutter"),
              SizedBox(height:8),
              TextField(decoration: InputDecoration(hintText: "Enter your name"),
              controller:nameEditingController),
              TextField(decoration: InputDecoration(hintText: "Enter your age"),
                  controller:ageEditingController),
              SizedBox(height:8),
              TextButton(
                child: Text("Press Me"),
                onPressed: (){
                  Fluttertoast.showToast(
                      msg: "Hello World, welcome to my app ${nameEditingController.text} "
                          "you are ${ageEditingController.text} years old",

                      toastLength: Toast.LENGTH_SHORT
                  );
                },
              )
            ],
          )),
        ),
      )
    );
  }
}
