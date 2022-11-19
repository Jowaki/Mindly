/*
* NAME OF CODE ARTIFACT - resourcepage.dart
* BRIEF DESCRIPTION - This creates the frontend of the application that deals with login. 
*                     It can take in the password and the username - validate it and allow acess to registered users
* PROGRAMMERS NAME - Parveen Kaur 
* DATE CODE CREATED - November 14th 2022
* DATE REVISED - 
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
            "Mindly\nResource Page\n",
            style: TextStyle(
              color: Colors.white,
              fontSize: 33,
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
                  "\nCounseling And Psychological Services, KU",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Website: https://caps.ku.edu/\nContact Number: 785-864-2277\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Image.asset(
                  'assets/qr.png',
                ),

                const Text(
                  "CAPS- 24/7 Support, KU",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Telephone Support: 1.866.408.2828\nDownload MY SSP to Call. Chat. Anytime. Anywhere\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Suicide Prevention Helpline",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Dial: 988\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Emergency Services:",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "Dial: 999\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
          Positioned(
              top: 10,
              right: 52,
              child: ElevatedButton.icon(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/pointy.png'),
                onPressed: () {
                  Navigator.pushNamed(context, 'personal_page');
                },
                label: const Text("Additional Resources"),
              )),
        ]),
      ),
    );
  }
}
