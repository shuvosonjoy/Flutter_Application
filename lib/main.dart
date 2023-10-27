import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          title: Text(
            'Tab Bar',
            style: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.red,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            )
          ],
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 90,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.red,
                  unselectedLabelStyle: TextStyle(fontSize: 15),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                  tabs: [
                    Tab(
                      text: 'HOME',
                    ),
                    Tab(
                      text: 'FILES',
                    ),
                    Tab(
                      text: 'SETTINGS',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 90,
              child: Container(
                child: TabBarView(
                  children: [
                    Center(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Icon(
                      Icons.home,
                      size: 100,
                      color: Colors.red,
                    ),
                            Text('Home',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),),
                          ],
                        )),
                    Center(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_copy_sharp,
                              size: 100,
                              color: Colors.red,
                            ),
                            Text('Files',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),),
                          ],
                        )),
                    Center(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings,
                              size: 100,
                              color: Colors.red,
                            ),
                            Text('Settings',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),),
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
