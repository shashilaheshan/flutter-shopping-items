import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/food_widget/food_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = [
    'Burgers',
    'Mix-Rice',
    'Sea-food',
    'Biriyani',
    'Rices',
    'Mix-Rices',
    'Sea-foods',
    'Biriyansi'
  ];

  int _index = 0;
  String _selected = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 10,


      ),
      body: Container(

        child: Material(
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(

              child: new Column(

                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 10),
                        child: Text(
                          "Browse",
                          style: TextStyle(fontSize: 30, color: Colors.grey[500]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 170),
                        child: Text(
                          "Top rated",
                          style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                        ),
                      )
                    ],
                  ),
                  Container(

                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext c, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _index = index;
                                _selected = categories.elementAt(index);
                              });

                              print(_selected);
                            },
                            child: Chip(
                              elevation: 10,
                              backgroundColor: index == _index
                                  ? Colors.redAccent
                                  : Colors.grey[350],
                              label: Text(categories.elementAt(index)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 90 / 100,
                    width: double.maxFinite,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext ct, int index) {
                        return GestureDetector(
                            onTap: (){

                              print(categories.elementAt(index));
                            },
                            child: FoodWidget());
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
