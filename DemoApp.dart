// ignore_for_file: unused_local_variable

/*
* NAME OF CODE ARTIFACT - DemoApp.dart
* BRIEF DESCRIPTION - this file creates the home page for the application  
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - November 4th, 2022
* DATE REVISED - November 4th 
                 Jowaki Merani - created the homepage with all required widgets and buttons
                 Nov 20th 
                 Jowaki Merani - able to redirect to journal page and store journal 
* KNOWN FAULT - None
*/

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/journal_page.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;


// ignore: use_key_in_widget_constructors
class DemoApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {//class for the home page

  late DateTime selectedDay = DateTime.now();//getting the current data as the selected date 
  late List <CleanCalendarEvent> selectedEvent;//to help select an event in the future 

  late Map<DateTime,List<CleanCalendarEvent>> events = {};//create events 
  //   DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day)://events 
  //       [     
  //         // CleanCalendarEvent('ENTRY',
  //         // startTime: DateTime( DateTime.now().year,DateTime.now().month,DateTime.now().day),
  //         // endTime:  DateTime( DateTime.now().year,DateTime.now().month,DateTime.now().day),
  //         //   // description: 'ENTRY',
  //         //   // color: Colors.blue[700]),
  //         // ),
  //       ],

  //   DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2)://events 
  //   [ 
      
      
      
  //   ],
  // };

  // Future<void> _chkJournal() async {
  //   var db = await mongo.Db.create(MONGO_URL2_journal);//wait to locate url 
  //   await db.open();//opens the connection to url - reuquired db 
  //   inspect(db);//ensures url exists
  //   var status = db.serverStatus();//provides the status of url 

  //   // ignore: avoid_print 
  //   // print(status);//debug print to ensure sucessful status 
  //   var collection = db.collection(COLLECTION_NAME_journal);//accesses collection name 
  //   var temp = collection.find(mongo.where.ne('journal', null));

   
  //   }
  

  

  void _handleData(date){//maps the selected date 
    setState(() {
      selectedDay = date;//dynamically updating whne a date is selected 
      selectedEvent = events[selectedDay] ?? [];//assists above
    });
    // print(selectedDay);//desplays selected date to debug 
  }
  @override
  void initState() {//refreshing the selected date on a new click 
    selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {//creating the main page 
    return Scaffold(//builds the base 
      backgroundColor:Color.fromARGB(255, 172, 212, 245), //set background color 
      appBar: AppBar(//creates the app bar at the top 
        title: Text('MINDLY'),//test in the app bar 
        centerTitle: true,//locating of the text
         
      ),
      body://creating the body 
       Stack(children: [//creating a stack of the children 
      SizedBox(      //sizebox for teh calander    
        height: 10000,//height of the calander widget 
          width:  500,    //width of the calander widget
        child: Container(//contaner of the calander widget
          height: 700,//height of the calander widget
          width:  500,//height of the calander widget
          child: Calendar(//calander widgent started 
            
            startOnMonday: true,//start date to be Monday 
            selectedColor: Colors.black,//color of text is black
            todayColor: Colors.red,//todays selected color is red 
            eventColor: Colors.green,//adding an event will give a green 
            eventDoneColor: Colors.amber,//completed event turns amber 
            bottomBarColor: Colors.deepOrange,//bottom bar is orange 
            onRangeSelected: (range) {//bottom bar is populated by teh selected date 
              // print('selected Day ${range.from},${range.to}');//print selected date 
            },
            onDateSelected: (date) async {
                     events = await Navigator.push(//ass event to date 
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyJournal(),//redirect to journal pg 
                    ));
                    // Navigator.pushNamed(context, 'journal_page');

                    return _handleData(date);//return the selected date
                  },
            events: events,//revording teh events 
            isExpanded: true,//possibility to expand 
            dayOfWeekStyle: TextStyle(//formatting the text 
              fontSize: 15,//text size 
              color: Colors.black,//text color 
              fontWeight: FontWeight.w100,//opacity 
            ),
            bottomBarTextStyle: TextStyle(//bottom bar formating 
              color: Colors.white,//color of bottom bar 
            ),
            hideBottomBar: false,//hide the bar 
            hideArrows: false,//hide the arrows 
            weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],//defining the days of teh week 
          ),
          
        ),
      

        
      ),
        Positioned(//position of button 
              
              bottom:10,//positioning the button from the bottom  
              left: 2,//positioning the button from the left 
              child:
                  IconButton(//cretaing a button with an icon 
                    // mainAxisAlignment: MainAxisAlignment.center,
                    icon: Image.asset('assets/music.png'),//image to be used 
                    iconSize: 50,//buttom size
                    onPressed: () {},//functionality on pressed 
      )
                  ),
      Positioned(//position of button 
              
              bottom:10,//positioning the button from the bottom  
              left:52,//positioning the button from the left
              child:
                  IconButton(//cretaing a button with an icon 
                    // mainAxisAlignment: MainAxisAlignment.center,
                    icon: Image.asset('assets/journal.png'),//image to be used 
                    iconSize: 50,//buttom size
                    onPressed: () {Navigator.pushNamed(context, 'journal_page');},//functionality on pressed 
      )
                  ),
      Positioned(//position of button 
  
          bottom:10,//positioning the button from the bottom  
          left:102,//positioning the button from the left
          child:
              IconButton(//cretaing a button with an icon 
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/game.png'),//image to be used 
                iconSize: 50,//buttom size
                onPressed: () {Navigator.pushNamed(context, 'game_page');},//functionality on pressed 
        )
              ),
        Positioned(//position of button 
  
          bottom:10,//positioning the button from the bottom  
          left:152,//positioning the button from the left
          child:
              IconButton(//cretaing a button with an icon 
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/home.png'),//image to be used 
                iconSize: 50,//buttom size
                onPressed: () {Navigator.pushNamed(context, 'home_page');},//functionality on pressed 
        )
              ),
        Positioned(//position of button 
  
          bottom:10,//positioning the button from the bottom  
          left:202,//positioning the button from the left
          child:
              IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/info.png'),//image to be used 
                iconSize: 50,//buttom size
                onPressed: () {Navigator.pushNamed(context, 'resource_page');},//functionality on pressed 
        )
              ),
              Positioned(//position of button 
  
          bottom:10,//positioning the button from the bottom  
          left:252,//positioning the button from the left
          child:
              IconButton(
                // mainAxisAlignment: MainAxisAlignment.center,
                icon: Image.asset('assets/profile.png'),//image to be used 
                iconSize: 50,//buttom size
                onPressed: () {Navigator.pushNamed(context, 'profile_page');},//functionality on pressed 
        )
              )

      
      ],
      )
    
    );
  }
}