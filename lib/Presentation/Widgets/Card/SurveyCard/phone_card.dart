
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Constants/Strings/app_string.dart';
class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SURVEY_DETAILS);
      },
      child: Container(
        width: 159,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Color(0xFFEEEFEF))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mr. Kawsar',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF232C2E)
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/call.svg'),
                SizedBox(width: 4),
                Text('+88123456789',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF232C2E)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
