import 'package:example_food_ui/tools/app_color.dart';
import 'package:example_food_ui/tools/image.dart';
import 'package:example_food_ui/tools/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 15, right: 10),
            child: SvgPicture.asset(
              AppImage.search,
              height: 10,
            ),
          ),
          border: InputBorder.none,
          fillColor: AppColor.fCF1F6,
          filled: true,
          hintText: 'What are you yearning for?',
          hintStyle: AppStyle.getSearchHinttext(),
        ),
      ),
    );
  }
}
