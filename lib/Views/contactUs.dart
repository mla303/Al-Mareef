import 'package:al_mareef/Widgets/Lists.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';





class contactUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _contactUsState();
}

class _contactUsState extends State<contactUs> {

  @override
  Widget build(BuildContext context) {







    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      appBar: customAppBar("Contact Us"),

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
                    Image(image: AssetImage("assets/images/logo-full.png"),
                    height: height/10,),

                    SizedBox(height: 10,),

                    Text(
                      "For Any Inquiries, Please Contact Us",
                      style: CustomTextStyle.listtitle(context),
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
                    spacing: 8,
                    children: [

                      SizedBox(height: 10,),
                      //location
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: basicColor,size: 20,),
                            SizedBox(width: 6,),
                            Text.rich(
                              TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: "Location",
                                  style:
                                  CustomTextStyle.listtitle(context),
                                ),
                                TextSpan(
                                  text: "\nAl- Maarif University College",
                                  style:
                                  CustomTextStyle.mgradeText(context),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      //email
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.email, color: basicColor,size: 20,),
                            SizedBox(width: 6,),
                            Text.rich(
                              TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: "Email",
                                  style:
                                  CustomTextStyle.listtitle(context),
                                ),
                                TextSpan(
                                  text: "\ninfo@uoa.edu.iq",
                                  style:
                                  CustomTextStyle.mgradeText(context),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),



                      //phone
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.phone, color: basicColor,size: 20,),
                            SizedBox(width: 6,),
                            Text.rich(
                              TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: "Phone",
                                  style:
                                  CustomTextStyle.listtitle(context),
                                ),
                                TextSpan(
                                  text: "\n0773554477",
                                  style:
                                  CustomTextStyle.mgradeText(context),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),




                      //web
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.language, color: basicColor,size: 20,),
                            SizedBox(width: 6,),
                            Text.rich(
                              TextSpan(children: <InlineSpan>[
                                TextSpan(
                                  text: "Web",
                                  style:
                                  CustomTextStyle.listtitle(context),
                                ),
                                TextSpan(
                                  text: "\nwww.uoa.edu.iq",
                                  style:
                                  CustomTextStyle.mgradeText(context),
                                ),
                              ]),
                            ),
                          ],
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