import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';

import 'Lists.dart';
import 'colors.dart';


class AllAssignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thickness: 4,
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            SubmittedWidget(),
            UnSubmittedWidget(),
          ],
        ),
      ),
    );
  }
}




class SubmittedWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scrollbar(
      thickness: 2,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8),
        //list of offers
        child: ListView.separated(
            itemCount: SubmittedList.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),

                //main Card started
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.3))
                  ),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      // container with title and description
                   Row(
                     children: [
                       Container(
                         width: width/30,
                         height: height/14,
                         color: SubmittedList[index].color,
                       ),

                          SizedBox(width: 10,),


                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(SubmittedList[index].Title,style: CustomTextStyle.listtitle(context),),

                              Text(SubmittedList[index].descrp,style: CustomTextStyle.display2(context),),
                            ],
                          ),
                     ],
                   ),


                      //due date and icon of upload download
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.date_range,size: 14,color: blackColor,),
                              SizedBox(width: 4,),
                              Text("Submitted at ",style: CustomTextStyle.display2(context),),
                              Text(SubmittedList[index].submittedDate,style: CustomTextStyle.display2(context),),

                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.upload_rounded,size: 24,color: Colors.green,),
                              Icon(Icons.download_rounded,size: 24,color: Colors.blueAccent,),
                            ],
                          ),
                        ],
                      )





                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            }),
      ),
    );
  }
}




class UnSubmittedWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scrollbar(
      thickness: 2,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8),
        //list of offers
        child: ListView.separated(
            itemCount: UnSubmittedList.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),

                //main Card started
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.3))
                  ),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      // container with title and description
                   Row(
                     children: [
                       Container(
                         width: width/30,
                         height: height/14,
                         color: UnSubmittedList[index].color,
                       ),

                          SizedBox(width: 10,),


                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(UnSubmittedList[index].Title,style: CustomTextStyle.listtitle(context),),

                              Text(UnSubmittedList[index].descrp,style: CustomTextStyle.display2(context),),
                            ],
                          ),
                     ],
                   ),


                      //due date and icon of upload download
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.date_range,size: 14,color: blackColor,),
                              SizedBox(width: 4,),
                              Text("Due Date ",style: CustomTextStyle.display2(context),),
                              Text(UnSubmittedList[index].dueDate,style: CustomTextStyle.display2(context),),

                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.upload_rounded,size: 24,color: Colors.green,),
                              Icon(Icons.download_rounded,size: 24,color: Colors.blueAccent,),
                            ],
                          ),
                        ],
                      )





                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            }),
      ),
    );
  }
}
