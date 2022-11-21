/*
* NAME OF CODE ARTIFACT - check_in.dart
* BRIEF DESCRIPTION - This creates the frontend of the application that deals with the check in
*                     users are asked questions about how they are feeling to track their day-to-day mental health
*                     
* PROGRAMMERS NAME - Parveen Kaur
* DATE CODE CREATED - November 13th 2022
* DATE REVISED - November 20th 2022
* KNOWN FAULTS - None
*/

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;

class MyCheckIn extends StatefulWidget {
  //class for the login landing page.
  const MyCheckIn({Key? key}) : super(key: key); // constructor for log in page.

  @override
  _MyCheckInState createState() => _MyCheckInState(); //creates login page.
}

class _MyCheckInState extends State<MyCheckIn> {
  String g_feeling = ""; // global variable
  String g_worry = ""; // global variable
  String g_happy = ""; // global variable
  String g_sociliazing = ""; // global variable
  String g_corner = ""; // global variable
  //class definition.
  @override
  Widget build(BuildContext context) {
    //initializes the page to be built.
    return Container(
      // container widget. What the page is going to contain.
      child: Scaffold(
        // defining the background.
        backgroundColor:
            Colors.blue, // background color of the page. Currently set to
        body: Stack(children: [
          // defining the body of the display.
          Container(
            padding: const EdgeInsets.only(left: 35, top: 80), // edge insets
            child: const Text(
              //text widget allows to customize "Mindly" string.
              "Daily Check-in\n", //text
              style: TextStyle(
                  //style
                  color: Colors.white,
                  fontSize:
                      33), //string "Mindly" set in white and font size 33.
            ),
          ),
          const Text(
            //text
            "Mindly",
            style: TextStyle(color: Colors.white, fontSize: 33), //style
          ),
          SingleChildScrollView(
            // allows the user to scroll down if the information can't fit in the background.
            child: Container(
              // child widget for the scroll views.
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height *
                      0.5), //allows the upcoming text to be centered.
              child: Column(children: [
                // child widget.
                const Text(
                  'How Am I feeling today?',
                  style: TextStyle(color: Colors.white, fontSize: 27),
                ),
                TextField(
                  //creates textField widget
                  decoration: InputDecoration(
                    // the text box to be filled
                    fillColor: Colors.grey.shade100, //  color is set to white.
                    filled:
                        true, // sets the entire box to be filled to the color above.
                    border: OutlineInputBorder(
                      //outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), // size of the border set to 10.
                    ),
                  ),
                  onChanged: (feeling) =>
                      (g_feeling = feeling), // store value in global variable
                ),

                const SizedBox(
                  // setting size of the next text box.
                  height: 30, // height is set to 30.
                ),
                const Text(
                  //text
                  'What has been worrying me lately?',
                  style: TextStyle(color: Colors.white, fontSize: 27), //style
                ),
                TextField(
                  //creates textField widget
                  decoration: InputDecoration(
                    // the text box to be filled
                    fillColor: Colors.grey.shade100, //  color is set to white.
                    filled:
                        true, // sets the entire box to be filled to the color above.
                    border: OutlineInputBorder(
                      //outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), // size of the border set to 10.
                    ),
                  ),
                  onChanged: (worry) =>
                      (g_worry = worry), // store value in global variable
                ),

                const SizedBox(
                  // setting size of the next text box.
                  height: 30, // height is set to 30.
                ),
                const Text(
                  //text
                  'What happened today that made me really happy?',
                  style: TextStyle(color: Colors.white, fontSize: 27), //style
                ),
                TextField(
                  //creates textField widget
                  decoration: InputDecoration(
                    // the text box to be filled
                    fillColor: Colors.grey.shade100, //  color is set to white.
                    filled:
                        true, // sets the entire box to be filled to the color above.
                    border: OutlineInputBorder(
                      //outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), // size of the border set to 10.
                    ),
                  ),
                  onChanged: (happy) =>
                      (g_happy = happy), // store value in global variable
                ),

                const SizedBox(
                  // setting size of the next text box.
                  height: 30, // height is set to 30.
                ),
                const Text(
                  //text
                  'Have I been socializing less?',
                  style: TextStyle(color: Colors.white, fontSize: 27), //style
                ),
                TextField(
                  // textfield widget.
                  decoration: InputDecoration(
                    //decoration widget
                    fillColor:
                        Colors.grey.shade100, // fills the box to the color set.
                    filled: true, // fills the entire box with the above color.
                    border: OutlineInputBorder(
                      // outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), //borders the text box with size 10.
                    ),
                  ),
                  onChanged: (socializing) => (g_sociliazing =
                      socializing), // store value in global variable
                ),

                const SizedBox(
                  //size box widget enabled.
                  height: 40, // set the size to 40.
                ),
                const Text(
                  //text
                  'Who do I have in my corner?',
                  style: TextStyle(color: Colors.white, fontSize: 27), //style
                ),
                TextField(
                  //creates textField widget
                  decoration: InputDecoration(
                    // the text box to be filled
                    fillColor: Colors.grey.shade100, //  color is set to white.
                    filled:
                        true, // sets the entire box to be filled to the color above.
                    border: OutlineInputBorder(
                      //outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), // size of the border set to 10.
                    ),
                  ),
                  onChanged: (corner) {
                    g_corner = corner; // store value in global variable
                  },
                ),

                const SizedBox(
                  // setting size of the next text box.
                  height: 30, // height is set to 30.
                ),

                Row(
                  //row widget
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //divides the space between the children evenly.
                  children: [
                    // sets the children in the row.
                    const Text(
                      // text widget.
                      'Homepage', // displays 'Sign In' screen.
                      style: TextStyle(
                          // text style widget.
                          color:
                              Colors.white, //color of the string set to white.
                          fontSize: 27, // font size set the 27.
                          fontWeight: FontWeight
                              .w700), // How "bold" the string appears.
                    ),

                    CircleAvatar(
                      // circle display
                      radius: 30, //radius of the circle.
                      backgroundColor: Colors
                          .lightBlueAccent, // set the color for the button.
                      child: IconButton(
                        //the icon inside the button
                        color: Colors.white, // icon color set to white.
                        onPressed: () async {
                          //when button is pressed connect to database
                          var db = await mongo.Db.create(MONGO_URL_CHECKIN);
                          await db.open(); //wait for it to open
                          var userCollection = // connect to the specific table
                              db.collection(COLLECTION_NAME_checkin);
                          await userCollection.insert({
                            //insert global values into the respective fields
                            "feeling ": g_feeling,
                            "worry": g_worry,
                            "happy": g_happy,
                            "socializing": g_sociliazing,
                            "corner": g_corner,
                          });
                          Navigator.pushNamed(
                              context, 'home_page'); // upon pushed, redirect
                          //make database connection
                        }, // allows user to click the button. Nothing happens right now.
                        icon: const Icon(Icons
                            .arrow_forward), // icon inside the button is an arrow.
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  //size box widget.
                  height: 40, //size set to 40.
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
