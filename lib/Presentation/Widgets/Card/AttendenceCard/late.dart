
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Late extends StatelessWidget {
  const Late({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/icons/profile.jpg'),
            ),
            const SizedBox(width: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Check in',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope',
                        color: Color(0xFF232C2E),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text('10:11 AM',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF42A5F5),
                        fontFamily: 'Manrope',
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/calender_icon.svg',
                        ),
                        SizedBox(width: 5),
                        const Text('01 Jan’ 22',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Manrope',
                            color: Color(0xFF0180F5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 35),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Check out',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope',
                        color: Color(0xFF232C2E),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text('10:11 AM',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0180F5),
                        fontFamily: 'Manrope'
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/time_icon.svg',
                          color: Colors.red,
                        ),
                        SizedBox(width: 5),
                        Text('Late',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF42A5F5),
                            fontFamily: 'Manrope'
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
