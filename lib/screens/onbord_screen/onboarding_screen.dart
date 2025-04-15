import 'package:flutter/material.dart';
import 'package:flutter_foodi_app/screens/onbord_screen/name_input_screen.dart';
import 'package:flutter_foodi_app/screens/wedget/wedget.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          onbordcard(context, 'assets/images/onbord_sce.png'),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56,
                ),
                onbordtext(
                    'Get The Freshest Fruit Salad Combo', 20, FontWeight.w500),
                SizedBox(
                  height: 10,
                ),
                onbordtext('We deliver the best and freshest fruit salad in',
                    16, FontWeight.w400),
                SizedBox(
                  height: 5,
                ),
                onbordtext(
                    'town. Order for a combo today!!!', 16, FontWeight.w400),
                SizedBox(
                  height: 58,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => NameInputScreen()));
                        },
                        child: onbordbutton('Let’s Continue')))
              ],
            ),
          )
        ],
      ),
    );
  }
}
