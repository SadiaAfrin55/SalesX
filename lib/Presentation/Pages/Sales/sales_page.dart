
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Button/CustomButoon/custom_button.dart';
import '../../Widgets/TextFields/filledTextField.dart';
class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController remarkController = TextEditingController();
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
            title: const Text('Sales',
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
                  Column(
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
                        controller: nameController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
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
                        controller: nameController,
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
                        controller: nameController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Remarks',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color:Color(0xFF232C2E)
                        ),),
                        const SizedBox(height: 8,),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFF5F7F8),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text('Select Product',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8E9191),
                                ),
                              ).tr(),
                              value: issueType,
                              icon: const Icon(Icons.keyboard_arrow_down,color: Colors.black),
                              iconSize: 30,
                              onChanged: (newValue) {
                                setState(() {
                                  issueType = newValue.toString();
                                  if(issueType!=null){
                                    setState(() {
                                      isSelected=true;
                                    });
                                  }else{
                                    setState(() {
                                      isSelected=false;
                                    });
                                  }
                                });
                              },
                              items: issueTypeDrop.map((location) {
                                return DropdownMenuItem(
                                  child:  Text(location,style: TextStyle(
                                      color: Color(0xFF8E9191),fontSize: 16
                                  ),).tr(),
                                  value:location,
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Remarks',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)

                      ),),
                      const SizedBox(height: 8,),
                      FilledTextField(
                        hintText: 'Type email',
                        readOnly: false,
                        controller: nameController,
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
