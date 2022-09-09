import 'package:flutter/material.dart';
import 'package:foodie_app/pages/sign_in/sign_in_page.dart';
import 'package:foodie_app/pages/sign_in/sign_up_page.dart';
import 'package:foodie_app/resources/app_color.dart';
import 'package:foodie_app/resources/app_style.dart';

import '../../gen/assets.gen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              Assets.images.welcomescreen.path,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            'Welcome',
            style: CustomStyle.titleRedLarge(context),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consect-",
            textAlign: TextAlign.center,
            softWrap: true,
            style: CustomStyle.textBackLarge(context),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "etur adipiscing elit. Vivamus et felis",
              textAlign: TextAlign.center,
              softWrap: true,
              style: CustomStyle.textBackLarge(context),
            ),
          ),
          Text(
            "dolor. Donec vitae facilistis velit.",
            textAlign: TextAlign.center,
            softWrap: true,
            style: CustomStyle.textBackLarge(context),
          ),
          const SizedBox(
            height: kDefaultPadding * 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingButton),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                );
              },
              style: CustomStyle.buttonThemeRed(context),
              child: const Text('Login'),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingButton),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              style: CustomStyle.buttonThemeWhite(context),
              child: const Text('Sign up'),
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
