/*
* NAME OF CODE ARTIFACT - sign_up_page.dart
* BRIEF DESCRIPTION - This is the page that collects the information like email , name , password for a new user
* PROGRAMMERS NAME - Eduardo Sanchez
* DATE CODE CREATED - October 4th, 2022
* DATE REVISED - October 4th
*                Eduardo Sanchez - developed a field for name and email - typable boxes
                 October 6th 
                 Eduardo Sanchez - developed a field for password - typable boxes
* KNOWN FAULT - Not connected to database
*/
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget { // class for the sign up page.
  const MyRegister({Key? key}) : super(key: key); // constructor.

  @override
  _MyRegisterState createState() => _MyRegisterState(); // creates sign up page.
}

class _MyRegisterState extends State<MyRegister> { //class is defined here.
  @override
  Widget build(BuildContext context) { //initializes the page build.
    return Container( // container widget. What the program is going to contain.
       child: Scaffold( //child scaffold, this is the top bar of the page.
        appBar: AppBar( //app bar widget. This only affects the top bar.
          backgroundColor: Colors.blue, // background color set to blue, this only affects the top bar of the app.
          elevation: 0, // elevation set to zero, top of the page. 
        ),
        backgroundColor: Colors.blue, // this is the main background color set to blue.
        body: Stack(children: [ //initializes the body of the page. defines whats inside the children.
          Container( //container widget.
                    padding: const EdgeInsets.only(left: 35, top: 80), // allows the 'Create New Account' to be pressed.
                    child: const Text( "Create New Account", // string to be displayed.
                                        style: TextStyle(color: Colors.white, fontSize: 33), //the characteristics of the string "Create New Account".
                                     ),
          ),
          SingleChildScrollView( // allows the user to scroll down if the information can't fit in the background.
            child: Container(  // child widget for the scroll views.
              padding: EdgeInsets.only( right: 35, left: 35, top: MediaQuery.of(context).size.height * 0.27), // centers the upcoming text boxes to be centered.
              child: Column(children: [  // child widget
                TextField( // creates textfield widget. This affects the text box only when the user chooses this box.
                  decoration: InputDecoration( focusedBorder: OutlineInputBorder( // creates an outline around the text boxes.
                                               borderRadius: BorderRadius.circular(10), // the size of the border around the input box.
                                               borderSide: const BorderSide(color: Colors.black), // sets the color of the border when user chooses this box. Currently set to black.
                    ),
                    enabledBorder: OutlineInputBorder( // this next section affects the border of the text box when the box is not chosen.
                      borderRadius: BorderRadius.circular(10), //creates outline around the text box and the size of the border.
                      borderSide: const BorderSide(color: Colors.white), // color when the box is idle.
                    ),
                    hintText: 'Name', //hint text disappears when user inputs information.
                    hintStyle: const TextStyle(color: Colors.white), //color of the hint text 'Name'.
                  ),
                ),
                
                //this section imitates the behavior above.  
                const SizedBox( // creates the size of the input box.
                  height: 30, // the height of the input box.
                ),
                TextField( // text field widget. allows UI customization of the box.
                  //when the box is chosen
                  decoration: InputDecoration( // input decoration means when the user chooses this box.
                    focusedBorder: OutlineInputBorder( // when the border is chosen.
                      borderRadius: BorderRadius.circular(10), // border size around the text box.
                      borderSide: const BorderSide(color: Colors.black), //border color is black when the user picks the box.
                    ),
                    
                    enabledBorder: OutlineInputBorder( //when the border is idle.
                      borderRadius: BorderRadius.circular(10), // border size around the text box
                      borderSide: const BorderSide(color: Colors.white), //border color is white when the box is idle.
                    ),
                    
                    hintText: 'Email', // 'Email' is displayed when the user has not filled in the box.
                    hintStyle: const TextStyle(color: Colors.white), // 'Email' hint is displayed in white.
                  ),
                ),
                
                // Same as above but for 'Password'
                const SizedBox(height: 30), // creates the size of the input box.
                
                TextField( // TextField widget.
                  obscureText: true, // this is unique for password section as it allows the system to obsurce the users input.
                  
                  //when the user is filling out the box.
                  decoration: InputDecoration(  // input decoration means when the user chooses this box.
                    focusedBorder: OutlineInputBorder( // when the border is chosen.
                      borderRadius: BorderRadius.circular(10), // border size around the text box.
                      borderSide: const BorderSide(color: Colors.black), //border color is black when the user picks the box.
                    ),
                    
                    //when the box is idle.
                    enabledBorder: OutlineInputBorder( // when the text box is idle.
                      borderRadius: BorderRadius.circular(10), // border size around the text box.
                      borderSide: const BorderSide(color: Colors.white), // border color when the box is idle.
                    ),
                    hintText: 'Password', // displays string 'Password' when the box is idle. string disappears when user fills text.
                    hintStyle: const TextStyle(color: Colors.white), // color to display 'Password'.
                  ),
                ),
                
                
                const SizedBox( // create box widget.
                  height: 40, // set widget size to 40.
                ),
                
                Row( // Row widget sets structure for a series of inputs.( next button, sign in string)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // spaces the inputs evenly on the screen.
                    children: [ // the children defined in the 'Row' widget.
                      const Text( // text widget
                        'Sign In', // displays 'Sign In' in the display.
                        style: TextStyle( // widget allows customization.
                          color: Colors.white, // 'Sign In' set to white.
                          fontSize: 27, // font size for 'Sign In'
                          fontWeight: FontWeight.w700, //changes how bold the string is displayed.
                        ),
                      ),
                      
                      CircleAvatar( radius: 30, //creates widget circle and sets the radius (size) to 30.
                                    backgroundColor: const Color(0xff4c505b), // sets the background color of the circle widget.
                        child: IconButton( color: Colors.white, //the color of icon inside the button. currently set to white.
                                           onPressed: () {}, // what actions are taken the button is pressed.
                                           icon: const Icon(Icons.arrow_forward), // the icon nested inside the circle button, currently shown as an arrow.
                                          ),
                                   ),
                    ]),
                
                const SizedBox( //const value of the text box.
                  height: 40, //the size of the box that lets the user type in.
                ),
                
                Row( // row widget
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, //divides the space between the children evenly.
                    children: [ // sets the children in the row.
                      TextButton( //enables a text button feature to be shown on the app.
                        onPressed: () { // on press funtion.
                          Navigator.pushNamed(context, 'login_page'); //when log in page is pressed, the app redirects to login page.
                        },
                        child: const Text ( 'Login', //displays Login string
                          style: TextStyle ( decoration: TextDecoration.underline, //how the string is displayed 'Login' 
                                            fontSize: 18, //font size of the string 'Login'
                                            color: Colors.white, //color of the string 'Login'
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