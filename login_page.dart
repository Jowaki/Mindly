/*
* NAME OF CODE ARTIFACT - login_page.dart
* BRIEF DESCRIPTION - This creates the frontend of the application that deals with login. 
*                     It can take in the password and the username - validate it and allow acess to registered users
* PROGRAMMERS NAME - Eduardo Sanchez
* DATE CODE CREATED - Sept 21st 2022
* DATE REVISED - Sept 21st
*                Eduardo Sanchez - Text box for password and username 
* KNOWN FAULT - Not connected to database
*/

import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  //class for the login landing page.
  const MyLogin({Key? key}) : super(key: key); // constructor for log in page.

  @override
  _MyLoginState createState() => _MyLoginState(); //creates login page.
}

class _MyLoginState extends State<MyLogin> {
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
              "Mindly\n",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:
                      33), //string "Mindly" set in white and font size 33.
            ),
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
                TextField(
                  //creates textField widget
                  decoration: InputDecoration(
                    // the text box to be filled
                    fillColor: Colors.grey.shade100, //  color is set to white.
                    filled:
                        true, // sets the entire box to be filled to the color above.
                    hintText:
                        'Email', // string 'Email' is displayed when text box is idle.
                    border: OutlineInputBorder(
                      //outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), // size of the border set to 10.
                    ),
                  ),
                ),

                const SizedBox(
                  // setting size of the next text box.
                  height: 30, // height is set to 30.
                ),

                TextField(
                  // textfield widget.
                  obscureText: true, //obscure text to hide the users input.
                  decoration: InputDecoration(
                    //decoration widget
                    fillColor:
                        Colors.grey.shade100, // fills the box to the color set.
                    filled: true, // fills the entire box with the above color.
                    hintText:
                        'Password', // string 'Password' is displayed when the box is idle.
                    border: OutlineInputBorder(
                      // outline border widget.
                      borderRadius: BorderRadius.circular(
                          10), //borders the text box with size 10.
                    ),
                  ),
                ),

                const SizedBox(
                  //size box widget enabled.
                  height: 40, // set the size to 40.
                ),

                Row(
                  //row widget
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //divides the space between the children evenly.
                  children: [
                    // sets the children in the row.
                    const Text(
                      // text widget.
                      'Sign In', // displays 'Sign In' screen.
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
                        onPressed: () {
                          Navigator.pushNamed(context, 'home_page');
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

                Row(
                    //row widget.
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, //allows the objects in the row object to be spaced evenly.
                    children: [
                      // defining the children on row.
                      TextButton(
                        // text button widget.
                        onPressed: () {
                          // what follows after the button is pressed.
                          Navigator.pushNamed(context,
                              'sign_up_page'); //user is directed to the sign up page of the app.
                        },
                        child: const Text(
                          // text widget
                          'Sign Up', // displays 'Sign up' string.
                          style: TextStyle(
                            // allows customization of the string.
                            decoration: TextDecoration
                                .underline, // underlines 'Sign Up'
                            fontSize: 18, // font size set to 18.
                            color: Color(
                                0xff4c505b), //color is set for the sign up.
                          ),
                        ),
                      ),

                      TextButton(
                        //text button widget
                        onPressed:
                            () {}, // allows user to press button. Nothing is implemented yet.
                        child: const Text(
                          //text button.
                          'Forgot Password', //string 'Forgot Password'
                          style: TextStyle(
                            //text style widget
                            decoration: TextDecoration
                                .underline, //underlines the text 'Forgot Password'
                            fontSize: 18, //font size 18. for forgot password.
                            color: Color(
                                0xff4c505b), //sets the color for 'Forgot Password'.
                          ),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
