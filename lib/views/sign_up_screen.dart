import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thinkpeople_test/constants/text_styles.dart';
import 'package:thinkpeople_test/views/sign_in_screen.dart';
import 'package:thinkpeople_test/widgets/button.dart';
import 'package:thinkpeople_test/widgets/custom_textfiled.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 200,
                  width: 200,
                  child:
                      SvgPicture.asset('assets/svgImages/circles_no_bg.svg')),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 9),
                  child: Text(
                    'Welcome Onboard',
                    style: AppStyles.bigText,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Vulputate vitae enim . Vulputa',
                    style: AppStyles.smallText,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 35),
                  child: Text(
                    ' vitae enim ',
                    style: AppStyles.smallText,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: CustomTextField(
                  obscureText: false,
                  hintText: 'name',
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: CustomTextField(
                  obscureText: false,
                  hintText: 'email',
                ),
              ),
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
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 55, bottom: 4),
                  child: CustomButton(
                    buttontext: 'Register',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Already Have an Account?',
                            style: AppStyles.greytextStyle),
                        TextSpan(text: 'Sign In.', style: AppStyles.signText),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
