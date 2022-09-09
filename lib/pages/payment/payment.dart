import 'package:flutter/material.dart';
import 'package:foodie_app/components/custom_app_bar.dart';
import 'package:foodie_app/pages/payment/choose_address.dart';
import 'package:foodie_app/pages/payment/payment_method.dart';
import '../../resources/app_color.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(kDefaultPaddingButton),
            child: Column(
              children:  <Widget>[
                const CustomAppBar(title: 'Payment'),
                const SizedBox(
                  height: kDefaultPaddingButton,
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children:  <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChooseAddress()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kDefaultPadding)
                          ),
                          elevation: 4,
                          child: const ListTile(
                            title: Text('Choose Address'),
                            trailing: Icon(Icons.navigate_next),
                          ),
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethod()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kDefaultPadding)
                          ),
                          elevation: 4,
                          child: const ListTile(
                            title: Text('Payment Method'),
                            trailing: Icon(Icons.navigate_next),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
