import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/components/custom_app_bar.dart';
import 'package:foodie_app/components/textformfield.dart';
import 'package:foodie_app/pages/cart/main_page.dart';
import 'package:foodie_app/pages/sign_in/sign_up_page.dart';
import 'package:foodie_app/resources/app_color.dart';
import 'package:foodie_app/resources/app_style.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPaddingButton),
          child: Column(
            children: <Widget>[
              const CustomAppBar(title: 'Sign In'),
              const Expanded(
                child: SizedBox(
                  height: kDefaultPadding * 4,
                ),
              ),
              Text(
                'Welcome Back',
                style: CustomStyle.titleRedLarge(context),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                'Login to your account.',
                style: CustomStyle.textBackLarge(context),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: kDefaultPaddingButton * 2,
              ),
              const CustomTextFormField(hintText: 'Email or Phone'),
              const SizedBox(
                height: kDefaultPadding,
              ),
              const CustomTextFormField(hintText: 'Password'),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: CustomStyle.textRedLarge(context)
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: kDefaultPaddingButton,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                style: CustomStyle.buttonThemeRed(context),
                child: const Text('Login'),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Do not have and account, ',
                    style: CustomStyle.textBackLarge(context),
                  ),
                  TextSpan(
                      text: 'Sign up',
                      style: CustomStyle.textRedLarge(context)
                          ?.copyWith(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUpPage();
                          }));
                        })
                ]),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
