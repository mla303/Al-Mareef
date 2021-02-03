import 'package:al_mareef/Views/calendar.dart';
import 'package:al_mareef/Views/notification.dart';
import 'package:al_mareef/Widgets/Lists.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'assignments.dart';
import 'lectureSchedule.dart';
import 'myGrades.dart';
import 'myPayment.dart';





class studentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _studentPageState();
}

class _studentPageState extends State<studentPage> {



  @override
  Widget build(BuildContext context) {


    String personName = "Muhammad Luqman Asif";
    String rollNo = "16745";






    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: customAppBar("Student Page"),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/studentBackground.png"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.dstATop),
            )
          ),

          child: Column(
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

              SizedBox(height: 10,),
              Expanded(
                flex: 2,
                child: new GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: ( 3 /2.6),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(gridList.length, (index) {
                    return GestureDetector(
                      onTap: (){
                        if(index ==0 )
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => notifications()),
                            );
                          }
                        else if(index==1)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => lectureSchedule()),
                            );
                          }
                        else if(index==2)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => assignmentsScreen()),
                            );
                          }
                        else if(index==3)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => myGrades()),
                            );
                          }
                        else if(index==4)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => myPayments()),
                            );
                          }
                        else if(index==5)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calenderScreen()),
                            );
                          }
                      },


                      child: Column(
                      children: [
                        Image(image: AssetImage(gridList[index].icon),),
                        SizedBox(height: 6,),
                        Container(
                            width: width/2,
                            child: Text(gridList[index].name,style: CustomTextStyle.homepage(context),
                            textAlign: TextAlign.center,))

                      ],
                      ),
                    );
                  }).toList()

                ),
)

            ],
          ),
        ),
      ),
    );
  }



}