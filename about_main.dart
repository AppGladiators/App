import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    title: 'About',
    home: AboutScreen(),
  ));
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About MSCW'),
        backgroundColor: Color(0xff0091DE),
      ),
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
                    child: Image.network('https://images.static-collegedunia.com/public/college_data/images/logos/1559633020logo.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "MATA SUNDRI COLLEGE FOR WOMEN",
                      style: TextStyle(
                        color: Colors.white,
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
      body: ListView(
        children: [
          SizedBox(
            height: 200.0,
            width: double.infinity,
            child: Carousel(
              images: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXvSXL_926mfxBRXkousX82HFOUmCcS9rzkYYVt-CsWh1giUBHZr8VbQeU2R31xDF-soo&usqp=CAU'),
                Image.network('https://images.shiksha.com/mediadata/images/1609322583phpfd6f0k.png'),
                Image.network('https://images.shiksha.com/mediadata/images/1609322583phpfd6f0k.png'),
                Image.network('https://images.shiksha.com/mediadata/images/1609322583phpfd6f0k.png'),
              ],
              boxFit: BoxFit.fill,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 2000),
              dotSize: 4.0,
              dotColor: Colors.white,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 20.0,
              showIndicator: true,
              indicatorBgPadding: 6.0,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
            width: 900.0,
            color: Color(0xff0091DE),
            child: Center(
              child: Text(
                "ABOUT US",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum doloeu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                onPressed: () {},
                color: Color(0xFFFFBA15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Text(
                  "SOCITIES",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                onPressed: () {},
                color: Color(0xFFFFBA15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Text(
                  "EVENTS",
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
            title: Text('Socities'),
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
