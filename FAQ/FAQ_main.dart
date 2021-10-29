import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              title: Text('FAQ\'s',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('Hello');
                },
              )),
          body: Builder(
            builder: (context) => SingleChildScrollView(
              child: SafeArea(
                  child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
                  child: Image(image: AssetImage('images/images.jpeg')),
                ),
                Container(
                  height: 85,
                  child: Card(
                      margin: EdgeInsets.all(20),
                      color: Colors.blueGrey[100],
                      child: Row(children: [
                        SizedBox(width: 10.0),
                        Text(
                          'How to raise an issue?',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(width: 80.0),
                        IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            onPressed: () {
                              Container(
                                height: 40,
                                color: Colors.blue,
                              );
                            }),
                      ])),
                ),
                Container(
                  height: 85,
                  child: Card(
                      margin: EdgeInsets.all(20),
                      color: Colors.blueGrey[100],
                      child: Row(children: [
                        SizedBox(width: 10.0),
                        Text(
                          'How to raise an issue?',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(width: 80.0),
                        IconButton(icon: Icon(Icons.add, color: Colors.black, size: 20.0), onPressed: () {}),
                      ])),
                ),
                Container(
                  height: 85,
                  child: Card(
                      margin: EdgeInsets.all(20),
                      color: Colors.blueGrey[100],
                      child: Row(children: [
                        SizedBox(width: 10.0),
                        Text(
                          'How to raise an issue?',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(width: 80.0),
                        IconButton(icon: Icon(Icons.add, color: Colors.black, size: 20.0), onPressed: () {}),
                      ])),
                ),
                Container(
                  height: 85,
                  child: Card(
                      margin: EdgeInsets.all(20),
                      color: Colors.blueGrey[100],
                      child: Row(children: [
                        SizedBox(width: 10.0),
                        Text(
                          'How to raise an issue?',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(width: 80.0),
                        IconButton(icon: Icon(Icons.add, color: Colors.black, size: 20.0), onPressed: () {}),
                      ])),
                ),
                Container(
                  height: 85,
                  child: Card(
                      margin: EdgeInsets.all(20),
                      color: Colors.blueGrey[100],
                      child: Row(children: [
                        SizedBox(width: 10.0),
                        Text(
                          'How to raise an issue?',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(width: 80.0),
                        IconButton(icon: Icon(Icons.add, color: Colors.black, size: 20.0), onPressed: () {}),
                      ])),
                ),
                Container(
                    child: Column(children: [
                  SizedBox(width: 10.0),
                  Text('Any more queries? Contact us on our given mail id', style: TextStyle(fontSize: 14.0)),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      SizedBox(width: 22.0),
                      Icon(Icons.mail_outlined, color: Colors.purple, size: 25.0),
                      SizedBox(width: 8.0),
                      Text(
                        'matasundricollege.du@gmail.com',
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ])),
                SizedBox(height: 10.0),
                Container(
                    height: 50,
                    color: Colors.lightBlueAccent[400],
                    child: Row(children: [
                      SizedBox(width: 10.0),
                      Text('For further more information visit our website',
                          style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                          )),
                      Align(
                        alignment: Alignment(-0.40, 0.90),
                      ),
                      SizedBox(width: 20.0),
                      Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 18.0),
                      SizedBox(width: 7.0),
                      Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 18.0),
                      SizedBox(width: 7.0),
                      Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 18.0),
                      SizedBox(width: 7.0),
                      Icon(FontAwesomeIcons.globe, color: Colors.white, size: 18.0)
                    ])),
              ])),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            //extendedPadding:
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(FontAwesomeIcons.robot, size: 25.0),
            backgroundColor: Colors.purple,
          ),
          bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF6C6C6C),
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Color(0xFF6C6C6C)),
              title: Text('Societies'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Color(0xFF6C6C6C)),
              title: Text('Events'),
            ),
          ]),
        ));
  }
}
