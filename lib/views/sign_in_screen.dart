import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thinkpeople_test/constants/text_styles.dart';
import 'package:thinkpeople_test/views/sign_up_screen.dart';
import 'package:thinkpeople_test/widgets/button.dart';
import 'package:thinkpeople_test/widgets/custom_textfiled.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 200,
                  width: 200,
                  child:
                      SvgPicture.asset('assets/svgImages/circles_no_bg.svg')),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Welcome Back',
                    style: AppStyles.bigText,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 19),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset('assets/svgImages/city_driver.svg')),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: CustomTextField(
                  obscureText: false,
                  hintText: 'username',
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: CustomTextField(
                  obscureText: true,
                  hintText: 'password',
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5, top: 20),
                  child: Text(
                    'Forgot Password',
                    style: AppStyles.signText,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 4),
                  child: CustomButton(
                    buttontext: 'Log in',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don\'t Have an Account?',
                            style: AppStyles.greytextStyle),
                        TextSpan(text: 'Sign Up.', style: AppStyles.signText),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
