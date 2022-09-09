import 'package:flutter/material.dart';
import 'package:foodie_app/components/custom_app_bar.dart';
import 'package:foodie_app/resources/app_style.dart';
import '../../resources/app_color.dart';

class ChooseAddress extends StatefulWidget {
  const ChooseAddress({Key? key}) : super(key: key);

  @override
  State<ChooseAddress> createState() => _ChooseAddressState();
}

class _ChooseAddressState extends State<ChooseAddress> {
  Address? _address = Address.home;
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
                        child: RadioListTile<Address>(
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: kFoodAppRed,
                          title: const Text('My Home Address'),
                          subtitle: const Text('''Home
(503) 338-5200 15612 Fisher Island Dr
Miami Beach, Florida(FL), 33109'''),
                          isThreeLine: true,
                          value: Address.home,
                          groupValue: _address,
                          onChanged: (Address? value) {
                            setState(() {
                              _address = value;
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
                        child: RadioListTile<Address>(
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: kFoodAppRed,
                          title: const Text('My Office Address'),
                          subtitle: const Text('''Office
(503) 338-5200 15612 Fisher Island Dr
Miami Beach, Florida(FL), 33109'''),
                          isThreeLine: true,
                          value: Address.office,
                          groupValue: _address,
                          onChanged: (Address? value) {
                            setState(() {
                              _address = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding * 4,
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: CustomStyle.buttonThemeWhiteSmall(context),
                  child: const Text('Add New Address'),
                ),

                const SizedBox(
                  height: kDefaultPadding * 4,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: CustomStyle.buttonThemeRed(context),
                  child: const Text('Done'),
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

enum Address {
  home, office
}