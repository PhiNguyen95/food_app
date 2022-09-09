import 'package:flutter/material.dart';
import 'package:foodie_app/components/rating_bar.dart';
import 'package:foodie_app/resources/app_color.dart';
import 'package:foodie_app/resources/app_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.numOrder,
      required this.price,
      required this.numStar})
      : super(key: key);

  final String imageUrl;
  final String title;
  final String subTitle;
  final int numOrder;
  final double price;
  final double numStar;

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
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
                            title,
                            style: CustomStyle.titleBlack(context),
                          ),
                          const Spacer(),
                          Text(
                            '${numOrder}x',
                            style: CustomStyle.textRedLarge(context)?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          subTitle,
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
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),
                          ),
                          const Spacer(),
                          RatingBarCustom(star: numStar),
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
