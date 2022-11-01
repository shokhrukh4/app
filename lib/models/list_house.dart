import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_app/resourses/app_icons.dart';
import 'package:rent_app/theme/app_colors.dart';
import 'package:rent_app/theme/app_text_style.dart';

class ListHouse extends StatelessWidget {
  const ListHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/1.jpg',
                width: 100,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Orchad House',
                  style: AppTextStyle.MainBlackStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Rp. 2.500.000.000 / Year',
                  style: AppTextStyle.CostStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppIcons.bed),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'Bedroom',
                          style: AppTextStyle.MainGreyStyle,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.bathtub_outlined,
                          color: AppColors.mainGrey,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Bathroom',
                          style: AppTextStyle.MainGreyStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
