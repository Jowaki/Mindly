/*
* NAME OF CODE ARTIFACT - main.dart
* BRIEF DESCRIPTION - This is the main page that opens at the begining 
* PROGRAMMERS NAME - Eduardo Sanchez
* DATE CODE CREATED - October 1st, 2022
* DATE REVISED - October 1st
*                Eduardo Sanchez - Generated a main page with the opening options of either loging in or signing up 
                 October 7th
                 Eduardo Sanchez - linked the main page buttons to corresponding pages
* KNOWN FAULT - None
*/
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up_page.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false, // this disables a banner shown on the top left corner of the emulator.
        initialRoute: 'login_page', // sets the first page when starting up the project. set to login page.
        routes: { // route shows the available pages the app is able tot traverse to.
          'login_page': (context) => const MyLogin(), // login page available to traverse to
          'sign_up_page': (context) => const MyRegister(), // sign up page available to traverse
        }),
  );
}
