// ignore_for_file: import_of_legacy_library_into_null_safe

//import 'dart:html';

//import 'Kbc_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'event',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Container(
          height: 30,
          color: Colors.blue,
          child: Row(
            children: [
              Icon(Icons.arrow_right_alt),
              SizedBox(
                width: 5,
              ),
              Text('FAREWELL')
            ],
          ),
        )),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'images/fare.jpg',
                height: 200,
                width: 500,
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Container(
              color: Colors.yellow,
              height: 30,
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Event Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    'This is the only day in our student life where will be both happy and sad at the same time .A farewell is the end of our student life but not the end of our relationship and bond that we have built over the years .We as your lovely juniors, have come up with beautiful events which are carefully curated and crafted for each one of you .Each one of you are looking absolutely stunning in your sarees and suits and this will make us even more difficult to say goodbye .Just for today, let go of all your shyness, ego and any kind of hatred that you have with each other and enjoy the day to the fullest.',
                    style: TextStyle(fontSize: 12),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'REGISTRATION OPEN',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      )),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            //  ElevatedButton(onPressed: (){}, child: 'REGISTRATION OPEN'),

            Container(
              child: Row(children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Event Glimpses', style: TextStyle(color: Colors.purple, fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'images/comment.png',
                  height: 100,
                  width: 100,
                ),
              ]),
            ),
            SizedBox(height: 10),

            Container(
              color: Colors.blue,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "for Further information visit our website",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/twitter.jpg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/insta.jpg',
                    width: 20,
                    height: 20,
                  ),

                  SizedBox(
                    width: 5,
                  ),
                  //    Icon(Kbc.twitter,color: Colors.white,),
                  //   SizedBox(width: 10,),
                  Icon(
                    Icons.web,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFF6C6C6C),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people, color: Color(0xFF6C6C6C)),
                  label: "Socities",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.highlight, color: Color(0xFF6C6C6C)),
                  label: "Events",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
