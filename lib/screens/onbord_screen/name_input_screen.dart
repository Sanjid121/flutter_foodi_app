import 'package:flutter/material.dart';
import 'package:flutter_foodi_app/screens/Home_screen/home.dart';
import 'package:flutter_foodi_app/screens/wedget/wedget.dart';

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({Key? key}) : super(key: key);

  @override
  _NameInputScreenState createState() => _NameInputScreenState();
}

class _NameInputScreenState extends State<NameInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            onbordcard(context, 'assets/images/onbord_name_sc.png'),
            SizedBox(
              height: 56,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
              ),
              child: Container(
                height: 29,
                child: Text("What is your firstname?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Center(
                  child: Container(
                    width: 327,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff3f1f1)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Tony',
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 42,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Home()));
              },
              child: Center(
                child: Container(
                  child: onbordbutton('Start Ordering'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
