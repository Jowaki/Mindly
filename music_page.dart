/*
* NAME OF CODE ARTIFACT - music_page.dart
* BRIEF DESCRIPTION - - This creates the frontend of the music page
* PROGRAMMERS NAME - Parveen Kaur 
* DATE CODE CREATED - November 30th 2022
* DATE REVISED - November 30th 2022
* KNOWN FAULT - None
*/

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyMusic extends StatefulWidget {
  //class for the login landing page.
  const MyMusic({Key? key}) : super(key: key); // constructor for log in page.

  @override
  _MyMusicState createState() => _MyMusicState(); //creates login page.
}

class _MyMusicState extends State<MyMusic> {
  Widget build(BuildContext context) {
    return Container(
      // container widget. What the page is going to contain.
      child: Scaffold(
        // defining the background.
        backgroundColor:
            Colors.blue, // background color of the page. Currently set to
        body: Stack(children: [
          const Text(
            // creates a textfield
            "Mindly\nMusic Page\n", //text
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
              padding: const EdgeInsets.only(
                right: 35, // distance from the right
                left: 35, // distance from the left
                top: 200, //distance from the top
                bottom: 80, // distance from the bottom
              ), //MediaQuery.of(context).size.height *
              //0.5), //allows the upcoming text to be centered.

              child: Column(children: [
                ElevatedButton.icon(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  icon: Image.asset('assets/play.png'), //image
                  onPressed: () async {
                    Navigator.pushNamed(context, 'play_page');

                    // final player = AudioCache();
                    // player.play('testAudio.mp3');
                  },
                  label: const Text("Tune 1: Song Name"), //button label
                ),
                const Text("\n"),
                ElevatedButton.icon(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  icon: Image.asset('assets/play.png'), //image
                  onPressed: () {
                    //functionality
                  },
                  label: const Text("Tune 2: Song Name"), //button label
                ),
                const Text("\n"),
                ElevatedButton.icon(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  icon: Image.asset('assets/play.png'), //image
                  onPressed: () {
                    //functionality
                  },
                  label: const Text("Tune 3: Song Name"), //button label
                ),
                const Text("\n"),
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
                onPressed: () {
                  Navigator.pushNamed(context, 'music_page');
                }, //functionality
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

              bottom: 10, //positioning the button from the bottom
              left: 252, //positioning the button from the left
              child: IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/profile.png'), //image to be used
                iconSize: 50, //buttom size
                onPressed: () {
                  Navigator.pushNamed(context, 'profile_page');
                }, //functionality on pressed
              ))
        ]),
      ),
    );
  }
}
