import 'package:flutter/material.dart';
import 'package:flutter_foodi_app/screens/Home_screen/home.dart';

class CardDetils extends StatefulWidget {
  const CardDetils({Key? key}) : super(key: key);

  @override
  _CardDetilsState createState() => _CardDetilsState();
}

class _CardDetilsState extends State<CardDetils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 58,
        backgroundColor: Color(0xffFFA451),
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Home()),
              );
            },
            //back button
            child: Container(
              width: 83,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xfffFFFFFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/back_button.png',
                    width: 10,
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Go back",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [ Container(
          //fast card
          height: 270,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xffFFA451),
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/breakfast-quinoa-and-red-fruit.png'))),
        ),
      
                
         Positioned(
          top: 100,
           child: Padding(
             padding: const EdgeInsets.only(bottom: 29, top: 30),
             child: Container(
              
                         height: 480,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                           boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5), 
                spreadRadius: 2, 
                blurRadius: 7,
                offset: Offset(0, 3), 
                )
                           ],
                           color: Color(0xffFFFFFF),
                       borderRadius: BorderRadius.circular(40)
                           
                         ),
                         
                       ),
           ),
         ),
              ]
             ),
    );
  }
}
