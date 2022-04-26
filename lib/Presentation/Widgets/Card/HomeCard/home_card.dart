
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeCard extends StatelessWidget {
  final Color? cardColor;
  final SvgPicture? cardImg;
  final String? cardText;
  const HomeCard({
    this.cardColor,
    this.cardImg,
    this.cardText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width*0.42,
      height: 86,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: cardImg,),
          const SizedBox(height: 4,),
          Text('$cardText',style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color:Color(0xFF000000),
          ),),
        ],
      ),
    );
  }
}
