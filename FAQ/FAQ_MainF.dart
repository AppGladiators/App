import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: accordianPage());
  }
}

class accordianPage extends StatefulWidget {
  @override
  _accordianPageState createState() => _accordianPageState();
}

class _accordianPageState extends State<accordianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )), //appbar

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF0091DE),
              ),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: const Color(0xff0091DE),
                    child: Image.asset('images/Logo.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "MATA SUNDRI COLLEGE FOR WOMEN",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "University of Delhi",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomListStyle(Icons.home, 'HOMEPAGE', () => {}),
            CustomListStyle(Icons.info, 'ABOUT MSCW', () => {}),
            CustomListStyle(Icons.people, 'SOCIETIES', () => {}),
            CustomListStyle(Icons.highlight, 'EVENT HIGHLIGHT', () => {}),
            CustomListStyle(Icons.headset_mic, 'RAISE AN ISSUE', () => {}),
            CustomListStyle(Icons.web, 'VISIT OUR WEBSITE', () => {}),
            CustomListStyle(Icons.call, 'CONTACT US', () => {}),
            CustomListStyle(Icons.home, 'PUBLISH OPPORTUNITY', () => {}),
            CustomListStyle(Icons.login, 'ADMIN LOGIN', () => {}),
            CustomListStyle(Icons.help, 'FAQ\'s', () => {}),
          ],
        ),
      ),

      body: Builder(
          builder: (context) => SingleChildScrollView(
                  child: SafeArea(
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
                    child: Image(image: AssetImage('images/Image_FAQ.jpg')),
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
                  ),
                  GFAccordion(
                    title: 'How to raise an issue?',
                    contentChild: Text(
                      'Your issue has been resolved. I hope you are satisfied from our response. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize),
                    collapsedTitleBackgroundColor: Colors.grey[300],
                    expandedTitleBackgroundColor: Colors.grey[300],
                    contentBackgroundColor: Colors.lightBlueAccent[400],
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
                ]), //column
              ) //safearea
                  ) //scrollview
          ), //body

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //'images/Group 16.svg'
        //child: (CircleAvatar(radius: 30.0, backgroundImage: AssetImage('images/Group 16.svg'))),

        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('images/Chatbot_2.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),

      //),

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xFF6C6C6C),
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            color: Color(0xFF6C6C6C),
          ),
          title: Text('Societies', style: TextStyle(color: Color(0xFF6C6C6C))),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.highlight,
            color: Color(0xFF6C6C6C),
          ),
          title: Text('Events'),
        ),
      ]),
    ); //scaffold
  }
}

class CustomListStyle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListStyle(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
      child: InkWell(
        onTap: () => {},
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: Color(0xFF6C6C6C),
              ),
              Padding(
                padding: EdgeInsets.all(9),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
