import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .2,
              color: Colors.transparent.withOpacity(0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    backgroundImage:
                        AssetImage('assets/icons/Genny_icon_transpart.png'),
                  ),
                  ///////////////////////////////////////////////////////
                  CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
