import 'package:flutter/material.dart';
import 'package:foodie_app/pages/payment/payment.dart';
import 'package:foodie_app/resources/app_color.dart';
import 'package:foodie_app/resources/app_style.dart';

class CustomListTileDelivery extends StatelessWidget {
  const CustomListTileDelivery({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            color: kFoodAppWhite,
            borderRadius: BorderRadius.circular(kDefaultPaddingButton * 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery Time',
                            style: CustomStyle.titleBlack(context),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.lock_clock,
                            color: kFoodAppRed,
                          ),
                          Text(
                            '25 mins',
                            style: CustomStyle.textBackLarge(context)?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Total',
                          style: CustomStyle.textBackSmall(context),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "\$ ",
                            style: CustomStyle.textRedLarge(context),
                          ),
                          Text(
                            price.toStringAsFixed(2),
                            style: CustomStyle.titleBlack(context)?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kFoodAppRed,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        kDefaultPadding))),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment()));
                            },
                            child: Text(
                              'Place Order',
                              style: CustomStyle.textWhiteLarge(context),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
