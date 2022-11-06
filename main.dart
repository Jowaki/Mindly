/*
* NAME OF CODE ARTIFACT - main.dart
* BRIEF DESCRIPTION - This is the main page that opens at the begining 
* PROGRAMMERS NAME - Eduardo Sanchez
* DATE CODE CREATED - October 1st, 2022
* DATE REVISED - October 1st
*                Eduardo Sanchez - Generated a main page with the opening options of either loging in or signing up 
                 October 7th
                 Eduardo Sanchez - linked the main page buttons to corresponding pages
                 October 23rd 
                 Jowaki Merani - reformat the code to work for database connections
                 November 4th 
                 Jowaki Merani - Update the code for connecting to teh home page with required update to imports 
* KNOWN FAULT - None
*/
import 'package:flutter/material.dart';
import 'button_game.dart';
import 'login_page.dart';
import 'sign_up_page.dart';
import 'journal_page.dart';
import 'DemoApp.dart';
// import 'mongodb.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: await_only_futures
  // await MongoDbDatabase.connect();
  runApp(const MyApp());
}


  class MyApp extends StatelessWidget {//creates an app class
    const MyApp({super.key});//app class has a const return key 

 @override
  Widget build(BuildContext context) {//calls the build function - inbuilt
    return MaterialApp(
      debugShowCheckedModeBanner: false, // this disables a banner shown on the top left corner of the emulator.
        initialRoute: 'login_page', // sets the first page when starting up the project. set to login page.
        routes: 
          { // route shows the available pages the app is able tot traverse to.
            'login_page': (context) => const MyLogin(), // login page available to traverse to
            'sign_up_page': (context) => const MyRegister(), // sign up page available to traverse
            'journal_page':(context) => const MyJournal(), // Journal page available to traverse.
            'home_page' :(context) => DemoApp(),
            'game_page' :(context) => const buttonApp(),
          }
        );
      
  }
}