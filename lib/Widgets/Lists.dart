import 'package:flutter/cupertino.dart';

import 'colors.dart';

class submittedDetail{
  String Title;
  String descrp;
  String submittedDate;
  Color color;

  submittedDetail({
    this.Title,
    this.descrp,
    this.color,
    this.submittedDate
  });

}


List SubmittedList = [

  submittedDetail(
    Title:"Finance",
    descrp:"about to math",
    color: submittedColor,
    submittedDate: "30/04/2021"
  ),

  submittedDetail(
    Title:"Maths",
    descrp:"about to math",
    color: submittedColor,
    submittedDate: "13/02/2021"
  )

];




class unsubmittedDetail{
  String Title;
  String descrp;
  String dueDate;
  Color color;

  unsubmittedDetail({
    this.Title,
    this.descrp,
    this.color,
    this.dueDate
  });

}


List UnSubmittedList = [

  unsubmittedDetail(
    Title:"Arabic",
    descrp:"about to arabic",
    color: unsubmittedColor,
    dueDate: "30/03/2021"
  ),

  unsubmittedDetail(
    Title:"English",
    descrp:"about to english",
    color: unsubmittedColor,
      dueDate: "13/05/2021"
  )

];






class mygrades{

  String subject;
  String hours;
  String finalGrd;
  String letterGrd;
  String status;


  mygrades({
    this.subject,
    this.hours,
    this.finalGrd,
    this.letterGrd,
    this.status,
  });

}




List firstSemester = [

  mygrades(
      subject:"Arabic",
      hours:"4",
      finalGrd: "80",
      letterGrd: "Very Good",
    status: "Pass",
  ),


  mygrades(
      subject:"English",
      hours:"4",
      finalGrd: "30",
      letterGrd: "Bad",
    status: "Fail",
  ),
  mygrades(
      subject:"Electronic",
      hours:"3",
      finalGrd: "70",
      letterGrd: "Good",
    status: "Pass",
  ),
  mygrades(
      subject:"Arabic",
      hours:"2",
      finalGrd: "60",
      letterGrd: "Good",
    status: "Pass",
  ),



];


List SecondSemester = [

  mygrades(
      subject:"OOP",
      hours:"4",
      finalGrd: "70",
      letterGrd: "Good",
    status: "Pass",
  ),


  mygrades(
      subject:"Calculus",
      hours:"4",
      finalGrd: "30",
      letterGrd: "Bad",
    status: "Fail",
  ),
  mygrades(
      subject:"Cyber Security",
      hours:"3",
      finalGrd: "70",
      letterGrd: "Good",
    status: "Pass",
  ),
  mygrades(
      subject:"DLD",
      hours:"2",
      finalGrd: "60",
      letterGrd: "Good",
    status: "Pass",
  ),
];




List Notifications = [

  NotificationDetail(
      Title:"English Assignment",
      descrp:"You Have Unsubmitted Assignments",
      time: "12:00 AM"
  ),

  NotificationDetail(
      Title:"Timeout for Class",
      descrp:"Please check your calendar",
      time: "11:34 PM"
  ),

  NotificationDetail(
      Title:"Missed Class",
      descrp:"You Missed Your Class",
      time: "10:00 AM"
  ),

];

class NotificationDetail{
  String Title;
  String descrp;
  String time;

  NotificationDetail({
    this.Title,
    this.descrp,
    this.time
  });

}








class lectureScedule{

  String subject;
  String teacher;
  String clasNo;
  String Classtime;
  String hallNo;


  lectureScedule({
    this.subject,
    this.teacher,
    this.clasNo,
    this.Classtime,
    this.hallNo,
  });

}




List lectureSceduleList = [

  lectureScedule(
    subject:"Arabic",
    teacher:"Dr.Hanif",
    clasNo: "2",
    Classtime: "10:00 - 11:00",
    hallNo: "Hall 3",
  ),


  lectureScedule(
    subject:"English",
    teacher:"Dr.Asif",
    clasNo: "4",
    Classtime: "11:00 - 12:00",
    hallNo: "Hall 2",
  ),
  lectureScedule(
    subject:"Electronic",
    teacher:"Noman Malik",
    clasNo: "1",
    Classtime: "12:00 - 01:00",
    hallNo: "Hall 2",
  ),
  lectureScedule(
    subject:"Arabic",
    teacher:"Burhan Sohail",
    clasNo: "6",
    Classtime: "02:00 - 03:00",
    hallNo: "Hall 1",
  ),



];





class gridCategory {
String name;
String icon;


gridCategory({this.name, this.icon});
}


List gridList = [

  gridCategory(
      name: "Notifications",
      icon: "assets/icons/notification_icon.png"),

  gridCategory(
      name: "Lectures Schedule",
      icon: "assets/icons/schedule.png"),

  gridCategory(
      name: "Assignments",
      icon: "assets/icons/assignment.png"),

  gridCategory(
      name: "My Grades",
      icon: "assets/icons/grades.png"),

  gridCategory(
      name: "Payments",
      icon: "assets/icons/payment.png"),

  gridCategory(
      name: "Academic Calendar",
      icon: "assets/icons/calendar.png"),

];
