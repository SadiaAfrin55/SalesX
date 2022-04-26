
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Constants/Colors/app_color.dart';
import '../../../../Constants/Colors/app_color.dart';
import '../../../../Constants/Strings/app_string.dart';
import 'moreOption_components.dart';
class MoreComponents extends StatelessWidget {
  const MoreComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          children: [
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const Text('Note : The above calculations are as current month',
                    style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color:Color(0xFF232C2E),
                    ),
                    ),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 24.0),
                      child: const Divider(color: Color(0xFFEDEFEF),thickness: 1,)),
                  const Text('History',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF8E9191),
                    ),
                  ),
                  const SizedBox(height: 26,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, ATTENDANCE_HISTORY);
                    },
                    child: MoreOptionsCard(
                      image: SvgPicture.asset('assets/icons/attendenceHistory.svg'),
                      title: 'Attendance History',
                      color: Color(0xFFFFE5E0),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, LEAVE_HISTORY);
                    },
                    child: MoreOptionsCard(
                      image: SvgPicture.asset('assets/icons/leave_history.svg'),
                      title: 'Leave History',
                      color: Color(0xFFFFF6E1),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, SALES_HISTORY);
                    },
                    child: MoreOptionsCard(
                      image: SvgPicture.asset('assets/icons/sales.svg',height: 16,),
                      title: 'Sales History',
                      color: Color(0xFFE4FBEF),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, SURVEY_HISTORY);
                    },
                    child: MoreOptionsCard(
                      image: SvgPicture.asset('assets/icons/survey.svg',height: 16,),
                      title: 'Survey History',
                      color: Color(0xFFE1F3FF),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, INVENTORY_HISTORY);
                    },
                    child: MoreOptionsCard(
                      image: SvgPicture.asset('assets/icons/inventory_history.svg'),
                      title: 'Inventory list',
                      color: Color(0xFFE8E7FD),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showAlertDialog(context);
                    },
                    child: MoreOptionsCard(
                      image: SvgPicture.asset('assets/icons/dayClose.svg'),
                      title: 'Day close',
                      color: Color(0xFFFFEFE0),
                    ),
                  ),
                  ],
                ),
            ),
          ],
        ),

    );
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Container(
        height: 300,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/daycloseIcon.svg'),
            const Text(
              "Want to call it a day?",
              style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            ).tr(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            height: 54,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0XFFE1F0FF)),
                            child: Text(
                              "No",
                              style:
                              TextStyle(color: kPrimaryColor, fontSize: 16),
                              textAlign: TextAlign.center,
                            ).tr(),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: InkWell(
                          onTap: () {
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            height: 54,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xFF0180F5)),
                            child: Text(
                              "Yes",
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ).tr(),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
