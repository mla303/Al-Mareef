import 'package:al_mareef/Widgets/Lists.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';





class lectureSchedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _lectureSchedulState();
}

class _lectureSchedulState extends State<lectureSchedule> {

  @override
  Widget build(BuildContext context) {

    String text1 = "Personal Info";
    String personName = "Muhammad Luqman Asif";
    String rollNo = "16745";






    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: customAppBar("Lecture Schedule"),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
            )
          ),

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: width/1.1,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/icons/student.png"),
                          radius: 32,
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


                      Container(
                        width: width/1.1,
                        height: height/19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),),
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
                                    Text("Teacher",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Text("Class",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Text("Time",style: CustomTextStyle.mgradeTextHeading(context),),
                                    Container(child: Padding(
                                      padding: const EdgeInsets.only(left:10.0),
                                      child: Text("Hall",style: CustomTextStyle.mgradeTextHeading(context),),
                                    )),
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
                          borderRadius: BorderRadius.only(
                           bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          color: whiteColor,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.separated(
                              itemCount: lectureSceduleList.length,
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


                                          Text(lectureSceduleList[index].subject,style: CustomTextStyle.mgradeText(context),),
                                          Container(child: Padding(
                                            padding: const EdgeInsets.only(left:4.0),
                                            child: Text(lectureSceduleList[index].teacher,style: CustomTextStyle.mgradeText(context),),
                                          )),
                                          Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: Text(lectureSceduleList[index].clasNo,style: CustomTextStyle.mgradeText(context),),
                                          ),
                                          Text(lectureSceduleList[index].Classtime,style: CustomTextStyle.mgradeText(context),),
                                          Container(child: Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: Text(lectureSceduleList[index].hallNo,style: CustomTextStyle.mgradeText(context),),
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