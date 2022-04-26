
import 'package:flutter/material.dart';
class DetailsInfo extends StatelessWidget {
  final String? title;
  final String? subtitile;
  const DetailsInfo({this.title,this.subtitile,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$title',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('$subtitile',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14.0),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
