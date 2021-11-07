import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0091DE),
          title: Text(
            'Society 1',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              print('Hello');
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF0091DE),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: const Color(0xff0091DE),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.network(
                            'https://images.static-collegedunia.com/public/college_data/images/logos/1559633020logo.jpg'),
                      ),
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://th.bing.com/th/id/R.ad87952193bbbba244aa319c990c266e?rik=qOCC54B9qQAz3Q&riu=http%3a%2f%2fmscw.ac.in%2fresources%2fimg%2fslider%2fcol2.jpg&ehk=7CE1DKAp2EXaQj0C3Tn4kSYMZ0R%2fihTU3NbD%2bNbQxp8%3d&risl=&pid=ImgRaw&r=0',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  // margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(10.0),
                  color: Color(0xFFFFBA15),
                  width: 2000,
                  height: 40,
                  child: Text(
                    'Faculty Head',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                          width: 115,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                          width: 115,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                          width: 115,
                          height: 115,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text(
                        'Name',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Name',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Name',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(10.0),
                  color: Color(0xFFFFBA15),
                  width: 2000,
                  height: 40,
                  child: Text(
                    'Student Coordinator',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  // padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        ' Student 1',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Spacer(),
                      Text(
                        ' Student 2',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  // padding: EdgeInsets.all(10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ' Student 3',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Spacer(),
                      Text(
                        ' Student 4',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xFFFFBA15),
                  width: 2000,
                  height: 40,
                  // margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'About Society',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  // padding: EdgeInsets.all(10),
                  child: Text(
                    'A society is a group of individuals involved in persistent social interaction, or a large social group sharing the same spatial or social territory, typically subject to the same political authority and dominant cultural expectations.',
                    style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(fontSize: 13, color: Color(0xFF525252)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xFFFFBA15),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  width: 2000,
                  height: 40,
                  // margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Society Events',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(20),

                  // padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1. Event I',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Loem datanet comectitur ading t vot dousmod tempor incididunt ut labore et dolore',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 13, color: Color(0xFF525252)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Read More",
                            style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ),
                      Text(
                        '2. Event II',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Loem datanet comectitur ading t vot dousmod tempor incididunt ut labore et dolore',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 13, color: Color(0xFF525252)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Read More",
                            style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ),
                      Text(
                        '3. Event III',
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 13, color: Color(0xFF525252)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Loem datanet comectitur ading t vot dousmod tempor incididunt ut labore et dolore',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 13, color: Color(0xFF525252)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Read More",
                            style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
              ]),
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
        )),
  ));
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
