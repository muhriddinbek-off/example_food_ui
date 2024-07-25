import 'package:example_food_ui/models/category.dart';
import 'package:example_food_ui/models/pizza.dart';
import 'package:example_food_ui/screen/home/widget/advetising.dart';
import 'package:example_food_ui/screen/home/widget/pizza_widget.dart';
import 'package:example_food_ui/screen/home/widget/search.dart';
import 'package:example_food_ui/tools/app_color.dart';
import 'package:example_food_ui/tools/image.dart';
import 'package:example_food_ui/tools/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "NYC, Broadwa...",
              style: AppStyle.appBarTitleStyle(),
            ),
            SvgPicture.asset(AppImage.arrowBack),
          ],
        ),
        actions: [
          Stack(
            children: [
              SvgPicture.asset(AppImage.notifacation),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: AppColor.fF3E00,
                      shape: BoxShape.circle,
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(AppImage.bag),
                Positioned(
                    top: -10,
                    right: -9,
                    child: Container(
                      alignment: Alignment.center,
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: AppColor.fF3E00,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "2",
                        style: AppStyle.getNotifaction(),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        children: [
          const SearchWidget(),
          _getTitleText('Special offer'),
          const AdvetisingWidget(),
          const SizedBox(height: 15),
          Wrap(
              children: List.generate(categorys.length, (index) {
            return _getCategory(categorys[index], context);
          })),
          const SizedBox(height: 10),
          _getTitleListTile("Discount guaranteed!"),
          SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pizzas.length,
                  itemBuilder: (context, index) {
                    return PizzaWidget(img: pizzas[index]);
                  })),
        ],
      ),
    );
  }

  _getCategory(CatetgoryModel category, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.22,
      child: Column(
        children: [
          Image.asset(
            category.img,
            height: 50,
          ),
          Text(
            textAlign: TextAlign.center,
            category.title,
            style: AppStyle.getCategoryTitle(),
          ),
        ],
      ),
    );
  }

  _getTitleListTile(String title) {
    return ListTile(
      title: Text(title, style: AppStyle.getTitleText().copyWith(color: AppColor.a171725)),
      trailing: SvgPicture.asset(AppImage.arrowBack),
    );
  }

  _getTitleText(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: AppStyle.getTitleText(),
      ),
    );
  }
}
