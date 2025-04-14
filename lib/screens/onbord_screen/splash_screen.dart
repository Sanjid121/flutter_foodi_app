import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OnboardingScreen()),
      );
      print('okkkkkkkk');
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/splash_img.svg',height: 113,width: 164.94,fit: BoxFit.cover,),
            Container(
              width: 184,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color(0xffffa451)),
              child: Center(
                child: Text(
                  'Fruit Hub',
                  // style:
                  //     GoogleFonts.badScript(textStyle: TextStyle(
                  //       fontSize: 24,
                  //       color: Color(0xFFFFFFFFF)
                  //     )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
