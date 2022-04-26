
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomIconButton extends StatelessWidget {
  final String? title;
  CustomIconButton({this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height:55,
      decoration: BoxDecoration(
        color: Color(0xFF0180F5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_outlined,color: Colors.white,),
            SizedBox(width: 10),
            Text('$title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ).tr(),
          ],
        ),
      ),
    );
  }
}
