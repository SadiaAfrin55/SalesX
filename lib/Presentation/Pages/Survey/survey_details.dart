
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Strings/app_string.dart';
import '../../Widgets/Card/SalesCard/details_card.dart';

class SurveyDetails extends StatelessWidget {
  const SurveyDetails({Key? key}) : super(key: key);

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
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
              child: SvgPicture.asset('images/icons/Chart.svg'),
            ),
          ],
          toolbarHeight: 84,
          elevation: 0.5,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32,vertical: 21),
            child: Column(
              children: [
                SizedBox(height: 30),
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
                DetailsInfo(
                  title: 'Interested in :',
                  subtitile: 'Samsung',
                ),
                DetailsInfo(
                  title: 'Minimum Budget :',
                  subtitile: '20,000 Tk',
                ),
                DetailsInfo(
                  title: 'Maximum Budget :',
                  subtitile: '30,000 Tk',
                ),
                DetailsInfo(
                  title: 'Current Used Phone :',
                  subtitile: 'Nove',
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
