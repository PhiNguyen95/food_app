import 'package:flutter/material.dart';
import 'package:foodie_app/components/custom_app_bar.dart';
import 'package:foodie_app/resources/app_style.dart';
import '../../resources/app_color.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  MethodPayment? _methodPayment = MethodPayment.card;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPaddingButton),
        child: Column(
          children: <Widget>[
            const CustomAppBar(title: 'Payment'),
            const SizedBox(
              height: kDefaultPaddingButton,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kDefaultPadding)),
                    elevation: 4,
                    child: RadioListTile<MethodPayment>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      activeColor: kFoodAppRed,
                      title: const Text('Credit, debit Card'),
                      value: MethodPayment.card,
                      groupValue: _methodPayment,
                      onChanged: (MethodPayment? value) {
                        setState(() {
                          _methodPayment = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kDefaultPadding)),
                    elevation: 4,
                    child: RadioListTile<MethodPayment>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      activeColor: kFoodAppRed,
                      title: const Text('Paypal'),
                      value: MethodPayment.online,
                      groupValue: _methodPayment,
                      onChanged: (MethodPayment? value) {
                        setState(() {
                          _methodPayment = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kDefaultPadding)),
                    elevation: 4,
                    child: RadioListTile<MethodPayment>(
                      controlAffinity: ListTileControlAffinity.trailing,
                      activeColor: kFoodAppRed,
                      title: const Text('Cash on Delivery'),
                      value: MethodPayment.cash,
                      groupValue: _methodPayment,
                      onChanged: (MethodPayment? value) {
                        setState(() {
                          _methodPayment = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 4,
            ),
            ElevatedButton(
              onPressed: () {},
              style: CustomStyle.buttonThemeRed(context),
              child: const Text('Next'),
            ),
            const SizedBox(
              height: kDefaultPadding * 4,
            ),
          ],
        ),
      ),
    ));
  }
}

enum MethodPayment {
  card, online, cash
}