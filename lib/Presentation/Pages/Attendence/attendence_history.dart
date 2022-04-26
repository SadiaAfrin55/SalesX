

import 'package:flutter/material.dart';

import '../../Widgets/Card/AttendenceCard/absent.dart';
import '../../Widgets/Card/AttendenceCard/late.dart';
import '../../Widgets/Card/AttendenceCard/present.dart';


class AttendenceHistory extends StatefulWidget {
  const AttendenceHistory({Key? key}) : super(key: key);

  @override
  _AttendenceHistoryState createState() => _AttendenceHistoryState();
}

class _AttendenceHistoryState extends State<AttendenceHistory> {
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
      child: Container(
        color: Colors.white,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Attendance History',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            leading: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back,color: Colors.black,size: 27,),
              ),
            ),
            toolbarHeight: 54,
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Present(),
                Absent(),
                Late(),
                Present(),
                Absent(),
                Late(),
                Present(),
                Absent(),
                Late(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
