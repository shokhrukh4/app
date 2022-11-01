import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:rent_app/models/main_house_card.dart';
import 'package:rent_app/resourses/app_icons.dart';
import 'package:rent_app/theme/app_colors.dart';
import 'package:rent_app/theme/app_text_style.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
      child: Column(
        children: [
          Container(
            child: const MainHouseCard(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Description',
                    style: AppTextStyle.MainBlackStyle,
                  ),
                  SizedBox(height: 20),
                  ReadMoreText(
                    'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars\.America\'s Best House Plans offers high quality',
                    trimLines: 2,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Show More',
                    lessStyle: AppTextStyle.CostStyle,
                    moreStyle: AppTextStyle.CostStyle,
                    style: AppTextStyle.MainGreyStyle,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.gradBlack,
                        foregroundImage: AssetImage(
                          'assets/images/9.png',
                        ),
                        radius: 30,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Garry Allen',
                            style: AppTextStyle.MainBlackStyle,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Owner',
                            style: AppTextStyle.MainGreyStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppColors.lightBlue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: 6,
                              child: SvgPicture.asset(
                                AppIcons.tel,
                                width: 18,
                                height: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: AppColors.lightBlue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Positioned(
                                top: 5,
                                left: 6,
                                child: SvgPicture.asset(
                                  AppIcons.messegefull,
                                  width: 18,
                                  height: 18,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Gallery',
                style: AppTextStyle.MainBlackStyle,
              ),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/3.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/4.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/5.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/6.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.gradBlack,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          '+5',
                          style: AppTextStyle.NameDetailScreen,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/7.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.mainWhite,
                        AppColors.gradWhite,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Price',
                            style: AppTextStyle.MainGreyStyle,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Rp. 2.500.000.000 / Year',
                            style: AppTextStyle.MainBlackStyle,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 140,
                          height: 50,
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
                              'Rent Now',
                              textAlign: TextAlign.center,
                              style: AppTextStyle.NameHomeScreen,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
