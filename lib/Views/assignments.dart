import 'package:al_mareef/Widgets/AssignmentWidgets.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';




enum Widgets {
  assignments,
  unsubmitted,
  submitted,
}


class assignmentsScreen extends StatefulWidget {
  @override
  State <StatefulWidget> createState() => new _assignmentsScreenState();
}

class _assignmentsScreenState extends State<assignmentsScreen> {

  Widgets selectedWidget = Widgets.assignments;

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return SafeArea(
      child: Scaffold(
        appBar: customAppBar("Assignments",),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: width/1.2,
                child: Wrap(
                  direction: Axis.horizontal,
                  // fit: StackFit.loose,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedWidget = Widgets.assignments;
                          });
                        },
                        child: new Container(
                          width: width/3.6,
                          height: height/18,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)
                              ),
                              border: Border.all(
                                  color: selectedWidget ==
                                      Widgets.assignments
                                      ? Colors.white
                                      : Color(0xffE0E0E0),
                                  width: 1),
                              shape: BoxShape.rectangle,
//                        color: Colors.green

                              color: selectedWidget ==
                                  Widgets.assignments
                                  ? basicColor
                                  : Colors.transparent
                          ),
                          padding: new EdgeInsets.fromLTRB(
                              10.0, 4.0, 10.0, 4.0),

                          child: Center(
                            child: Text("Assignments",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color:  selectedWidget == Widgets.assignments
                                    ? Colors.white
                                    : basicColor,
                                fontSize: 12
                            ),),
                          ),
                        )),


                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedWidget = Widgets.unsubmitted;
                          });
                        },
                        child: new Container(
//                      height: height/6,
                          width: width/3.6,
                          height: height/18,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                  color: selectedWidget ==
                                      Widgets.unsubmitted
                                      ? Colors.white
                                      : Color(0xffE0E0E0),
                                  width: 1),
                              shape: BoxShape.rectangle,
//                        color: Colors.green

                              color: selectedWidget ==
                                  Widgets.unsubmitted
                                  ? basicColor
                                  : Colors.transparent),
                          padding: new EdgeInsets.fromLTRB(
                              10.0, 4.0, 10.0, 4.0),

                          child: Center(
                            child: Text("Unsubmitted",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color:  selectedWidget == Widgets.unsubmitted
                                    ? Colors.white
                                    : basicColor,
                                fontSize: 12
                            ),),
                          ),
                        )),

                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedWidget = Widgets.submitted;
                          });
                        },
                        child: new Container(
                          width: width/3.6,
                          height: height/18,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              border: Border.all(
                                  color: selectedWidget ==
                                      Widgets.submitted
                                      ? Colors.white
                                      : Color(0xffE0E0E0),
                                  width: 1),
                              shape: BoxShape.rectangle,
//                        color: Colors.green

                              color: selectedWidget ==
                                  Widgets.submitted
                                  ? basicColor
                                  : Colors.transparent),
                          padding: new EdgeInsets.fromLTRB(
                              10.0, 4.0, 10.0, 4.0),

                          child: Center(
                            child: Text("Submitted",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color:  selectedWidget == Widgets.submitted
                                    ? Colors.white
                                    : basicColor,
                                fontSize: 12
                            ),),
                          ),
                        )),


                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(),
              Container(
                // height: height/2,
                child: getCustomContainor(),
              )






            ],
          ),
        ),
      ),
    );
  }


  Widget getCustomContainor() {
    switch (selectedWidget) {
      case Widgets.assignments:
        return approved();
      case Widgets.unsubmitted:
        return pending();
      case Widgets.submitted:
        return cancel();
    }
    return approved();
  }



  Widget approved() {
    return AllAssignments();
  }

  Widget pending() {
    return UnSubmittedWidget();
  }

  Widget cancel() {
    return SubmittedWidget();
  }

}