import 'package:al_mareef/Widgets/Lists.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';





class myGrades extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _myGradesState();
}

class _myGradesState extends State<myGrades> {

  @override
  Widget build(BuildContext context) {

    String text1 = "Personal Info";
    String personName = "Muhammad Luqman Asif";
    String rollNo = "16745";






    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: customAppBar("My Grades"),

      body: Center(
        child: Container(
          width: width/1.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20,),
              Center(
                child: Row(

                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/student.png"),
                      radius: 40,
                    ),
SizedBox(width: 10,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personName,
                          style: CustomTextStyle.listtitle(context),
                        ),

                        Text(
                          rollNo,
                          style: CustomTextStyle.display2(context),
                        ),
                      ],
                    ),

                  ],
                ),
              ),


              SizedBox(height: 10,),
              Divider(),


              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: -2,
                    children: [
                      Text("1st Semester",style: CustomTextStyle.listtitle(context),),
                      SizedBox(height: 10,),

                      Container(
                        width: width/1.1,
                        height: height/19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: basicColor,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8),
                          child: Center(
                            child: Table(
                              children: [
                                TableRow(
                                  children: [
                                    Text("Subject",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Text("Hours",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Text("Final Grades",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Text("Letter Grades",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Text("Status (Fail/Pass)",style: CustomTextStyle.mgradeTextHeading(context),),
                                  ]
                                )

                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: width/1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: whiteColor,
                        ),

                        child: Card(
                          child:  ListView.separated(
                              itemCount: firstSemester.length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                  //main Card started
                                  child: Table(
                                    children: [
                                      TableRow(

                                        children: [


                                          Text(firstSemester[index].subject,style: CustomTextStyle.mgradeText(context),),
                                          Container(child: Padding(
                                            padding: const EdgeInsets.only(left:12.0),
                                            child: Text(firstSemester[index].hours,style: CustomTextStyle.mgradeText(context),),
                                          )),
                                          Container(child: Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: Text(firstSemester[index].finalGrd,style: CustomTextStyle.mgradeText(context),),
                                          )),
                                          Text(firstSemester[index].letterGrd,style: CustomTextStyle.mgradeText(context),),
                                          Container(child: Padding(
                                            padding: const EdgeInsets.only(left:12.0),
                                            child: Text(firstSemester[index].status,style: CustomTextStyle.mgradeText(context),),
                                          )),

                                        ]
                                      )

                                      //

                                  ]
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return SizedBox(
                                  height: 10,
                                );
                              }),
                        ),
                      ),


                      SizedBox(height: 26,),


                      Text("2nd Semester",style: CustomTextStyle.listtitle(context),),
                      SizedBox(height: 10,),

                      Container(
                        width: width/1.1,
                        height: height/19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: basicColor,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8),
                          child: Center(
                            child: Table(
                              children: [
                                TableRow(
                                    children: [
                                      Text("Subject",style: CustomTextStyle.mgradeTextHeading(context),),
                                      Text("Hours",style: CustomTextStyle.mgradeTextHeading(context),),
                                      Text("Final Grades",style: CustomTextStyle.mgradeTextHeading(context),),
                                      Text("Letter Grades",style: CustomTextStyle.mgradeTextHeading(context),),
                                      Text("Status (Fail/Pass)",style: CustomTextStyle.mgradeTextHeading(context),),
                                    ]
                                )

                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: width/1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: whiteColor,
                        ),

                        child: Card(
                          child:  ListView.separated(
                              itemCount: SecondSemester.length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                  //main Card started
                                  child: Table(
                                      children: [
                                        TableRow(

                                            children: [


                                              Text(SecondSemester[index].subject,style: CustomTextStyle.mgradeText(context),),
                                              Container(child: Padding(
                                                padding: const EdgeInsets.only(left:12.0),
                                                child: Text(SecondSemester[index].hours,style: CustomTextStyle.mgradeText(context),),
                                              )),
                                              Container(child: Padding(
                                                padding: const EdgeInsets.only(left:10.0),
                                                child: Text(SecondSemester[index].finalGrd,style: CustomTextStyle.mgradeText(context),),
                                              )),
                                              Text(SecondSemester[index].letterGrd,style: CustomTextStyle.mgradeText(context),),
                                              Container(child: Padding(
                                                padding: const EdgeInsets.only(left:12.0),
                                                child: Text(SecondSemester[index].status,style: CustomTextStyle.mgradeText(context),),
                                              )),

                                            ]
                                        )

                                        //

                                      ]
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return SizedBox(
                                  height: 10,
                                );
                              }),
                        ),
                      ),

                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),








            ],
          ),
        ),
      ),
    );
  }



}