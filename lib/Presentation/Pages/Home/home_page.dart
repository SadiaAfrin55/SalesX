
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Strings/app_string.dart';
import '../../../Service/LocalDataBase/localdata.dart';
import '../../Widgets/Card/HomeCard/home_card.dart';
import '../Survey/survey_noData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name;
  String? email;

  //local storage
  LocalDataGet _localDataGet = new LocalDataGet();

  getToken() async {
    var userBox = await _localDataGet.getData();
    setState(() {
      name = userBox.get('name');
      email = userBox.get('email');
      // Logger().d(token)
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.5,
            toolbarHeight: 64,
            leading: Container(
              margin: EdgeInsets.only(top: 4, bottom: 4, left: 16),
              width: 200,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/user.png"),
                ),
              ),
            ),
            actions: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name ?? "",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              )),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            email ?? " ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap:(){},
                              child: SvgPicture.asset('assets/images/admin.svg')),
                          InkWell(
                              onTap:(){},
                              child: SvgPicture.asset('assets/images/notification.svg')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 21),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/images/banner.png')),
                  const SizedBox(height: 24,),
                  const Text('Your work list',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Color(0xFF232C2E),
                  ),),
                  const SizedBox(height: 16,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, ATTENDANCE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFFEEBEF),
                                cardImg: SvgPicture.asset('assets/icons/attendence.svg'),
                                cardText: 'Attendance',
                              ),
                            ),
                            const SizedBox(width: 16,),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, SALES_PAGE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFFFF6E1),
                                cardImg: SvgPicture.asset('assets/icons/sale.svg'),
                                cardText: 'Sales',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, SURVEY_PAGE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFE2FDED),
                                cardImg: SvgPicture.asset('assets/icons/survey.svg'),
                                cardText: 'Survey',
                              ),
                            ),
                            const SizedBox(width: 16,),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, TARGET_PAGE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFE1F3FF),
                                cardImg: SvgPicture.asset('assets/icons/target.svg'),
                                cardText: 'Target',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, INVENTORY_PAGE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFE2E1FF),
                                cardImg: SvgPicture.asset('assets/icons/inventory.svg'),
                                cardText: 'Inventory',
                              ),
                            ),
                            const SizedBox(width: 16,),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, LEAVE_PAGE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFF1E1FF),
                                cardImg: SvgPicture.asset('assets/icons/leave.svg'),
                                cardText: 'Leave',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, TRAINING_PAGE);
                              },
                              child: HomeCard(
                                cardColor: Color(0xFFFFEFE0),
                                cardImg: SvgPicture.asset('assets/icons/training.svg'),
                                cardText: 'Training',
                              ),
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, FEEDBACK_PAGE);
                                },
                              child: HomeCard(
                                cardColor: Color(0xFFE0EDFF),
                                cardImg: SvgPicture.asset('assets/icons/feedback.svg'),
                                cardText: 'Feedback',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
