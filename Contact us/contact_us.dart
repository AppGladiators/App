import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Contact Us'),
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

            //backgroundColor: Colors.yellow[250],
            body: SafeArea(
                child: Column(
              children: [
                SizedBox(
                  height: 12.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://th.bing.com/th/id/R.ad87952193bbbba244aa319c990c266e?rik=qOCC54B9qQAz3Q&riu=http%3a%2f%2fmscw.ac.in%2fresources%2fimg%2fslider%2fcol2.jpg&ehk=7CE1DKAp2EXaQj0C3Tn4kSYMZ0R%2fihTU3NbD%2bNbQxp8%3d&risl=&pid=ImgRaw&r=0',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                ),
                Card(
                  //padding:EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Color(0xFFF0F0F0),
                  child: Row(
                    children: [
                      Center(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7.0)),
                              color: Color(0xFFFFBA15),
                            ),
                            child: Icon(
                              Icons.call,
                              color: Color(0xFF6C6C6C),
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('23236102', 
                      style:GoogleFonts.roboto(
                        textStyle: TextStyle(
                                 color: Color(0xFF525252),
                                 fontSize: 13,),
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Center(
                        child: Center(
                          child: Container(
                             padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7.0)),
                              color: Color(0xFFFFBA15),
                            ),
                            child: Icon(
                              Icons.phone_android_outlined,
                              color: Color(0xFF6C6C6C),
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('23221449, 23237291',
                      style:GoogleFonts.roboto(
                        textStyle: TextStyle(
                                 color: Color(0xFF525252),
                                 fontSize: 13,),
                      ),
                      ),
                    ],
                  ),
                ),
                Card(
                  //padding:EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Container(
                         padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          color: Color(0xFFFFBA15),
                        ),
                        child: Icon(
                          Icons.mail,
                          color: Color(0xFF6C6C6C),
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'Principal Office:\nmatasundricollege.du@gmail.com',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Color(0xFF525252),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          color:Color(0xFFFFBA15),
                        ),
                        child: Icon(
                          Icons.mail,
                          color: Color(0xFF6C6C6C),
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'Admin Office:\nmscadmin@ms.du.ac.in',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                 color: Color(0xFF525252),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          color: Color(0xFFFFBA15),
                        ),
                        child: Icon(
                          Icons.language_outlined,
                          color: Color(0xFF6C6C6C),
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('Visit Our Website',
                      style:GoogleFonts.roboto(
                        textStyle: TextStyle(
                                 color: Color(0xFF525252),
                                 fontSize: 13,),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ))));
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
    );
  }
  
  
}

