import 'package:al_mareef/Views/calendar.dart';
import 'package:al_mareef/Views/myGrades.dart';
import 'package:al_mareef/Views/myPayment.dart';
import 'package:al_mareef/Views/studentPage.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'assignments.dart';
import 'contactUs.dart';
import 'languageSelector.dart';
import 'lectureSchedule.dart';
import 'notification.dart';





class studentMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _studentMenuState();
}

class _studentMenuState extends State<studentMenu> {

  @override
  Widget build(BuildContext context) {

    String text1 = "Personal Info";
    String personName = "Muhammad Luqman Asif";
    String cmsNo = "16745";






    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return SafeArea(
      child: Scaffold(
        appBar: customAppBar("Menu"),

        body: Center(
          child: Container(
            width: width/1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20,),
                Center(
                  child: Column(

                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/student.png"),
                        // minRadius: 20,
                        radius: 45,
                        // borderRadius: BorderRadius.circular(20.0),
                        // child: Image.asset(
                        //   "Images/profile.jpg",
                        //   height: 92,
                        //   width: 92,
                        //   fit: BoxFit.cover,
                        // )
                      ),

                      Text(
                        personName,
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            color: basicColor,
                            fontSize: 18
                        ),

                        // overflow: TextOverflow.ellipsis,
                        // maxLines: 5,

                      ),

                      Text(
                        cmsNo,
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            height: 1.3,
                            color: Color(0xffD0CDC8),
                            fontSize: 12
                        ),

                        // overflow: TextOverflow.ellipsis,
                        // maxLines: 5,

                      ),

                    ],
                  ),
                ),


                SizedBox(height: 10,),
                // Divider(),


                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: -1,
                      children: [




                        //student page
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => studentPage()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Student Page",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),


                        //notification
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => notifications()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Notification",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),



                        //lecture schedule
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => lectureSchedule()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Lectures Schedule",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),



                        //calender
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calenderScreen()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Academic Calendar",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),

                        //assignments
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => assignmentsScreen()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Assignments",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),


                        //grades
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => myGrades()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("My Grades",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),




                        //payments
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => myPayments()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Payments",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),




                        //contact us
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                              MaterialPageRoute(builder: (context) => contactUs()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),



                        //setting
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LanguageSelector()),
                            );
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Settings",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),



                        //logout
                        GestureDetector(
                          onTap: (){
                            // Navigator.push(
                            //     context,
                            //     PageTransition(
                            //       curve: Curves.bounceOut,
                            //       type: PageTransitionType.rightToLeftWithFade,
                            //       duration: Duration(milliseconds: 1000),
                            //       alignment: Alignment.topCenter,
                            //       child: bookmark(),
                            //     ));
                          },
                          child: Container(
                            height: height/16,
                            width: width,
                            decoration: new BoxDecoration(
                              color: Colors.grey[100],
                                borderRadius: new BorderRadius.circular(0),
                                border: Border.all(color: Colors.grey.withOpacity(0.3))
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                              child: Text("Logout",style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                          ),
                        ),


                        SizedBox(height: 10,),



                      ],
                    ),
                  ),
                )






              ],
            ),
          ),
        ),
      ),
    );
  }



}