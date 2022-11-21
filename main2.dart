import 'package:flutter/material.dart';
import 'package:flutter_application_1/personal_page.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/resourcepage.dart';
import 'button_game.dart';
// import 'display.dart';
import 'login_page.dart';
import 'sign_up_page.dart';
import 'journal_page.dart';
import 'DemoApp.dart';
import 'check_in.dart';
// import 'mongodb.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: await_only_futures
  // await MongoDbDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //creates an app class
  const MyApp({super.key}); //app class has a const return key

  @override
  Widget build(BuildContext context) {
    //calls the build function - inbuilt
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, // this disables a banner shown on the top left corner of the emulator.
        initialRoute:
            'profile_page', // sets the first page when starting up the project. set to login page.
        routes: {
          // route shows the available pages the app is able tot traverse to.
          'login_page': (context) =>
              const MyLogin(), // login page available to traverse to
          'sign_up_page': (context) =>
              const MyRegister(), // sign up page available to traverse
          'journal_page': (context) =>
              const MyJournal(), // Journal page available to traverse.
          'home_page': (context) => DemoApp(),
          'game_page': (context) => const buttonApp(),
          'checkin_page': (context) => const MyCheckIn(),
          "resource_page": (context) => const MyResource(),
          "personal_page": (context) => const MyPersonal(),
          "profile_page" : (context) => const Profile_pg(),
          // "display":(context) => MongoDbDatabase(),
        });
  }
}
