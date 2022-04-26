import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Colors/app_color.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:  BackButton(
            color: Colors.black
        ),
        backgroundColor: whiteBackground,
        title: Text(tr("Forget Password"),style: TextStyle(color: Colors.black,fontSize:21 ),),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset("assets/icons/up.png",),),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 20,left: 8,right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/phoneCall.svg"),
                      SizedBox(height:18 ,),
                      Text("To reset your password contact\nwith your organization",textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                      ).tr(),
                    ],
                  )
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/icons/down.png"),
              )
            ],
          )
      ),
    );
  }
}
