import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';

class transaction_container extends StatelessWidget {
  const transaction_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * .097,
        width: double.infinity,
        decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: Custom_Colors.icon_button_Color),
            // color: Custom_Colors.icon_button_Color.withOpacity(.48),
            color: Custom_Colors.app_Background_Color,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 5,
                color: Custom_Colors.icon_button_Color.withOpacity(.4),
              )
            ],

            // color: Colors.blue.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ////// 1st Row   ///////////////  voucher + item + date row//////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /////////////////////////// voucher + value Row /////////////
                  Text(
                    'Item: ',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .015,
                        color: Colors.white60,
                        fontWeight: FontWeight.bold),
                  ),
                  //////////////// item name /////////////////////
                  Text(
                    'Lipstick Shede 12 ss',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .02,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  ///////////////////////date  /////////////////
                  Text(
                    '25 Feb,2022',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .015,
                        color: Colors.white60,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              ///// 2nd row  ////////////////   balance+amount+date    ////////////////////
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ////// amont row /////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Voucher: ',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .015,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold),
                            ),
                            //////////////////////////
                            Text(
                              ' 11872',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            //////////////////////////////
                          ],
                        ),
                        /////////////////////////////////////////////////////////
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Text(
                                'Amount: ',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .015,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold),
                              ),
                              //////////////////////////
                              Text(
                                ' 115322',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .02,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //////// balance row /////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Balance: ',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * .015,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                        ),
                        //////////////////////////
                        Text(
                          ' 76909',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * .02,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  /////////////////////////////////////////////////////
                ],
              ),

              ///////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
