import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                "images/logo2.png",
              ),
              fit: BoxFit.scaleDown,
              alignment: Alignment.topLeft,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 25,
                  left: 15,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.keyboard_backspace_rounded),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      elevation: 0,
                      padding: EdgeInsets.all(20),
                      primary: Colors.white, // <-- Button color
                      onPrimary: Colors.black, // <-- Splash color
                    ),
                  )),
              Positioned(
                top: 100,
                left: 31,
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 31,
                child: Container(
                  height: 7.0,
                  width: 73.0,
                  color: Color(0xFF720972),
                ),
              ),
              Positioned(
                top: 172,
                left: 31,
                child: Text(
                  'Please sign in to your Account to\ncontinue to your app',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Color(0xFF6C6C6C),
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              Positioned(
                top: 230,
                left: 31,
                child: Text(
                  '(Only Admins are alowed to Login)',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFFE0505),
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              Positioned(
                top: 290,
                left: 35,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xFF720972),
                          ),
                          hintText: "Username",
                        ),
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF6C6C6C),
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 370,
                left: 35,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFF720972),
                          ),
                          hintText: "Password",
                        ),
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF6C6C6C),
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 470,
                left: 35,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 120),
                  onPressed: () {},
                  color: Color(0xFF720792),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 530,
                left: 90,
                child: Text(
                  'Don’t have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6C6C6C),
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                top: 560,
                left: 95,
                child: Text(
                  'CONTACT ADMIN OFFICE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0091DE),
                    fontSize: 13,
                  ),
                ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('images/chatbot.png'), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
