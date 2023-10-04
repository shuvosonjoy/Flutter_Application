import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {


  List todolist = [];
  String singlevalue = "";

  addstring(content) {
    setState(() {
      singlevalue = content;
    });
  }

  addlist() {
    setState(() {
      todolist.add({"item": singlevalue});
    });
  }

  RemoveItem(index) {
    setState(() {
      todolist.removeAt(index);
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
        appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0,
        toolbarHeight: 75,
        title: Text(
          "TodoList App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: todolist.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // elevation: 50,
                        color: Colors.blue[900],
                        child: SizedBox(

                            height: 50,
                            width: double.infinity,

                            child:Container(
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 8,
                                      child: Text(
                                        todolist[index]['item'].toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: CircleAvatar(

                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: TextButton(
                                        onPressed: () {
                                          RemoveItem(index);
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            )
                        ),
                      );
                    }),


            ),
            Expanded(
                flex: 10,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 70,
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            child: TextFormField(
                              onChanged: (content) {
                                addstring(content);
                              },

                        decoration: InputDecoration(
                          labelText: 'Create Task....',
                            labelStyle: TextStyle(
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold
                            ),
                            fillColor: Colors.blue[300],
                            filled: true,

                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),


                      ),
                          )),
                       Expanded(
                           flex: 3,
                           child: Container(

                           ),

                       ),

                      Expanded(
                        flex: 27,
                        child: ElevatedButton(onPressed: (){


                          addlist();
                        },
                            child:Container(
                              height: 15,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text("Button"),
                            ),

                      ),
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
