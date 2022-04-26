
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/Card/SalesCard/details_card.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,color: Colors.black,size: 27,),
            ),
          ),
          toolbarHeight: 84,
          elevation: 0.5,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/icons/phone.png')),
                SizedBox(height: 20),
                Center(
                  child: Text('Walton M30',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF232C2E)
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/taka.svg'),
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
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Divider(thickness: 1),
                ),
                DetailsInfo(
                  title: 'Name :',
                  subtitile: 'Kawsar Uddin',
                ),
                DetailsInfo(
                  title: 'Mobile :',
                  subtitile: '+88 123 456 789',
                ),
                DetailsInfo(
                  title: 'Age :',
                  subtitile: '29',
                ),
                DetailsInfo(
                  title: 'Email :',
                  subtitile: 'Kawsaruddin@gmail.com',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Remark :',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF232C2E)
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('you are going to use a passage of Lorem Ipsum, you need to be sure desktop publis hing packages and web page editors now use.',
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
        ),
      ),
    );
  }
}
