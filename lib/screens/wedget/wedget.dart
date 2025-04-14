import 'package:flutter/material.dart';

onbordcard(BuildContext context, String img) {
  final screenhight = MediaQuery.of(context).size.height;
  return Container(
    width: MediaQuery.of(context).size.width,
    height: screenhight * 0.5 + 34,
    color: Color(0xffffa451),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: screenhight * 0.1 - 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 250),
          child: Container(
            width: 50,
            height: 37.521663665771484,
            child: Image.asset('assets/images/onbord_apple.png'),
          ),
        ),
        Container(
          width: 301,
          height: 281.20501708984375,
          child: Image.asset(
            img,
          ),
        ),
        Container(
          width: 301,
          height: 12,
          child: Image.asset(
            'assets/images/onbord_shdo.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

onbordtext(String note, double siz, FontWeight weighet) {
  return Container(
      child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Text(
      note,
      style: TextStyle(fontSize: siz, fontWeight: weighet),
    ),
  ));
}

onbordbutton(String text) {
  return Container(
    width: 327,
    height: 56,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color(0xffffa451)),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xffFFFFFF)),
      ),
    ),
  );
}
