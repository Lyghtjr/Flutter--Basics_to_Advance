import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Inc Dec",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: "Flutter Inc Dec"),
    );
  }
}

class MyHomePage extends StatefulWidget {
 const MyHomePage({Key? key,@required this.title}) : super(key: key);

 final title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  increment(){
    setState(() {
      _counter++;
    });
  }

  decrement(){
    setState((){
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(onPressed: increment, child: Text("+")),
              Text("$_counter"),
              FlatButton(onPressed: decrement, child: Text("-")),

            ],
          ),
        )
      ),
    );
  }
}