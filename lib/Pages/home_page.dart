import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haabitto/Widgets/Home%20Page/W_homePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2d4059),
        appBar: AppBar(
          leading: DrawerIcon(),
          backgroundColor: Color(0xff2d4059),
          elevation: 0.0,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizeHeight(siz: 0.15),
            CenterIcon(img_l: "assets/Images/Home Page/test 3.png"),
            SizeHeight(siz: 0.3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DeckIcon(
                  img_l: "assets/Images/Home Page/sand-clock.png",
                  but: true,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                DeckIcon(
                  img_l: "assets/Images/Home Page/journal_.png",
                  but: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
