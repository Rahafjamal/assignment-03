import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello!"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage("images/1.jpg")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.yellow,
                    textStyle: TextStyle(
                      fontSize: 18,
                    ),
                    shadowColor: Colors.pink,
                    elevation: 20,
                  ),
                  onPressed: (() {
                    print("elevated button have pressed");
                  }),
                  onLongPress: () {
                    print("elevated button have long pressed");
                  },
                  child: Text("second button,press me !")),
              const Image(image: AssetImage("images/2.png")),
              Image(image: AssetImage("images/3.jpg")),
              Row(
                children: [
                  Card(
                    elevation: 25,
                    shadowColor: Colors.blue,
                    color: Colors.blue[100],
                    child: Text(
                      "Car1",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Card(
                    elevation: 25,
                    shadowColor: Colors.amber,
                    color: Colors.amber[100],
                    child: Text(
                      "Car2",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Card(
                    elevation: 25,
                    shadowColor: Colors.red,
                    color: Colors.red[100],
                    child: Text(
                      "Car3",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
