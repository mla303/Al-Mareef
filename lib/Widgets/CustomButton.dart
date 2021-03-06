import 'package:flutter/material.dart';

import 'colors.dart';


class CustomButton extends StatelessWidget {


  CustomButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.4,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: buttonColor.withOpacity(0.7),
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}



class CustomButton1 extends StatelessWidget {


  CustomButton1({@required this.onPressed, this.text,this.focusColor,this.disbaleColor});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.4,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: buttonColor.withOpacity(0.7),
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,
            SizedBox(width: 10,),
            Icon(Icons.lock,size: 18,),
          ],
        ),
      ),
    );
  }
}