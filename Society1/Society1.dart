// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Society 1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            print('Hello');
          },
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
                color: Colors.yellow[900],
                width: 2000,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Faculty Head',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.yellow[900],
                width: 2000,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Student Coordinator',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    ' Student 1',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    ' Student 2',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    ' Student 3',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    ' Student 4',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.yellow[900],
                width: 2000,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'About Society',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'A society is a group of individuals involved in persistent social interaction, or a large social group sharing the same spatial or social territory, typically subject to the same political authority and dominant cultural expectations.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text('For more information visit our website ',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ),
            Row(
              children: [
                IconButton(
                    icon: Icon(Icons.facebook_rounded),
                    color: Colors.white,
                    onPressed: () {}),
                IconButton(
                    icon: Icon(FontAwesomeIcons.instagram),
                    color: Colors.white,
                    onPressed: () {}),
                IconButton(
                    icon: Icon(FontAwesomeIcons.twitter),
                    color: Colors.white,
                    onPressed: () {}),
                IconButton(
                    icon: Icon(FontAwesomeIcons.globe),
                    color: Colors.white,
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton:
      //     FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ),
  ));
}

