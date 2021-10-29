import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          "MSCW",
        ),
        backgroundColor: Color(0xFF0091DE),
        centerTitle: true,
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
                      child: Image.asset('assets/images/logo.png'),
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
                title: Text('SOCITIES'),
                leading: Icon(Icons.group),
              ),
              ListTile(
                onTap: () {},
                title: Text('EVENT HIGHLIGHT'),
                leading: Icon(Icons.event),
              ),
              ListTile(
                onTap: () {},
                title: Text('PUBLISH OPPORTUNTIY'),
                leading: Icon(Icons.publish),
              ),
              ListTile(
                onTap: () {},
                title: Text('RAISE AN ISSUE'),
                leading: Icon(Icons.report_problem),
              ),
              ListTile(
                onTap: () {},
                title: Text('VISIT OUR WEBSITE'),
                leading: Icon(Icons.language_outlined),
              ),
              ListTile(
                onTap: () {},
                title: Text('CONTACT US'),
                leading: Icon(Icons.call),
              ),
              ListTile(
                onTap: () {},
                title: Text('FAQ\'s'),
                leading: Icon(Icons.chat),
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
                              'https://picsum.photos/250?image=9',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://picsum.photos/250?image=2',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://picsum.photos/250?image=5',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.85),
                        child: SmoothPageIndicator(
                          controller: pageViewController,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) {
                            pageViewController.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: ExpandingDotsEffect(
                            expansionFactor: 2,
                            spacing: 8,
                            radius: 8,
                            dotWidth: 8,
                            dotHeight: 8,
                            dotColor: Color(0xFF9E9E9E),
                            activeDotColor: Color(0xFFFFBA15),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBA15), // background
                        onPrimary: Colors.white, // foreground
                        minimumSize: Size(150.0, 40.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "About Us",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBA15), // background
                        onPrimary: Colors.white, // foreground
                        minimumSize: Size(150.0, 40.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Socities",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBA15), // background
                        onPrimary: Colors.white, // foreground
                        minimumSize: Size(150.0, 40.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Events",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBA15), // background
                        onPrimary: Colors.white, // foreground
                        minimumSize: Size(150.0, 40.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Raise an Issue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF720972),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "UPCOMING EVENTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      addEvent(),
                      addEvent(),
                      addEvent(),
                      addEvent(),
                      addEvent(),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
            label: 'Socities',
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget addEvent() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF1F2F2),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 12.0, bottom: 4.0, right: 12.0),
                  child: Text(
                    "EVENT NAME 1",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Color(0xFF720972), fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 12.0, bottom: 8.0, right: 12.0),
                  child: Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.lato(color: Colors.black87),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 12.0, bottom: 12.0, right: 12.0),
                  child: Text(
                    "Read More",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Color(0xFF0091DE), fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
