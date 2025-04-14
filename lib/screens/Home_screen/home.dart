import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final wight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 112,
        backgroundColor: Colors.white,
        leading: Container(
            height: 11,
            width: 11,
            child: Image.asset('assets/images/menu.png')),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32, top: 30),
            child: Column(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: Image.asset('assets/images/bag_resize.png'),
                ),
                Text("My basket",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Hello Tony, What fruit salad'),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('Combo do you want today?'),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Container(
                    width: wight * 0.705,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff3f4f9))),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 26,
                height: 17,
                child: Image.asset(
                  'assets/images/menu2.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
