import 'package:flutter/material.dart';

class FoodWidget extends StatefulWidget {
  @override
  _FoodWidgetState createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[600],
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(

                child: Material(

                  elevation: 4,
                  borderRadius: BorderRadius.circular(30),
                  child: ClipRRect(

                    
                    borderRadius: new BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(begin: Alignment.centerLeft,end: Alignment.topRight,colors: [
                          Colors.grey,Colors.redAccent
                        ]),
                      ),
                      child: Image.network(
                        
                        "https://assets3.thrillist.com/v1/image/2797371/size/tmg-article_default_mobile.jpg",
                        fit: BoxFit.cover,

                        width: 250,
                        height: 190,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Material(
                borderRadius: new BorderRadius.circular(30),
                elevation: 10,
                child: Container(
                  height: 150,
                  width: 150,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Burger",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: Text(
                                "3.5 *",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0, left: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Rs.899.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Icon(Icons.remove_red_eye))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
