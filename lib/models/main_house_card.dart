import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_app/resourses/app_icons.dart';
import 'package:rent_app/theme/app_colors.dart';
import 'package:rent_app/theme/app_text_style.dart';

class MainHouseCard extends StatelessWidget {
  const MainHouseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 305,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(231, 0, 0, 0),
            Color.fromARGB(0, 255, 255, 255),
          ], begin: Alignment.bottomRight, end: Alignment.topRight),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.gradBlack,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                        AppIcons.left,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.gradBlack,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        AppIcons.bookmark,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dreamsville House',
                        style: AppTextStyle.NameDetailScreen,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Jl. Sultan Iskandar Muda, Jakarta selatan',
                        style: AppTextStyle.HomeNameSubtitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.gradWhite),
                              ),
                              Positioned(
                                top: 8,
                                left: 6,
                                child: SvgPicture.asset(
                                  AppIcons.bed,
                                  color: AppColors.mainWhite,
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Bedroom',
                            style: AppTextStyle.HouseBtn,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.gradWhite),
                            child: const Icon(
                              Icons.bathtub_outlined,
                              color: AppColors.mainWhite,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Bathroom',
                            style: AppTextStyle.HouseBtn,
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
      ),
    );
  }
}
