
import 'package:al_mareef/Widgets/CustomButton.dart';
import 'package:al_mareef/Widgets/CustomTextField.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';





class forgotPasswordScreen extends StatefulWidget {
  @override
  _forgetState createState() => new _forgetState();
}




class _forgetState extends State<forgotPasswordScreen> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1("Forgot Password"),

      body: Container(
        color: whiteColor,
        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: height/40),
                    Align(
                      alignment: Alignment.center,
                      child: Image(

                        image: AssetImage("assets/icons/forgetPassword.png"),
                        height: MediaQuery.of(context).size.height/8,
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 15,),

              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(

                    children: [



                      Wrap(
                        direction: Axis.vertical,
                        spacing: 8,
                        // alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [


                          Container(
                            width: width/1.3,
                            child:Text("Enter email address associated with your account, "
                                "and we'll email you a "
                                "link to reset your password.", style: TextStyle(color: basicColor,fontSize: 13),
                            textAlign: TextAlign.start,),
                          ),


                          const SizedBox(height: 8,),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Email",
                            style: TextStyle(
                                color: basicColor,
                                fontSize: 12),
                            textAlign: TextAlign.start,),
                        ),

                          //email textfield
                         CustomTextField
                           (
                             hinttext: "enter your email address",
                           obscureText: false,
                           textInputType: TextInputType.emailAddress,
                         ),


                          const SizedBox(height: 6,),



                        ],
                      ),


                      SizedBox(height: 16,),


                      //login button
                      CustomButton(
                        text: Text("Reset",
                          style: CustomTextStyle.title(context),),
                          onPressed: (){
                          Navigator.pop(context);
                          },
                        focusColor: buttonColor,
                        disbaleColor: buttonColor,
                      ),

                      SizedBox(height: 10,),








                    ],
                  ),
                ),
              ),





            ],
          ),
      ),

    );
  }

}