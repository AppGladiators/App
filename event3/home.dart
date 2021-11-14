
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

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
          backgroundColor: Color(0xFF0091DE),
          title: Text(
            'Event Name',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 17.0,
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
                        
                floatingActionButton: FloatingActionButton(
                 onPressed: () {},
                 child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('images/chatbox.png'), fit: BoxFit.fill),
          ),
        ),),
                  bottomNavigationBar: new BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  color: Color(0xFF6C6C6C),
                ),
                label: "Home",
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.people, color: Color(0xFF6C6C6C)),
                label: "Socities",
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.highlight, color: Color(0xFF6C6C6C)),
                label: "Events",
              ),
            ],
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
                    child: Image.asset(
                      'images/fare.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  // margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.symmetric(horizontal:25.0,vertical: 10),
                  color: Color(0xFFFFBA15),
                  width: 2000,
                  height: 40,
                  child: Text(
                    'Event Details',
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
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Text(
                    'This is the only day in our student life where will be both happy and sad at the same time .A farewell is the end of our student life but not the end of our relationship and bond that we have built over the years .We as your lovely juniors, have come up with beautiful events which are carefully curated and crafted for each one of you .Each one of you are looking absolutely stunning in your sarees and suits and this will make us even more difficult to say goodbye .Just for today, let go of all your shyness, ego and any kind of hatred that you have with each other and enjoy the day to the fullest.',
                    style: GoogleFonts.lato(textStyle : TextStyle(fontSize: 13),),
                  )),
            ),
            Container(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 20),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'REGISTRATION OPEN',
                          style: GoogleFonts.roboto(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),)
                        ),
                      )),
                ),
              ],
            )),
            Container(
              
                child: Row(
                  children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child: Text('Event Glimpses', style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xFF720972), fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                ),

                  ],
                ),
                
              height: 40,
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                           width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                  ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                           width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.2okzTq277-dFCU8Yf_ijzwHaE7?pid=ImgDet&rs=1',
                           width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ],
                  ),
              ),
            ),
 

                SizedBox(height: 10),
              
               Container(
                child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'EVENT REPORT',
                          style: GoogleFonts.roboto(textStyle:TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      )),
                ),
            ),
               ),
               SizedBox(height: 10,),

              ],
        ),
      ),
        
          ),
          ),

          

        ),
      );
    
}
}
