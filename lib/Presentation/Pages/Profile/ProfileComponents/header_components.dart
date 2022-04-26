
import 'package:flutter/material.dart';
class HeaderComponents extends StatelessWidget {
  const HeaderComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 28),
              width: 72,
              height: 72,
              child: CircleAvatar(
                //backgroundImage: AssetImage('assets/images/profile.jpg'),
                backgroundColor: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 24),
          Text('Sifat Ullah',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color(0xFF232C2E),
              fontFamily: 'Manrope',
            ),
          ),
          SizedBox(height: 4),
          Text('SEC',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF232C2E),
              fontFamily: 'Manrope',
            ),
          ),
          SizedBox(height: 24),
        ],
      );

  }
}
