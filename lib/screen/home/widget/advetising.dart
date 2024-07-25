import 'package:example_food_ui/tools/image.dart';
import 'package:example_food_ui/tools/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdvetisingWidget extends StatelessWidget {
  const AdvetisingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Image.asset(AppImage.burger),
            ),
            Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Transform.flip(
                    flipY: true,
                    child: SvgPicture.asset(
                      AppImage.redBackground,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                    left: 20,
                    bottom: 15,
                    child: Column(
                      children: [
                        Text(
                          'WHAT TO  \nEAT TODAY',
                          style: AppStyle.getNotifaction().copyWith(fontSize: 24, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'shop up to 50% off',
                          style: AppStyle.getNotifaction().copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
