import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/transaction_container.dart';

class All_Ledgers extends StatelessWidget {
  const All_Ledgers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.blue.shade900, size: Get.height * .04),
          backgroundColor: Colors.transparent.withOpacity(0),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 237, 235, 230),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ))),
            ),
            ///////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                        image: const AssetImage('assets/icons/BhaiNabeel.jpg')),
                  )),
            ),
            ////////////////////////////////////////////////////////
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////////////////////////////////////////////////////////////

                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 8, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ////////////////////////// Day Report ////////////////////////////////////
                      CircleAvatar(
                          backgroundColor: Colors.red,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'D',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),
                      ///////////////////// Weak Report ////////////////////////

                      CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'W',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),

                      // /////////////////////////////////////////////////////////

                      ////////////////////////// Day Report ////////////////////////////////////
                      CircleAvatar(
                          backgroundColor: Colors.red,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'M',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),
                      ///////////////////// Weak Report ////////////////////////

                      CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Y',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),

                      // /////////////////////////////////////////////////////////
                    ],
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .05,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(20, -1),
                            blurRadius: 20,
                            color: Colors.blue,
                          )
                        ]),
                    child: Center(
                        child: Text(
                      'Ledger ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .04),
                    )),
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                /*
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return transaction_container();
                  },
                ),
                */
                //////////////////////////////////////////////
                Expanded(
                  flex: 3,
                  child: ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return transaction_container();
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
