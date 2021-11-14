
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
                  padding: EdgeInsets.all(25.0),
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
                        fontSize: 18.0,
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
                    style: GoogleFonts.lato(textStyle : TextStyle(fontSize: 12),),
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
              
              child: 
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child: Text('Event Glimpses', style: GoogleFonts.roboto(textStyle: TextStyle(color: Color(0xFF720972), fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
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
                            width: 80,
                            height:80,
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
                            width: 80,
                            height: 80,
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
                            width: 80,
                            height: 80,
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
                            width: 80,
                            height: 80,
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
                            width: 80,
                            height: 80,
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
                            width: 80,
                            height: 80,
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
            ),
              ],
        ),
      ),
        
          ),
          ),
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
