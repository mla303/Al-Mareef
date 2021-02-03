import 'package:al_mareef/Widgets/CustomButton.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenState();
}

class _ScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(color: const Color(0xff7c94b6),
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
            )
        ),

        child: Column(
          children: [
            SizedBox(height: 40,),

            Expanded(
              flex: 1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image:  AssetImage("assets/images/logo-half.png"),
                    height: height/5,
                  ),
                  Positioned(
                    bottom: 10,
                    right: 18,
                    child: Container(

                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.yellow)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Text("اللهم تقبل منا",style: CustomTextStyle.buttontext(context),),
                      ),
                    ),
                  ),


                ],
              ),
            ),

            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  CustomButton(
                    text: Text("Al Maarif University College",
                    style: CustomTextStyle.buttontext(context),),
                      onPressed: _launchURL,
                    focusColor: buttonColor,
                    disbaleColor: buttonColor.withOpacity(0.7),
                  ),

                  SizedBox(height: 6,),

                  CustomButton1(
                    text: Text("Sign In",
                    style: CustomTextStyle.buttontext(context),),
                      onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      },
                    focusColor: buttonColor.withOpacity(0.7),
                    disbaleColor: buttonColor.withOpacity(0.7),
                  ),


                  SizedBox(height: 6,),
                  CustomButton(
                    text: Text("Contact Us",
                    style: CustomTextStyle.buttontext(context),),
                      onPressed: (){
                        Navigator.pushNamed(context, "/contactus");
                      },
                    focusColor: buttonColor,
                    disbaleColor: buttonColor.withOpacity(0.7),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://uoa.edu.iq/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}