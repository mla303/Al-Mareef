import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';


class uploadStatistics extends StatefulWidget {
  @override
  State<StatefulWidget>  createState() => new _uploadStatisticsState();
}

class _uploadStatisticsState extends State<uploadStatistics> {

  var options = ['Urdu', 'English', 'Arabic','Turkish',];
  var _Selectedoptions = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Statistics"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Select Language",style: TextStyle(color: Colors.grey,fontSize: 14),),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.4,
                    height: MediaQuery.of(context).size.height/16,
                    decoration: BoxDecoration(

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],

                      // border: Border.all(
                      //   color: basicColor,
                      // ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left:12.0,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Upload File",style: CustomTextStyle.display2(context),),
                          Icon(Icons.upload_rounded,color: basicColor,size: 20,),

                        ],
                      ),
                    )
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}