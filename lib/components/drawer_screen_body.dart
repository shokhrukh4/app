import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_app/resourses/app_icons.dart';
import 'package:rent_app/theme/app_colors.dart';
import 'package:rent_app/theme/app_text_style.dart';

class DrawerScreenBody extends StatelessWidget {
  const DrawerScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.gradWhite,
                  width: 3,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/');
                      },
                      child: Container(
                        width: 170,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: AppColors.mainWhite,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppIcons.home),
                            const SizedBox(width: 20),
                            const Text(
                              'Home',
                              style: AppTextStyle.DrawerBlur,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppIcons.person),
                            const SizedBox(width: 20),
                            const Text(
                              'Profile',
                              style: AppTextStyle.DrawerWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppIcons.nearby),
                            const SizedBox(width: 20),
                            const Text(
                              'Nearby',
                              style: AppTextStyle.DrawerWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
              ],
            ),
          ),
          const SizedBox(height: 35),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.gradWhite,
                  width: 3,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppIcons.bookmark),
                            const SizedBox(width: 20),
                            const Text(
                              'Bookmark',
                              style: AppTextStyle.DrawerWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              fit: StackFit.passthrough,
                              children: [
                                SvgPicture.asset(AppIcons.notifications),
                                Positioned(
                                  top: 0,
                                  left: 8,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.mainRed,
                                    ),
                                    width: 7,
                                    height: 7,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Notification',
                              style: AppTextStyle.DrawerWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              fit: StackFit.passthrough,
                              children: [
                                SvgPicture.asset(AppIcons.messege),
                                Positioned(
                                  top: 0,
                                  left: 9,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.mainRed,
                                    ),
                                    width: 7,
                                    height: 7,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Message',
                              style: AppTextStyle.DrawerWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.setting),
                          const SizedBox(width: 20),
                          const Text(
                            'Settings',
                            style: AppTextStyle.DrawerWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.help),
                          const SizedBox(width: 20),
                          const Text(
                            'Help',
                            style: AppTextStyle.DrawerWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.logout),
                          const SizedBox(width: 20),
                          const Text(
                            'Logout',
                            style: AppTextStyle.DrawerWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
            ],
          ),
        ],
      ),
    );
  }
}
