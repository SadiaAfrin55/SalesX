
import 'package:flutter/material.dart';
import 'package:salesx/Constants/Colors/app_color.dart';

class Approved extends StatelessWidget {
  const Approved({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:Color(0xFFEEEFEF),width: 1)
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Apply Date',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF232C2E),
                      ),
                    ),
                    SizedBox(height: 8),
                    const Text('1 Jan 2022',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0180F5),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Status',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF232C2E),
                      ),
                    ),
                    SizedBox(height: 8),

                    Text('Approved',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF08BC85),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(thickness: 1,color: dividerColor,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Type',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E9191),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Sick',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF232C2E),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('From date',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E9191),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('2 jan’22',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF232C2E),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('To date',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E9191),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('3 jan’22',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF232C2E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(thickness: 1,color: dividerColor,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Reason',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF232C2E),
                  ),
                ),
                SizedBox(height: 10),
                Text('you are going to use a passage of Lorem Ipsum, you need to be sure desktop publis hing packages and web page editors now use.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF232C2E),
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
