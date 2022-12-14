/*
* NAME OF CODE ARTIFACT - profile.dart
* BRIEF DESCRIPTION - This is the page that retreves data from the db 
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - Nov 19th, 2022
* DATE REVISED - Nov 19th  
                 Jowaki Merani - abe to retreve data and print to terminal 
* KNOWN FAULT - None
*/

import 'dart:developer';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart'as mongo;
// import 'package:mongo_dart/mongo_dart.dart';

import 'constant.dart';


class Profile_pg extends StatefulWidget {
   const Profile_pg({Key? key}) : super(key: key);

  @override
_Profile_pgState createState() => _Profile_pgState();
}

class _Profile_pgState extends State<Profile_pg> {
  // MaterialColor backgroundColor;

  get static => null;
  // ignore: prefer_typing_uninitialized_variables
  var temp ;
  
  // get red => null;

  @override
  Widget build(BuildContext context) {
          const appTitle = 'Mindly'; // this sets the title of the page. set to 'Mindly' for all pages as of 10/03.
      return MaterialApp( // what the page will contain. returns the content below.
      debugShowCheckedModeBanner: false, // disables debug banner when troubleshooting.
      title: appTitle, // title is set to 'Mindly'.
      home:Scaffold( // home page is set.
        appBar: AppBar( //app bar widget.
          title: const Text(appTitle), // title of the app bar.
        ),
        backgroundColor: Colors.blue, // background color of the main page
        body: Stack (children: [
        Container( // the body of the page, this contains the text field.
        height: 70, //height of the save button.
        width: 100, 
        child: Container(
        // container widget for the save button.
        height: 0, //height of the save button.
        width: 0, //width of the save button.

        // right: 70,
        // bottom: 100,
          child: FloatingActionButton(
            
            onPressed: () async {
                var db = await mongo.Db.create(MONGO_URL_Signup);//wait to locate url 
                await db.open();//opens the connection to url - reuquired db 
                inspect(db);//ensures url exists
                var status = db.serverStatus();//provides the status of url 
                // print(status);//debug print to ensure sucessful status 
                var collection = db.collection(COLLECTION_NAME_signup);//determine the collection of the entry
                temp = await collection.find(mongo.where.eq('name', 'hello')).toList();//look for specific entry 
                print(temp[0]);//debug
                await db.close();//close db

                // const Text("Details\n $temp");
                // Navigator.pushAndRemoveUntil(
                //               context,
                //               MaterialPageRoute(builder: (context) => Profile_pg()),
                //               (Route<dynamic> route) => false,
                //             );
                            }, child: Text(''),),)
        ),
        Text(
          // setState(() {});
          "Details\n $temp",//print person details 
          style: TextStyle(//determine text style 
                    color: Colors.white,
                    // decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    ),
          textAlign:TextAlign.center , //align text 
          
        )
        
        
        ])));
       
        }}
          