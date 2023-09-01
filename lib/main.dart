import 'package:app2/util/colors.dart';
import 'package:app2/util/todo_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(primarySwatch: primary),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List toDoList=[
    ["Make tutorial",false],
    ["Do Excercise",false],
  ];

  void checkBoxChanged(bool? value,int index){
    setState(() {
      toDoList[index][1]=!toDoList[index][1];
    });
  }
void createNewTask(){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog();
        },

    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary[400],
    appBar: AppBar(
      title: Center(child:
      Text('TO DO')),
      elevation: 0,

    ),
      floatingActionButton:FloatingActionButton(
        onPressed:createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
       itemCount: toDoList.length,
        itemBuilder: (Context,index){
         return ToDoTile(
             TaskName: toDoList[index][0],
             taskCompleted: toDoList[index][1],
             onChanged: (value)=>checkBoxChanged(value,index),
         );
        },
      ),

    );
  }
}
