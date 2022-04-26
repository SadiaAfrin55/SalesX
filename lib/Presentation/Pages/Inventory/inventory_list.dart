
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Card/InventoryCard/inventory_list.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Inventory list',
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
          toolbarHeight: 54,
          elevation: 0.5,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 21),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('You have total 40 products',
                style: TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
                ),
                //const SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 13.0,
                        mainAxisSpacing: 13.0,
                        childAspectRatio: 15/14
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return InventoryListCard();
                    },
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
