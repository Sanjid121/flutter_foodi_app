import 'package:flutter/material.dart';

import 'package:flutter_foodi_app/model/prodact_view.dart';
import 'package:flutter_foodi_app/screens/Home_screen/card_detils.dart';

import 'package:flutter_foodi_app/screens/wedget/wedget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final allprodact = product;
List<String> tabs = ["Hottest", "Popular", "New", "Combo", "Top"];
int selectedIndex = 0;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                      color: Color(0xfff3f4f9),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  child: Image.asset(
                                    'assets/images/bi_search.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text("Search for fruit salad combos",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          )),
                    ),
                  ),
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Text("Recommended Combo",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                foodcard(allprodact[0].img!, allprodact[0].name!,
                    allprodact[0].pric!, context),
                foodcard(allprodact[1].img!, allprodact[1].name!,
                    allprodact[1].pric!, context),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(tabs.length, (index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              fontSize: isSelected ? 24 : 16,
                              fontWeight: isSelected
                                  ? FontWeight.w500
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Color(0xff27214D)
                                  : Color(0xff938DB5),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 3,
                          width: 22,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Color(0xfffFFA451)
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CardDetils()));
                    },
                    child: rowfoodcard(allprodact[2].img!, allprodact[2].name!,
                        allprodact[2].pric!, context, 0xfffff9ea),
                  ),
                  rowfoodcard(allprodact[3].img!, allprodact[3].name!,
                      allprodact[3].pric!, context, 0xfffef0f0),
                  rowfoodcard(allprodact[4].img!, allprodact[4].name!,
                      allprodact[4].pric!, context, 0xfff1eff6),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
