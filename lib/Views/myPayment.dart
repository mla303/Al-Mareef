import 'package:al_mareef/Widgets/Lists.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pie_chart/pie_chart.dart';





class myPayments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _myPaymentsState();
}

class _myPaymentsState extends State<myPayments> {

  @override
  Widget build(BuildContext context) {

    String text1 = "Personal Info";
    String personName = "Muhammad Luqman Asif";
    String rollNo = "16745";


    Map<String, double> dataMap = {
      "Installment": 3600,
      "Paid amount": 3330,
      "Due Amount": 1000,


    };





    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: customAppBar("My Payments"),

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


              SizedBox(height: 10,),
              Divider(),


              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Wrap(
                    direction: Axis.vertical,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: -2,
                    children: [

                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 12,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: installmentColor,
                                ),
                              ),
                              SizedBox(width: 4,),
                              Text("Installment",style: CustomTextStyle.mgradeText(context)),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: paidAmountColor,
                                ),
                              ),
                              SizedBox(width: 4,),
                              Text("Paid Amount",style: CustomTextStyle.mgradeText(context)),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dueAmountColor,
                                ),
                              ),
                              SizedBox(width: 4,),
                              Text("Due Amount",style: CustomTextStyle.mgradeText(context)),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 30,),
                      PieChart(
                        dataMap: dataMap,

                        animationDuration: Duration(milliseconds: 1200),
                        chartLegendSpacing: 32,
                        chartRadius: MediaQuery.of(context).size.width / 3.2,
                        colorList: [
                         installmentColor,
                         paidAmountColor,
                         dueAmountColor,
                        ],
                        // colorList: colorList,
                        initialAngleInDegree: 0,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 16,
                        // centerText: "HYBRID",
                        legendOptions: LegendOptions(
                          showLegendsInRow: false,
                          legendPosition: LegendPosition.right,
                          showLegends: false,
                          // legendShape: _BoxShape.circle,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: true,
                          showChartValuesInPercentage: false,
                          showChartValuesOutside: false,
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