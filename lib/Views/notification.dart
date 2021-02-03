import 'package:al_mareef/Widgets/Lists.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';





class notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _notificationsState();
}

class _notificationsState extends State<notifications> {

  @override
  Widget build(BuildContext context) {







    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: customAppBar1("Notifications"),

      body: Center(
        child: Container(
          width: width/1.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20,),
              Center(
                child: Column(

                  children: [
                    Image(image: AssetImage("assets/icons/notifications.png"),
                      height: height/10,),

                    SizedBox(height: 10,),


                  ],
                ),
              ),



              Divider(),
              SizedBox(height: 10,),

              Expanded(
                flex: 2,
                child: ListView.separated(
                    itemCount: Notifications.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),

                        //main Card started
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [

                            // container with title and description
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Notifications[index].Title,style: CustomTextStyle.listtitle(context),),

                                Text(Notifications[index].descrp,style: CustomTextStyle.display2(context),),
                              ],
                            ),


                            Row(
                              children: [
                                Icon(Icons.access_time,size: 14,color: blackColor.withOpacity(0.4),),
                                SizedBox(width: 4,),
                                Text(Notifications[index].time,style: CustomTextStyle.mgradeText(context),),

                              ],
                            )





                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20,
                      );
                    }),
              ),








            ],
          ),
        ),
      ),
    );
  }



}