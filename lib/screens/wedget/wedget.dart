import 'package:flutter/material.dart';

onbordcard(BuildContext context, String img) {
  final screenhight = MediaQuery.of(context).size.height;
  final screenwidth = MediaQuery.of(context).size.width;
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

foodcard() {
  return Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
   
    children: [
  
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: 152,
          height: 183,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // soft shadow
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: const Offset(0, 3),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  right: 20,
                ),
                child:
                    Container(child: Image.asset('assets/images/Vector.png')),
              ),
              Center(
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset(
                      'assets/images/Honey-Lime-Peach-Fruit-Salad-.png'),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text("Honey lime combo",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 16,
                          height: 12.800000190734863,
                          child: Image.asset('assets/images/price.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("2,000",
                            style: TextStyle(
                              color: Color(0xffF08626),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      child: Image.asset('assets/images/add_icon.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
