import 'package:flutter/material.dart';

class transaction_container extends StatelessWidget {
  const transaction_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * .08,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue,
            //  color: Colors.blue.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Voucher No.',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                ///////////////////////////////////////////
                Text(
                  'Lipstick',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                ///////////////////////////////////////////
                Text(
                  '123456789',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                ///////////////////////////////////////////
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '25 Jan , 2023 ',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Color.fromARGB(255, 50, 47, 47),
                      fontWeight: FontWeight.normal),
                ),
                ///////////////////////////////////////////

                Text(
                  'Balance/- 987654321',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .02,
                      color: Color.fromARGB(255, 50, 47, 47),
                      fontWeight: FontWeight.bold),
                ),
                ///////////////////////////////////////////
              ],
            )
          ],
        ),
      ),
    );
  }
}
