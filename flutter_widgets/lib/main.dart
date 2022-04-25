import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Widgets'),
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

  String _selectedGender = 'male';
  bool item = false;
  double sliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Male"),
           leading: Radio(
                  value: "male",
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value as String;
                    });
                  },),
          ),
          ListTile(
            title: Text("Female"),
            leading: Radio(
              value: "female",
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value as String;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Check"),
            leading: Checkbox(value: item, onChanged: (value){
            setState((){
              item = value as bool;
            });
          })
          ),
          Slider(value: sliderValue,min: 0,max:20,divisions: 5, onChanged: (newValue){
            setState((){
              sliderValue = newValue as double;
            });
          })
      ],)
    );
  }
}