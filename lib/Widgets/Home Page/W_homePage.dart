import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haabitto/Pages/routes.dart';

class DeckIcon extends StatelessWidget {
  final String img_l;
  final bool but;

  const DeckIcon({Key? key, required this.img_l, required this.but})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.22,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          // border: Border.all(
          //   color: Color(0xfffEFDFDF),
          //   width: MediaQuery.of(context).size.width * 0.008,
          // ),
        ),
        child: Image.asset(
          img_l,
          color: Color(0xfffF2A5A5),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
            context, but ? MyRoutes.timerRoute : MyRoutes.journalRoute);
      },
    );
  }
}

class CenterIcon extends StatelessWidget {
  final String img_l;
  const CenterIcon({Key? key, required this.img_l}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      child: Image.asset(
        img_l,
        //color: Color(0xff86a6df),
      ),
    );
  }
}

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.view_headline,
        size: MediaQuery.of(context).size.height * 0.04,
        color: Color(0xffEFDFDF),
      ),
    );
  }
}

class SizeHeight extends StatelessWidget {
  final double siz;
  const SizeHeight({Key? key, required this.siz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
          //color: Colors.amber,
          ),
      height: MediaQuery.of(context).size.height * siz,
    );
  }
}
