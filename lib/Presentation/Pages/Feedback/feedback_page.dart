
import 'package:flutter/material.dart';

import '../../Widgets/Button/CustomButoon/custom_button.dart';
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  int? selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected = 0;
  }

  setSelectedRadio(int val){
   setState(() {
     selected = val;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Feedback',
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
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(

              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Question : 1/6',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color:Color(0xFF2D2D2D)
                      ),),
                      const SizedBox(height: 24,),
                      Text('Dose thew retailer compel you to do his\npersonal task?',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)
                      ),),
                      const SizedBox(height: 16,),
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: selected,
                                onChanged: (val){
                                  setState(() {
                                    setSelectedRadio(val as int);
                                  });
                                }
                            ),
                            Text('Yes',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)
                            ),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12,),
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFF7F8F8),
                        ),
                        child: Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: selected,
                                onChanged: (val){
                                  setState(() {
                                    setSelectedRadio(val as int);
                                  });
                                }
                            ),
                            Text('No',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                CustomButton(title: 'Next',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
