import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState.validate()) {
      print("validate");
    } else {
      print("Not Validate");
    }
  }

  String validatepass(value) {
    if (value.isEmpty) {
      return "Required";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Raise Issue",
        home: Scaffold(
            appBar: AppBar(
                title: Text(
                  'Raise An Issue',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                leading: IconButton(
                    onPressed: () => true,
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ))),
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
                          child: Image.asset('images/logo.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "MATA SUNDRI COLLEGE FOR WOMEN",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
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
                              fontFamily: 'Roboto',
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
            body: Builder(
                builder: (context) => SingleChildScrollView(
                        child: SafeArea(
                            child: Column(children: [
                      Stack(children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: AssetImage('images/raise_issue.jpg')),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                            padding: EdgeInsets.only(left: 25.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Grievance",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
                                    )))),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Redressal",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
                                  ),
                                  textAlign: TextAlign.left,
                                ))),
                      ]),
                      Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Fill Grievance Form to Raise an Issue",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(color: Colors.grey[800], letterSpacing: .2),
                                ),
                                textAlign: TextAlign.left,
                              ))),
                      SizedBox(
                        height: 1.5,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Fill all the mandatory fields marked with '*'",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(color: Colors.red, letterSpacing: .2),
                                  ),
                                  textAlign: TextAlign.left))),
                      Container(
                          height: 570.0,
                          width: 500.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFFF0F0F0),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          child: Form(
                              autovalidate: true,
                              key: formKey,
                              child: Column(children: <Widget>[
                                Container(
                                    child: Row(children: <Widget>[
                                  Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*First Name", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(child: TextFormField(decoration: InputDecoration(labelText: "Last Name", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                ])),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Category", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(
                                    child: TextFormField(
                                        validator: MultiValidator([
                                          RequiredValidator(errorText: "Required *"),
                                          EmailValidator(errorText: "please enter valid email ID")
                                        ]),
                                        decoration: InputDecoration(labelText: "*Enter your Email id", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Subject for issue", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(child: TextField(maxLines: 10, decoration: InputDecoration(labelText: "Write your issue", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2),
                                        child: RaisedButton(
                                          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                                          onPressed: () {},
                                          color: Color(0xFFFFBA15),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          ),
                                          child: Text(
                                            "UPLOAD\nDOCUMENTS",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2),
                                        child: RaisedButton(
                                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                          onPressed: validate,
                                          color: Color(0XFF04C300),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          ),
                                          child: Text(
                                            "SUBMIT",
                                            style: TextStyle(fontSize: 13.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                              ]))),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.purple[800],
                              size: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'matasundricollege.du@gmail.com',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(fontSize: 15.0),
                              ),
                            ),
                            SizedBox(
                              width: 7.0,
                            ),
                          ],
                        ),
                      ),
                    ]))))));
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
                    fontFamily: 'Roboto',
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
