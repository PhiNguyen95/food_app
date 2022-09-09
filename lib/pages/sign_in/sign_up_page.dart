import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/components/custom_app_bar.dart';
import 'package:foodie_app/pages/sign_in/sign_in_page.dart';
import '../../components/textformfield.dart';
import '../../resources/app_color.dart';
import '../../resources/app_style.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPaddingButton),
          child: Column(
            children: <Widget>[
              const CustomAppBar(title: 'Sign Up'),
              const SizedBox(
                height: kDefaultPadding * 4,
              ),
              Text(
                'Register',
                style: CustomStyle.titleRedLarge(context),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                'Create your new account.',
                style: CustomStyle.textBackLarge(context),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: kDefaultPaddingButton * 2,
              ),
              const CustomTextFormField(hintText: 'Full Name'),
              const SizedBox(
                height: kDefaultPadding,
              ),
              const CustomTextFormField(hintText: 'Email or phone'),
              const SizedBox(
                height: kDefaultPadding,
              ),
              const CustomTextFormField(hintText: 'Password'),
              const SizedBox(
                height: kDefaultPadding,
              ),
              const CustomTextFormField(hintText: 'Confirm Password'),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    tristate: true,
                    checkColor: kFoodAppWhite,
                    activeColor: kFoodAppRed,
                    onChanged: (bool? value) => {value = true},
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'I agree to your ',
                        style: CustomStyle.textBackLarge(context),
                      ),
                      TextSpan(
                        text: 'privacy policy ',
                        style: CustomStyle.textRedLarge(context),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: CustomStyle.textBackLarge(context),
                      ),
                      TextSpan(
                        text: 'term & conditions.',
                        style: CustomStyle.textRedLarge(context),
                      ),
                    ]),
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
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                style: CustomStyle.buttonThemeRed(context),
                child: const Text('Sign up'),
              ),
              const SizedBox(
                height: kDefaultPaddingButton,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Already an account, ',
                    style: CustomStyle.textBackLarge(context),
                  ),
                  TextSpan(
                      text: 'login',
                      style: CustomStyle.textRedLarge(context)
                          ?.copyWith(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignInPage();
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
