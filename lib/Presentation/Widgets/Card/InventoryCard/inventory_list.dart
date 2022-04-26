
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class InventoryListCard extends StatelessWidget {
  const InventoryListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 159,
              height: 118,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFFF7F8F8)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 22,),
                  Text('Walton tv',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text('1012',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0180F5)
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('on stock',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E9191)
                    ),
                  ),


                ],
              ),
            ),
            Positioned(
              top: -30,
                child: Image.asset('assets/icons/tv.png')),

          ],
        ),

      ],
    );
  }
}
