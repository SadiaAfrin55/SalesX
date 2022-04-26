import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:progress_state_button/progress_button.dart';

import '../../../Bloc/Login/login_cubit.dart';
import '../../../Constants/Colors/app_color.dart';
import '../../../Constants/Strings/app_string.dart';
import '../../../Service/LoginService/save_user_data_local.dart';
import '../../Screens/SplashScreen/splash_screen.dart';
import '../../Widgets/Button/ProgressAnimtaionButton/progress_button.dart';
import '../../Widgets/TextFields/filledTextField.dart';
import '../../Widgets/TextFields/password_textdield.dart';
import '../../main_screen.dart';

class SalesNoDataPage extends StatefulWidget {
  @override
  _SalesNoDataPageState createState() => _SalesNoDataPageState();
}

class _SalesNoDataPageState extends State<SalesNoDataPage> {
  List<Tab>? _kTabs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _kTabs =[
      Tab(text: 'January'),
      Tab(text:'February'),
      Tab(text:'March'),
      Tab(text:'April'),
      Tab(text:'May'),
      Tab(text:'June'),
      Tab(text:'July'),
      Tab(text:'Auguest'),
      Tab(text:'September'),
      Tab(text:'October'),
      Tab(text:'November'),
      Tab(text:'December'),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: SafeArea(
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.zero,
        child: Scaffold(
          backgroundColor: whiteBackground,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Sales History',
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
                child: SvgPicture.asset('assets/icons/Chart.svg'),
              ),
            ],
            toolbarHeight: 84,
            elevation: 0.5,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.lightBlue,
                unselectedLabelColor: Colors.black,
                tabs: _kTabs!,
              ),
            ),
          ),
          body: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset("assets/icons/down.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Center(child: Image.asset("assets/icons/noData.png",)),
                    ],
                  ),

                ],
              )
          ),
        ),
      ),
    );
  }
}
