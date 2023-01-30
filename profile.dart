/*
* NAME OF CODE ARTIFACT - profile.dart
* BRIEF DESCRIPTION - This is the page that retreves data from the db 
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - Nov 19th, 2022
* DATE REVISED - Nov 19th  
                 Jowaki Merani - abe to retreve data and print to terminal 
*               Jan 28th 
                Jowaki Merani - reformatted the data to provide a better UI
KNOWN FAULT - None
*/
import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
// import 'package:mongo_dart/mongo_dart.dart';
import 'constant.dart';

class Profile_pg extends StatefulWidget {
  String email;
  Profile_pg({required this.email});

  @override
  _Profile_pgState createState() => _Profile_pgState(email: '$email');
}

class _Profile_pgState extends State<Profile_pg> {
  // MaterialColor backgroundColor;
  String email;
  _Profile_pgState({required this.email});

  get static => null;
  var temp;
  late final validMap;
  late final List transfer = []; //create a list
  // ignore: prefer_typing_uninitialized_variables
  // var temp;

  // get red => null;

  @override
  Widget build(BuildContext context) {
    print('object ${email}');

    const appTitle =
        'Mindly'; // this sets the title of the page. set to 'Mindly' for all pages as of 10/03.
    return MaterialApp(

        // what the page will contain. returns the content below.
        debugShowCheckedModeBanner:
            false, // disables debug banner when troubleshooting.
        title: appTitle, // title is set to 'Mindly'.
        home: Scaffold(

            // home page is set.
            bottomNavigationBar: BottomAppBar(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      // button
                      // mainAxisAlignment: MainAxisAlignment.center,
                      icon: Image.asset('assets/game.png'), //image
                      iconSize: 50, //size
                      onPressed: () {
                        //functionality
                        Navigator.pushNamed(context, 'game_page');
                      },
                    ),
                    IconButton(
                      // button
                      // mainAxisAlignment: MainAxisAlignment.center,
                      icon: Image.asset('assets/journal.png'), //image
                      iconSize: 50, //size
                      onPressed: () {
                        //functionality
                        Navigator.pushNamed(context, 'journal_page');
                      },
                    ),
                    IconButton(
                      //button
                      // mainAxisAlignment: MainAxisAlignment.center,
                      icon: Image.asset('assets/home.png'), //image
                      iconSize: 50, //size
                      onPressed: () {
                        //functionality
                        Navigator.pushNamed(context, 'home_page');
                      },
                    ),
                    IconButton(
                      // Icon buttom
                      // mainAxisAlignment: MainAxisAlignment.center,
                      icon: Image.asset('assets/music.png'), //image
                      iconSize: 50, //size
                      onPressed: () {
                        Navigator.pushNamed(context, 'music_page');
                      }, //functionality
                    ),
                    IconButton(
                      tooltip: 'Open navigation menu',
                      icon: Image.asset('assets/info.png'), //image
                      iconSize: 50, //size
                      onPressed: () {
                        //functionality
                        Navigator.pushNamed(context, 'resource_page');
                      },
                    ),
                  ],
                )),
            appBar: AppBar(
              //app bar widget.
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                    Navigator.pushNamed(context, 'notification_page');
                  },
                ),
              ],
              title: const Text(appTitle), // title of the app bar.
            ),
            backgroundColor: Colors.blue, // background color of the main page
            body: Stack(children: [
              Container(
                  // the body of the page, this contains the text field.
                  height: 1700, //height of the save button.
                  width: 100,
                  child: Container(
                    // container widget for the save button.
                    height: 10, //height of the save button.
                    width: 0, //width of the save button.

                    // right: 70,
                    // bottom: 100,
                    child: FloatingActionButton(
                      onPressed: () async {
                        var db = await mongo.Db.create(
                            MONGO_URL_Signup); //wait to locate url
                        await db
                            .open(); //opens the connection to url - reuquired db
                        inspect(db); //ensures url exists
                        var status =
                            db.serverStatus(); //provides the status of url
                        // print(status);//debug print to ensure sucessful status
                        var collection = db.collection(
                            COLLECTION_NAME_signup); //determine the collection of the entry
                        temp = await collection
                            .find(mongo.where.eq('email', '${email}'))
                            .toList(); //look for specific entry
                        // print(temp[0]); //debug

                        final validMap = json
                            .decode(
                                json.encode(temp[0])) as Map<String,
                            dynamic>; //map the input data to a hashmap using json
                        print(validMap); //debug

                        temp = validMap;

                        // temp.forEach((k,v) => print("$k := $v"));
                        temp.forEach((k, v) => transfer.add(
                            "$k := $v\n")); //convert each map to a string and add to list
                        await db.close(); //close db
                        setState(() {}); //reset the page

                        // const Text("Details\n $temp");
                        // Navigator.pushAndRemoveUntil(
                        //               context,
                        //               MaterialPageRoute(builder: (context) => Profile_pg()),
                        //               (Route<dynamic> route) => false,
                        //             );
                      },
                    ),
                  )),
              Text(
                // setState(() {});
                "Details\n $transfer", //print person details
                style: TextStyle(
                  //determine text style
                  color: Colors.white,
                  // decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left, //align text
              ),
            ])));
  }
}
