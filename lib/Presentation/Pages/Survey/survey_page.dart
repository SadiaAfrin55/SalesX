
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Button/CustomButoon/custom_button.dart';
import '../../Widgets/TextFields/filledTextField.dart';
class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController interestController = TextEditingController();
  TextEditingController minbudgetController = TextEditingController();
  TextEditingController maxbudgetController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  List<String> issueTypeDrop = ['Male','Female'];
  String? issueType;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Survey',
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)

                      ),),
                      const SizedBox(height: 8,),
                      FilledTextField(
                        hintText: 'Type name',
                        readOnly: false,
                        controller: nameController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Contact number',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)

                            ),),
                            const SizedBox(height: 8,),
                            FilledTextField(
                              hintText: 'Type contact number',
                              readOnly: false,
                              controller: numberController,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 17,),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Age',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)

                            ),),
                            const SizedBox(height: 8,),
                            FilledTextField(
                              hintText: 'Type age',
                              readOnly: false,
                              controller: ageController,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)

                      ),),
                      const SizedBox(height: 8,),
                      FilledTextField(
                        hintText: 'Type email',
                        readOnly: false,
                        controller: emailController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Interested In',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)

                      ),),
                      const SizedBox(height: 8,),
                      FilledTextField(
                        hintText: 'Interested in',
                        readOnly: false,
                        controller: interestController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Minimum Budget',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)

                            ),),
                            const SizedBox(height: 8,),
                            FilledTextField(
                              hintText: 'Type budget',
                              readOnly: false,
                              controller: minbudgetController,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 17,),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Maximum Budget',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)

                            ),),
                            const SizedBox(height: 8,),
                            FilledTextField(
                              hintText: 'Type budget',
                              readOnly: false,
                              controller: maxbudgetController,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Used Phone',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)

                      ),),
                      const SizedBox(height: 8,),
                      FilledTextField(
                        hintText: 'Current phone',
                        readOnly: false,
                        controller: phoneController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  CustomButton(title: 'Submite',)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
