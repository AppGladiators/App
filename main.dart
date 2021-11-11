import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        title: "Publish Opportunity",
        home: Scaffold(
            appBar: AppBar(
                centerTitle: false,
                title: Text(
                  'Publish Opportunity',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 25,
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
            body: Builder(
                builder: (context) => SingleChildScrollView(
                        child: SafeArea(
                            child: Column(children: [
                      Stack(children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                            child: Align(alignment: Alignment.center, child: Image(image: AssetImage('images/boat.jpg'))

                                //child: Image(
                                // image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fred-paper-boat&psig=AOvVaw1Cpq8HRbuXXZFEvRo-Kxme&ust=1636705948356000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCOCmifnyj_QCFQAAAAAdAAAAABAW"),
                                //)
                                )),
                      ]),
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
                          color: Colors.grey[350],
                          height: 600.0,
                          width: 500.0,
                          //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.0))),
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
                                  height: 20.0,
                                ),
                                Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Category", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(
                                    child: TextFormField(
                                        validator: MultiValidator([
                                          RequiredValidator(errorText: "Required"),
                                          EmailValidator(errorText: "Please enter valid email ID")
                                        ]),
                                        decoration: InputDecoration(labelText: "*Enter your Email id", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Enter your Phone no", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Select your Department", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(child: TextFormField(validator: validatepass, decoration: InputDecoration(labelText: "*Opportunity Title", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Expanded(child: TextFormField(decoration: InputDecoration(labelText: "Past Experience", fillColor: Colors.white, filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))))),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                    child: Row(children: <Widget>[
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFFFBA15),
                                      onPrimary: Colors.white,
                                    ),
                                    child: Text(
                                      'Upload Documents',
                                      style: GoogleFonts.lato(
                                        textStyle: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary: Colors.white), child: Text('Submit', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white))), onPressed: validate),
                                ])),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ]))),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.purple[800],
                              size: 40.0,
                            ),
                            SizedBox(
                              width: 7.0,
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
                            FloatingActionButton(
                              onPressed: () {},
                              child: const Icon(FontAwesomeIcons.robot, size: 25.0),
                              backgroundColor: Color(0xFF720972),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 50.0,
                          color: Color(0xFF0091DE),
                          child: Row(children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'For further more information visit our website',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(alignment: Alignment(-0.40, 0.90)),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 18.0),
                            SizedBox(
                              width: 7.0,
                            ),
                            Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 18.0),
                            SizedBox(
                              width: 7.0,
                            ),
                            Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 18.0),
                            SizedBox(
                              width: 7.0,
                            ),
                            Icon(FontAwesomeIcons.globe, color: Colors.white, size: 18.0),
                          ])),
                    ]))))));
  }
}
