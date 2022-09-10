import 'package:flutter/material.dart';
import 'package:foodie_app/components/custom_app_bar.dart';
import 'package:foodie_app/components/delivery_card.dart';

import '../../components/list_tile.dart';
import '../../gen/assets.gen.dart';
import '../../resources/app_color.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPaddingButton),
          child: Column(
            children: <Widget>[
              const CustomAppBar(title: 'Cart'),
              const SizedBox(
                height: kDefaultPaddingButton,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    CustomListTile(
                      imageUrl: Assets.images.chicken.path,
                      title: "Fried Chicken",
                      subTitle: "Golden brown fried chicken",
                      numOrder: 2,
                      price: 20.00,
                      numStar: 4.5,
                    ),
                    CustomListTile(
                      imageUrl: Assets.images.bread.path,
                      title: "Cheese Sandwich",
                      subTitle: "Grilled Cheese Sandwich",
                      numOrder: 3,
                      price: 18.00,
                      numStar: 4,
                    ),
                    CustomListTile(
                      imageUrl: Assets.images.eggSpaghetty.path,
                      title: "Egg Pasta",
                      subTitle: "Spicy Chicken Pasta",
                      numOrder: 1,
                      price: 15.00,
                      numStar: 5,
                    ),
                  ],
                ),
              ),
              const CustomListTileDelivery(
                price: 109.00,
              )
            ],
          ),
        ),
      ),
    );
  }
}
