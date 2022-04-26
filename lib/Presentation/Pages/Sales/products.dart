
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Strings/app_string.dart';
import '../../Widgets/Card/SalesCard/products_card.dart';
class SalesProducts extends StatefulWidget {
  const SalesProducts({Key? key}) : super(key: key);

  @override
  State<SalesProducts> createState() => _SalesProductsState();
}

class _SalesProductsState extends State<SalesProducts> {
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
            title: const Text('Sales History',
              style: TextStyle(
                fontSize: 18,
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
            actions: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SALES_CHART);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                  child: SvgPicture.asset('assets/icons/Chart.svg'),
                ),
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
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('01 Jan 2022',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8E9191)
                      ),
                    ),
                        InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, SALES_DETAILS);
                            },
                            child: ProductsCard()),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, SALES_DETAILS);
                          },
                            child: ProductsCard()),
                        InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, SALES_DETAILS);
                            },
                            child: ProductsCard()),
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
