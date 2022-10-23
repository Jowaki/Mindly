import 'package:flutter/material.dart';

/*This is the journaling page the user fills to record their entries.
# NAME OF CODE ARTIFACT - Journal_page.dart 
# BRIEF DESCRIPTION - This is the journal page entry for the Mindly app.
# PROGRAMMERS NAME - Eduardo Sanchez
# DATE CODE CREATED - October 19, 2022
# DATE REVISED - October 20 2022
#                   Eduardo Sanchez - added save button, no functionality at this point.
#       
#                   Jowaki Merani   - changed color of the text box to white instead of the same as the background.
#                                   - increased the size of the text box.
#
# 
*/

class MyJournal extends StatefulWidget {// class for the journal page.

  const MyJournal({Key? key}) : super(key: key); //constructor for the journal page.

  @override
  _MyJournalState createState() => _MyJournalState(); //creates journal page.
}

class _MyJournalState extends State<MyJournal> { //defines the journal page.
  @override
  Widget build(BuildContext context) { // builds the widget.
const appTitle = 'Mindly'; // this sets the title of the page. set to 'Mindly' for all pages as of 10/03.
    return MaterialApp( // what the page will contain. returns the content below.
      debugShowCheckedModeBanner: false, // disables debug banner when troubleshooting.
      title: appTitle, // title is set to 'Mindly'.
      home: Scaffold( // home page is set.
        appBar: AppBar( //app bar widget.
          title: const Text(appTitle), // title of the app bar.
        ),
        backgroundColor: Colors.blue, // background color of the main page
        body: Center( // the body of the page, this contains the text field.
          child: Column(mainAxisAlignment: MainAxisAlignment.start, // centers the box and places it on top section. might change to center.
        children: [ // contains the children for text box.
          TextFormField(minLines: 1,maxLines: 5, keyboardType: TextInputType.multiline, // allows how many lines of text are shown before scroll function is set
          textAlign: TextAlign.start, // where to begin the text once the user inputs their entry.
          decoration: InputDecoration(hintText: 'Journal Entry here', // ghost text to show where to input entry, disapears once input is recieved.
          fillColor: Colors.grey.shade100, // color of the text box background. 
          filled: true, // fills the text box background to the above color.
          contentPadding: EdgeInsets.symmetric(vertical: 100, horizontal: 50), // sets the size of the journal entry text box.
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)) // outlines the text box.
            )
            )
          ),
        Container( // container widget for the save button.
        height: 50, //height of the save button.
        width: 150, //width of the save button.
          child: ElevatedButton(onPressed: (){}, child: Text('Save'),),)], // The style of the button and the text in the button.
        )
        ),
),
    );
  }
}
