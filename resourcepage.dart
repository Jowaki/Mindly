/*
* NAME OF CODE ARTIFACT - resourcepage.dart
* BRIEF DESCRIPTION - This creates the frontend of the application that deals with resources.
*                     - It displays the resources available
* PROGRAMMERS NAME - Parveen Kaur 
* DATE CODE CREATED - November 14th 2022
* DATE REVISED - November 14th 2022
* KNOWN FAULT - None
*/

import 'package:flutter/material.dart';

class MyResource extends StatefulWidget {
  //class for the login landing page.
  const MyResource({Key? key})
      : super(key: key); // constructor for log in page.

  @override
  _MyResourceState createState() => _MyResourceState(); //creates login page.
}

class _MyResourceState extends State<MyResource> {
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
          // Text widget used to display count

          const Text(
            //Text
            "Mindly\nResource Page\n", //Text
            style: TextStyle(
              //text style
              color: Colors.white, // font color white
              fontSize: 33, // font size
            ),
          ),
          SingleChildScrollView(
            // allows the user to scroll down if the information can't fit in the background.
            child: Container(
              // child widget for the scroll views.
              padding: EdgeInsets.only(
                right: 35,
                left: 35,
                top: 200,
                bottom: 80,
              ), //MediaQuery.of(context).size.height *
              //0.5), //allows the upcoming text to be centered.

              child: Column(children: [
                // create a column of children
                // IconButton(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   label: Text("Additional Resources"),
                //   iconSize: 50,
                //   onPressed: () {},
                // )),
                // Image.asset(
                //   'assets/quote1.png',
                // ),
                // child widget.
                const Text(
                  //text
                  "\nCounseling And Psychological Services, KU", //text
                  style: TextStyle(
                    //style
                    color: Colors.white, //white
                    decoration: TextDecoration.underline, //underline text
                    fontWeight: FontWeight.bold, //bold text
                    fontSize: 20, //font size
                  ),
                ),
                const Text(
                  //text
                  "Website: https://caps.ku.edu/\nContact Number: 785-864-2277\n", //text
                  style: TextStyle(
                    //text style
                    color: Colors.white, //font = white
                    fontSize: 20, // font size
                  ),
                ),
                Image.asset(
                  // image
                  'assets/qr.png',
                ),

                const Text(
                  //text
                  "CAPS- 24/7 Support, KU", //text
                  style: TextStyle(
                    //text style
                    color: Colors.white, // white
                    fontWeight: FontWeight.bold, //bold text
                    decoration: TextDecoration.underline, //underline text
                    fontSize: 20, // font size
                  ),
                ),
                const Text(
                  //text
                  "Telephone Support: 1.866.408.2828\nDownload MY SSP to Call. Chat. Anytime. Anywhere\n", //text
                  style: TextStyle(
                    //text style
                    color: Colors.white, //font color
                    fontSize: 20, //font size
                  ),
                ),
                const Text(
                  //text
                  "Suicide Prevention Helpline", //text
                  style: TextStyle(
                    //text style
                    color: Colors.white, // text color
                    fontWeight: FontWeight.bold, //bold text
                    decoration: TextDecoration.underline, //underline text
                    fontSize: 20, // text size
                  ),
                ),
                const Text(
                  //text
                  "Dial: 988\n", //text
                  style: TextStyle(
                    //text style
                    color: Colors.white, // text color
                    fontSize: 20, // text size
                  ),
                ),
                const Text(
                  // text
                  "Emergency Services:", //text
                  style: TextStyle(
                    // text style
                    color: Colors.white, // text color
                    fontWeight: FontWeight.bold, //bold text
                    decoration: TextDecoration.underline, // underline text
                    fontSize: 20, // text size
                  ),
                ),
                const Text(
                  // text
                  "Dial: 999\n", // text
                  style: TextStyle(
                    // text style
                    color: Colors.white, // color
                    fontSize: 20, // size
                  ),
                ),

                // const Divider(
                //   color: Colors.white, //color of divider
                //   height: 5, //height spacing of divider
                //   thickness: 5, //thickness of divier line
                // ),
                // const Text(
                //   "\n\nSome other calming methods you can utilize:",
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold,
                //     decoration: TextDecoration.underline,
                //     fontSize: 20,
                //   ),
                // ),
                // const Text(
                //   "\n",
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 20,
                //   ),
                // ),

                Row(
                    //row widget.

                    ),
              ]),
            ),
          ),
          Positioned(
              // position of button
              bottom: 10, // distance from bottom
              left: 2, // distance from top
              child: IconButton(
                // Icon buttom
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/music.png'), //image
                iconSize: 50, //size
                onPressed: () {}, //functionality
              )),
          Positioned(
              // position of button
              bottom: 10, // distance from bottom
              left: 52, // distance from left
              child: IconButton(
                // button
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/journal.png'), //image
                iconSize: 50, //size
                onPressed: () {
                  //functionality
                  Navigator.pushNamed(context, 'journal_page');
                },
              )),
          Positioned(
              //position of button
              bottom: 10, //distance from bottom
              left: 102, //distance from left
              child: IconButton(
                // button
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/game.png'), //image
                iconSize: 50, //size
                onPressed: () {
                  //functionality
                  Navigator.pushNamed(context, 'game_page');
                },
              )),
          Positioned(
              //position of button
              bottom: 10, //distance from bottom
              left: 152, //distance from left
              child: IconButton(
                //button
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/home.png'), //image
                iconSize: 50, //size
                onPressed: () {
                  //functionality
                  Navigator.pushNamed(context, 'home_page');
                },
              )),
          Positioned(
              //position of button
              bottom: 10, // distance from bottom
              left: 202, //distance from left
              child: IconButton(
                //button
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/info.png'), //image
                iconSize: 50, //size
                onPressed: () {
                  //functionality
                  Navigator.pushNamed(context, 'resource_page');
                },
              )),
          Positioned(
              //position of button
              top: 10, //distance from top
              right: 52, //distance from right
              child: ElevatedButton.icon(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/pointy.png'), //image
                onPressed: () {
                  //functionality
                  Navigator.pushNamed(context, 'personal_page');
                },
                label: const Text("Additional Resources"), //button label
              )),
        ]),
      ),
    );
  }
}
