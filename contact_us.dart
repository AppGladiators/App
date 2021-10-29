
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
