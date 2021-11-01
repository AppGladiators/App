
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
            title: Text('Contact Us') ,
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
        backgroundColor: Color(0xFF0091DE),
        selectedItemColor: Color(0xFFFFBA15),
        unselectedItemColor: Color(0xFFF1F2F2),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Soceities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About Us',
          ),
        ],
        
        ),
         
            //backgroundColor: Colors.yellow[250],
            body: SafeArea(
                child: Column(   
              children: [
                 SizedBox(
            height: 12.0,),
                ClipRRect(borderRadius: BorderRadius.circular(20),
                child:Image.asset('images/img.jpg',
                // width:200,
                // height:200,
                // fit:BoxFit.cover,
                ),
                ),
                Card(     
                  //padding:EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      
                      Center(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),color: Colors.yellow,),
                            
                            child: Icon(
                              Icons.call,
                              color: Colors.black,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('23236102'),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),color: Colors.yellow,),
                        child: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('23221449, 23237291'),
                    ],
                  ),
                ),
                Card(     
                  //padding:EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      
                      Center(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),color: Colors.yellow,),
                            
                            child: Icon(
                              Icons.mail,
                              color: Colors.black,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Text('Principal Office:', style: GoogleFonts.roboto(
                    textStyle:
                            TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  ),
                  
                           Text(' matasundricollege.du@gmail.com'),
                        ],
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    
                    children: [
                      
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),color: Colors.yellow,),
                        child: Icon(
                          Icons.mail,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      
                      Column(
                        children: [
                          Text('Admin Office:', style: GoogleFonts.roboto(
                    textStyle:
                            TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  ),
                           Text('mscadmin@ms.du.ac.in'),
                        ],
                      ),
                      
                    ],
                  ),
                ),
                 Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),color: Colors.yellow,),
                        child: Icon(
                          Icons.language_outlined,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text('Visit Our Website'),
                    ],
                  ),
                ),
                
              ],
            ))
            ));
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
