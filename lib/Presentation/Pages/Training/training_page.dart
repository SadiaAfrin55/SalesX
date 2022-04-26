
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Button/CustomButoon/customiIcon_button.dart';
class TrainingPage extends StatefulWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Training',
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
            toolbarHeight: 64,
            elevation: 0.5,
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const Center(
                  child: Text('Please take a clear photo yourself',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color:Color(0xFF727272)

                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                CustomIconButton(
                  title: 'Take a photo',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
