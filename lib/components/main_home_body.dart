import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_app/models/list_house.dart';
import 'package:rent_app/models/near_house_card.dart';
import 'package:rent_app/resourses/app_icons.dart';
import 'package:rent_app/theme/app_colors.dart';
import 'package:rent_app/theme/app_text_style.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.mainWhite,
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.only(top: 60, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Location',
                          style: AppTextStyle.MainGreyStyle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Jakarta',
                              style: AppTextStyle.MainBlackStyle,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: SvgPicture.asset(
                                AppIcons.down,
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  fit: StackFit.passthrough,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: SvgPicture.asset(
                          AppIcons.notifications,
                          color: AppColors.mainBlack,
                          width: 25,
                          height: 25,
                        )),
                    Positioned(
                      top: 12,
                      right: 22,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.mainRed,
                        ),
                        width: 8,
                        height: 8,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                const Flexible(
                  child: TextField(
                    style: AppTextStyle.MainBlackStyle,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search address, or near you ',
                        hintStyle: AppTextStyle.MainGreyStyle,
                        filled: true,
                        fillColor: AppColors.bgGrey,
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    setState(() {
                      xOffset = 200;
                      yOffset = 100;
                      scaleFactor = 0.8;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffA0DAFB),
                              Color(0xff0A8ED9),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: SvgPicture.asset(
                          AppIcons.menu,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffA0DAFB),
                            Color(0xff0A8ED9),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'House',
                          style: AppTextStyle.HouseBtn,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Apartment',
                        style: AppTextStyle.MainGreyStyle,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Hotel',
                        style: AppTextStyle.MainGreyStyle,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Villa',
                        style: AppTextStyle.MainGreyStyle,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Cottage',
                        style: AppTextStyle.MainGreyStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Near from you',
                  style: AppTextStyle.MainBlackStyle,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See more',
                    style: AppTextStyle.MainGreyStyle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                NearHouseCard(),
                NearHouseCard(),
                NearHouseCard(),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best for you',
                  style: AppTextStyle.MainBlackStyle,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See more',
                    style: AppTextStyle.MainGreyStyle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ListHouse(),
                  ListHouse(),
                  ListHouse(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
