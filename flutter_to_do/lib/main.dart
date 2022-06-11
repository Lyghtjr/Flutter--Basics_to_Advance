import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _todoList = <String>[];
  final TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do'),
      ),
      body: ListView(
        children: _getItem(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>_dialogBox(context),child: Icon(Icons.add),),
    );
  
}

void _addTodo(String title) {
  setState(() {
    _todoList.add(title);
  });
  _textFieldController.clear();
}
void _removeTodo(int index) {
  setState(() {
    _todoList.removeAt(index);
  });
}

Widget _buildTodoItem(String title) {
    return ListTile(title: Text(title),
    onLongPress: () => _removeTodo(_todoList.indexOf(title)),
    );
  }

  Future  _dialogBox(BuildContext context) async {
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Add To Do'),
        content: TextField(
          controller: _textFieldController,
          decoration: const InputDecoration(hintText: 'Enter task here'),
        ),
        actions: [
          FlatButton(
            child: Text('Add'),
            onPressed: (){
              Navigator.of(context).pop();
              _addTodo(_textFieldController.text);
            },
          ),
          FlatButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('Cancel'))
        ],
      );
    });
  }

  List<Widget> _getItem(){
    return _todoList.map((String todo){
      return _buildTodoItem(todo);
    }).toList();
  }
    
}