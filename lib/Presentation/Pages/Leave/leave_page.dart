

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../Widgets/Button/CustomButoon/custom_button.dart';
import '../../Widgets/TextFields/filledTextField.dart';
class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  _LeavePageState createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  TextEditingController dobController= TextEditingController();
  TextEditingController typeController= TextEditingController();
  String? dateOfBirght;
  String? infoTakenDate;
  List<String> issueTypeDrop = ['Sick','Half day','Casual','Manualy'];
  String? issueType;
  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    infoTakenDate=DateFormat('MM/dd/yyyy hh:mm:ss').format(DateTime.now()).substring(0,11);
    super.initState();
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
            title: const Text('Leave',
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
                  Container(
                    height: MediaQuery.of(context).size.height*0.7,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Select leave type',style: TextStyle(
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
                                    hint: Text('Select type',
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
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Form date',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:Color(0xFF232C2E)
                              ),),
                              const SizedBox(height: 8,),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:40 ,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFFF5F7F8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex:7,
                                          child: Text(dateOfBirght??tr('Select date'),style: TextStyle(
                                              color: Color(0xFF8E9191),fontSize: 16
                                          ),),
                                        ),
                                        Icon(Icons.calendar_today_outlined,color: Colors.black,),
                                      ],
                                    ),
                                  )
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('To date',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:Color(0xFF232C2E)
                              ),),
                              const SizedBox(height: 8,),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:40 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFF5F7F8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex:7,
                                          child: Text(dateOfBirght??tr('Select date'),style: TextStyle(
                                              color: Color(0xFF8E9191),fontSize: 16
                                          ),),
                                        ),
                                        Icon(Icons.calendar_today_outlined,color: Colors.black,),
                                      ],
                                    ),
                                  )
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Type reason',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color:Color(0xFF232C2E)

                            ),),
                            const SizedBox(height: 8,),
                            FilledTextField(
                              hintText: 'Type reason',
                              readOnly: false,
                              controller: typeController,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  CustomButton(title: 'Add',)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      dateOfBirght = args.value.toString().substring(0, 10);
    });
  }

}


