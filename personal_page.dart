/*
* NAME OF CODE ARTIFACT - personal_page.dart
* BRIEF DESCRIPTION - This creates the frontend of the application that deals with login. 
*                     It can take in the password and the username - validate it and allow acess to registered users
* PROGRAMMERS NAME - Parveen Kaur 
* DATE CODE CREATED - November 14th 2022
* DATE REVISED - 
* KNOWN FAULT - None
*/

import 'package:flutter/material.dart';

class MyPersonal extends StatefulWidget {
  //class for the login landing page.
  const MyPersonal({Key? key})
      : super(key: key); // constructor for log in page.

  @override
  _MyPersonalState createState() => _MyPersonalState(); //creates login page.
}

class _MyPersonalState extends State<MyPersonal> {
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
            // creates a textfield
            "Mindly\nAdditional Resources\n", //text
            style: TextStyle(
              // the style for the text
              color: Colors.white, // color it white
              fontSize: 33, // font size
            ),
          ),
          SingleChildScrollView(
            // allows the user to scroll down if the information can't fit in the background.
            child: Container(
              // child widget for the scroll views.
              padding: EdgeInsets.only(
                right: 35, // distance from the right
                left: 35, // distance from the left
                top: 200, //distance from the top
                bottom: 80, // distance from the bottom
              ), //MediaQuery.of(context).size.height *
              //0.5), //allows the upcoming text to be centered.

              child: Column(children: [
                // create a column of children
                const Text(
                  //text field
                  "Practice your breathing\n", // text
                  style: TextStyle(
                    // text style
                    color: Colors.white, // color text white
                    decoration: TextDecoration.underline, // underline text
                    fontWeight: FontWeight.bold, // bold the text
                    fontSize: 20, // set font size
                  ),
                ),
                const Text(
                  "\u2022 Take 5 deep breaths\nBreathe in, hold for 5 seconds and slowly breathe out\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Play our tapping game\n",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 102,
                    child: IconButton(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      icon: Image.asset('assets/game.png'),
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, 'game_page');
                      },
                    )),
                const Text(
                  "Get active\n",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "\u2022Take a trip to the Recreation Centre located on campus\n\u2022Go for a bike ride\n\u2022Go for a 40 minute brisk walk to absord some sun\n\u2022Enroll into a dance class",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "\n3-3-3 Rule",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // https://adultmentalhealth.org/managing-and-reducing-anxiety/
                const Text(
                  "\u2022Look around you and name three things you see\n\u2022Then, name three sounds you hear\n\u2022Finally, move three parts of your body (eg, ankle, fingers or arm)\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Row(
                    //row widget.

                    ),
              ]),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 2,
              child: IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/music.png'),
                iconSize: 50,
                onPressed: () {},
              )),
          Positioned(
              bottom: 10,
              left: 52,
              child: IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/journal.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.pushNamed(context, 'journal_page');
                },
              )),
          Positioned(
              bottom: 10,
              left: 102,
              child: IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/game.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.pushNamed(context, 'game_page');
                },
              )),
          Positioned(
              bottom: 10,
              left: 152,
              child: IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/home.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.pushNamed(context, 'home_page');
                },
              )),
          Positioned(
              bottom: 10,
              left: 202,
              child: IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/info.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.pushNamed(context, 'resource_page');
                },
              )),
        ]),
      ),
    );
  }
}
