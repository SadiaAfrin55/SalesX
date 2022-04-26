
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ProductsCard extends StatelessWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 96,
      decoration: BoxDecoration(
          color:Color(0xFFFCFCFC),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color:Color(0xFFEEEFEF),width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Image.asset('assets/icons/phone.png'),
                const SizedBox(width: 16,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kawser Uddin',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF232C2E)
                    ),
                    ),
                    SizedBox(height: 4),
                    Text('Walton M30',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8E9191)
                    ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/taka.svg',color: Colors.lightBlue,),
                        SizedBox(width: 5),
                        Text('40,000',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0180F5)
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
