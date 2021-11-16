import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int _value = 0;
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
        title: "Publish Opportunity",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Publish Opportunity',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            //leading: IconButton(
            //onPressed: () => true,
            //icon: Icon(
            //  Icons.menu,
            //  color: Colors.white,
            //))
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
                        child: Image.asset('images/msc_logo.png'),
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
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('images/chatbot.jpg'), fit: BoxFit.fill),
                  // child: Image(image: AssetImage('images/boat.jpg'))
                ),
              )),
          body: Builder(
              builder: (context) => SingleChildScrollView(
                      child: SafeArea(
                          child: Column(children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(image: AssetImage('images/boat.jpg')),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Fill this Form to Publish an Opportunity. ",
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(color: Colors.grey[800], letterSpacing: .2),
                              ),
                              textAlign: TextAlign.left,
                            ))),
                    SizedBox(
                      height: 2.0,
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Color(0xFFF0F0F0),
                        ),
                        height: 700.0,
                        width: 500.0,
                        //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        child: Form(
                            autovalidate: true,
                            key: formKey,
                            child: Column(children: <Widget>[
                              Container(
                                  height: 55,
                                  child: Row(children: <Widget>[
                                    Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*First Name", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(child: TextFormField(decoration: InputDecoration(labelText: "Last Name", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  ])),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                  height: 55,
                                  child: Row(children: <Widget>[
                                    Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Category", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  ])),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                  height: 55,
                                  child: Row(children: <Widget>[
                                    Expanded(
                                        child: TextFormField(
                                            validator: MultiValidator([
                                              RequiredValidator(errorText: "Required"),
                                              EmailValidator(errorText: "Please enter valid email ID")
                                            ]),
                                            decoration: InputDecoration(labelText: "*Enter your Email id", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  ])),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                  height: 55,
                                  child: Row(children: <Widget>[
                                    Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Enter your Phone no", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  ])),
                              SizedBox(
                                height: 20.0,
                              ),
                              /*Container(
                                  height: 55,
                                  child: Row(children: <Widget>[*/
                              Expanded(
                                child: DropdownButtonFormField(
                                  validator: (value) => value == 0 ? "Required" : null,
                                  decoration: InputDecoration(fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                                  //hint: Text("*Select your Department"),
                                  elevation: 4,
                                  isExpanded: true,
                                  value: _value,

                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "*Select your Department",
                                      ),
                                      value: 0,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Commerce"),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Economics"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("English"),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Hindi"),
                                      value: 4,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Mathematics"),
                                      value: 5,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Philosophy"),
                                      value: 6,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Political Science"),
                                      value: 7,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Punjabi"),
                                      value: 8,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Statistics"),
                                      value: 9,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Computer Science"),
                                      value: 10,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Elementary Education"),
                                      value: 11,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Environmental Science"),
                                      value: 12,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("History"),
                                      value: 13,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Music"),
                                      value: 14,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Physical Education and Sports Sciences"),
                                      value: 15,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Psychology"),
                                      value: 16,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Sanskrit"),
                                      value: 17,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Urdu"),
                                      value: 18,
                                    ),
                                  ],
                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                ),
                              ),
                              //])),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                  height: 55,
                                  child: Row(children: <Widget>[
                                    Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Opportunity Title", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  ])),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                  height: 100,
                                  child: Row(children: <Widget>[
                                    Expanded(child: TextField(maxLines: 10, decoration: InputDecoration(labelText: "Past Experience", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                  ])),
                              SizedBox(
                                height: 50.0,
                              ),
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Row(
                                    //Row(
                                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2),
                                        child: RaisedButton(
                                          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                                          onPressed: () {},
                                          color: Color(0xFFFFBA15),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          ),
                                          child: Text(
                                            "Upload Documents",
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2),
                                        child: RaisedButton(
                                          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                                          onPressed: (validate),
                                          color: Color(0XFF04C300),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          ),
                                          child: Text(
                                            "Submit",
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              //),
                              SizedBox(
                                height: 20.0,
                              ),
                            ]))),
                  ])))),
          bottomNavigationBar: new BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(
                icon: new Icon(Icons.home, color: Color(0xFF6C6C6C)),
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
        ));
  }

  void setState(Null Function() param0) {}
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
