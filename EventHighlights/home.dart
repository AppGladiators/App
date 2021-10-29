import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageViewController = PageController();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Event Highlights",
        ),
        backgroundColor: Color(0xFF0091DE),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF0091DE),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: const Color(0xFF778899),
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "MATA SUNDRI COLLEGE FOR WOMEN",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "University of Delhi",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text('HOME'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                onTap: () {},
                title: Text('ABOUT MSCW'),
                leading: Icon(Icons.info),
              ),
              ListTile(
                onTap: () {},
                title: Text('SOCIETIES'),
                leading: Icon(Icons.group),
              ),
              ListTile(
                onTap: () {},
                title: Text('EVENT HIGHLIGHT'),
                leading: Icon(Icons.highlight),
              ),
              ListTile(
                onTap: () {},
                title: Text('RAISE AN ISSUE'),
                leading: Icon(Icons.headset_mic),
              ),
              ListTile(
                onTap: () {},
                title: Text('VISIT OUR WEBSITE'),
                leading: Icon(Icons.web),
              ),
              ListTile(
                onTap: () {},
                title: Text('CONTACT US'),
                leading: Icon(Icons.call),
              ),
              ListTile(
                onTap: () {},
                title: Text('PUBLISH OPPORTUNTIY'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                onTap: () {},
                title: Text('ADMIN LOGIN'),
                leading: Icon(Icons.login),
              ),
              ListTile(
                onTap: () {},
                title: Text('FAQ\'s'),
                leading: Icon(Icons.help),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFFFFF),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2,
                  child: Stack(
                    children: [
                      PageView(
                        scrollDirection: Axis.horizontal,
                        controller: pageViewController,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlNHj6bYl76vYBHtWJpXFrHYEDk6u_J3ZAXw&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlNHj6bYl76vYBHtWJpXFrHYEDk6u_J3ZAXw&usqp=CAU',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                      height: 8,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          /*Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          hintText: 'Search Events',
                          hintStyle: TextStyle(
                            color: Color(0xFF525252),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFFFBA15),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Events 2021",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFFFBA15),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Events 2020",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    onPressed: () {},
                    color: Color(0xFF720972),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text(
                      "Event Name",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
            icon: Icon(Icons.highlight, color: Color(0xFF6C6C6C)),
            title: Text('Events'),
          ),
        ],
      ),
    );
  }
}
