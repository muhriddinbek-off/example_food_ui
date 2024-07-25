import 'package:example_food_ui/tools/image.dart';

class CatetgoryModel {
  final String img;
  final String title;
  CatetgoryModel({
    required this.img,
    required this.title,
  });
}

List<CatetgoryModel> categorys = [
  CatetgoryModel(img: AppImage.flash, title: "Flash deals"),
  CatetgoryModel(img: AppImage.shop, title: "Nice shop"),
  CatetgoryModel(img: AppImage.points, title: "Points"),
  CatetgoryModel(img: AppImage.bun, title: "Bun pho"),
  CatetgoryModel(img: AppImage.vegatable, title: "Vegetable"),
  CatetgoryModel(img: AppImage.bQ, title: "BBQ"),
  CatetgoryModel(img: AppImage.other, title: "other"),
  CatetgoryModel(img: AppImage.drink, title: "Drink"),
  CatetgoryModel(img: AppImage.sweetFood, title: "Sweet Food"),
  CatetgoryModel(img: AppImage.koreanFood, title: "Korean Food"),
  CatetgoryModel(img: AppImage.fastFood, title: "Fastfood"),
  CatetgoryModel(img: AppImage.rice, title: "Rice"),
];
