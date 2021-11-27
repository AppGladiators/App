import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: !isSearching
                ? Text("Departmental Societies")
                : TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ))),
            actions: <Widget>[
              isSearching
                  ? IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        setState(() {
                          this.isSearching = false;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          this.isSearching = true;
                        });
                      },
                    )
            ],
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ), //appbar

          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/chatbot.jpg'), fit: BoxFit.fill),
              ),
            ),
          ), //chatbot

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
          ), //bottom navigation bar

          body: SingleChildScrollView(
              child: SafeArea(
                  child: Container(
                      child: Column(children: [
            SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Cybernauts",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of Computer Science)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ), //padding
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Polimates",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of Political Science)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ),
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Statistika",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of Statistics)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ),
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Earthcon Society",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of Environmental Science)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ),
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Aarsi",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of Punjabi)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ),
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Invictus",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of Commerce)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ),
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 110,
                  width: 1000,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: AssetImage(
                        "images/Disco4.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            "Kasak",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //Title
                        ),
                      ), //container

                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                          child: Text(
                            "(Department of B.A. Programme)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ), //subTitle
                        ),
                      ),

                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ), //content
                        ), //container
                      ),
                    ],
                  ), //column
                ), //container
              ), //padding
            ), //onclick

            SizedBox(height: 9.0),

            InkWell(
              onTap: () {
                print("Container clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Opacity(
                  opacity: 1.0,
                  child: Container(
                    height: 110,
                    width: 1000,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
                        image: AssetImage(
                          "images/Disco4.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Text(
                              "Gatha",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ), //Title
                          ),
                        ), //container

                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 0.0, 0.0, 0.0),
                            child: Text(
                              "(Department of History)",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ), //subTitle
                          ),
                        ),

                        SizedBox(height: 8.0),

                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ), //content
                          ), //container
                        ),
                      ],
                    ), //column
                  ), //container
                ), //opacity
              ), //padding
            ), //onclick
          ])))) //scrollview
          ), //scaffold
    ); //material app
  }
}
