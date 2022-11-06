/*
* NAME OF CODE ARTIFACT - mongodb.dart
* BRIEF DESCRIPTION - creates the connection to the database  
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - October 23rd, 2022
* DATE REVISED - October 23rd 
                 Jowaki Merani & Parveen Kaur - opens the file, adds the input values , closes the file   
* KNOWN FAULT - None
*/

import 'dart:developer';
import 'package:flutter_application_1/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';
class MongoDbDatabase {
   static get email => null;  static get password => null; static get username => null;
 
//create class to connect db 
  static connect() async {//conect function used to connect to db 
    var db = await Db.create(MONGO_URL);//wait to locate url 
    await db.open();//opens the connection to url - reuquired db 
    inspect(db);//ensures url exists
    var status = db.serverStatus();//provides the status of url 

    // ignore: avoid_print 
    print(status);//debug print to ensure sucessful status 
    var collection = db.collection(COLLECTION_NAME);//accesses collection name 
    await collection.insert({"name":username, "password":password, "email":email});//adds input to db 

    // ignore: avoid_print
    print(await collection.find().toList());//prinst the data added to the db 

  }
}