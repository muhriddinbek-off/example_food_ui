import 'package:example_food_ui/models/pizza.dart';
import 'package:example_food_ui/tools/app_color.dart';
import 'package:example_food_ui/tools/image.dart';
import 'package:example_food_ui/tools/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PizzaWidget extends StatelessWidget {
  final PizzaModel img;
  const PizzaWidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 140,
                width: 190,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img.img), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                ),
              ),
              Positioned(
                top: 6,
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 54,
                  color: AppColor.fF3E00,
                  child: Text(
                    'PROMO',
                    style: AppStyle.getTitleText().copyWith(color: AppColor.white, fontSize: 10),
                  ),
                ),
              ),
              Positioned(
                bottom: -10,
                right: 6,
                child: Container(
                  alignment: Alignment.center,
                  height: 28,
                  width: 116,
                  decoration: BoxDecoration(
                    color: AppColor.l32C45,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    '4% off your order',
                    style: AppStyle.getTitleText().copyWith(color: AppColor.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'Pizza Hut',
            style: AppStyle.getTitleText().copyWith(color: AppColor.b12121, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '1.5 km |',
                    style: AppStyle.getCategoryTitle().copyWith(color: AppColor.a171725, fontSize: 14),
                  ),
                  SvgPicture.asset(AppImage.star),
                  Text(
                    '4.8(1.2K)',
                    style: AppStyle.getCategoryTitle().copyWith(color: AppColor.a171725, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              SvgPicture.asset(AppImage.favourite),
            ],
          )
        ],
      ),
    );
  }
}
