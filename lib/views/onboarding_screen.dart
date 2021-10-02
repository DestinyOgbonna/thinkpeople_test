import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thinkpeople_test/constants/text_styles.dart';
import 'package:thinkpeople_test/views/sign_up_screen.dart';
import 'package:thinkpeople_test/widgets/button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                //margin: const EdgeInsets.symmetric(horizontal: 19),
                height: 200,
                width: 200,
                child: SvgPicture.asset('assets/svgImages/circles_no_bg.svg')),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 19),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset('assets/svgImages/destination.svg')),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 9, top: 10),
                child: Text(
                  'Discover new places',
                  style: AppStyles.bigText,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Vulputate vitae ',
                  style: AppStyles.smallText,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'enim. Vulputate',
                  style: AppStyles.smallText,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'vitae',
                  style: AppStyles.smallText,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 55),
                child: CustomButton(
                  buttontext: 'GET STARTED',
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
