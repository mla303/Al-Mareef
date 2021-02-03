
import 'package:al_mareef/Widgets/CustomButton.dart';
import 'package:al_mareef/Widgets/CustomTextField.dart';
import 'package:al_mareef/Widgets/appBar.dart';
import 'package:al_mareef/Widgets/colors.dart';
import 'package:al_mareef/Widgets/styles.dart';
import 'package:flutter/material.dart';





class SignInScreen extends StatefulWidget {
  @override
  _logInState createState() => new _logInState();
}




class _logInState extends State<SignInScreen> {


  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }



  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1("Sign In"),

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

                        image: AssetImage("assets/icons/signIn.png"),
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
                        // // alignment: WrapAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [



                          Text("Email", style: TextStyle(color: basicColor,fontSize: 12),),

                          //email textfield
                         CustomTextField
                           (
                             hinttext: "enter your email address",
                           obscureText: false,
                           textInputType: TextInputType.emailAddress,
                         ),


                          const SizedBox(height: 6,),


                          Text("Password", style: TextStyle(color: basicColor,fontSize: 12),),
                          //password textfield
                          CustomTextField
                            (
                            iconButton: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              iconSize: 18,
                              color: basicColor,
                              onPressed: _toggle,
                            ),
                            hinttext: "· · · · · · · · · ·",
                            obscureText: _obscureText,
                            textInputType: TextInputType.emailAddress,
                          ),


                        ],
                      ),


                      //forget link
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                        child: InkWell(
                          onTap: ()
                          {
                            Navigator.pushNamed(context, "/forgetPassword");
                          },
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("Forgot Password ?",style:
                              TextStyle(color: basicColor,fontSize: 12),)),
                        ),
                      ),

                      SizedBox(height: 16,),


                      //login button
                      CustomButton(
                        text: Text("Sign In",
                          style: CustomTextStyle.title(context),),
                          onPressed: (){
                          Navigator.pushNamed(context, "/bottomNavigation");
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