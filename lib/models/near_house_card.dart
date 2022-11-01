import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_app/resourses/app_icons.dart';
import 'package:rent_app/theme/app_colors.dart';
import 'package:rent_app/theme/app_text_style.dart';

class NearHouseCard extends StatelessWidget {
  const NearHouseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context).pushNamed('/details');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 272,
        width: 222,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(186, 0, 0, 0),
                Color.fromARGB(0, 255, 255, 255),
              ],
              begin: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                          color: AppColors.gradBlack,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIcons.nearby),
                          const SizedBox(width: 7),
                          const Text(
                            '1.8 km',
                            style: AppTextStyle.HouseBtn,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dreamsville House',
                      style: AppTextStyle.NameHomeScreen,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Jl. Sultan Iskandar Muda',
                      style: AppTextStyle.HomeNameSubtitle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
