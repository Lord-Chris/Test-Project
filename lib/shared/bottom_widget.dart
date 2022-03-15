import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/constants/assets.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/no_connection.dart';

import 'size_config.dart';
import 'spacings.dart';

class BottomWidget extends StatelessWidget {
  final bool isStart;
  const BottomWidget(
    this.isStart, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.yMargin(context, 25),
          width: SizeConfig.xMargin(context, 40),
          decoration: const BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                offset: Offset(-30, 10),
                spreadRadius: 2,
                blurRadius: 20,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () => isStart
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const NoConnection()))
              : Navigator.pop(context),
          child: Container(
            height: SizeConfig.yMargin(context, 7),
            color: AppColors.main,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  isStart ? "START CHARGING" : "STOP CHARGING",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const XMargin(15),
                SvgPicture.asset(AppAssets.zap),
              ],
            ),
          ),
        ),
        Container(
          height: SizeConfig.yMargin(context, 7),
          color: AppColors.black,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const XMargin(20),
              SvgPicture.asset(AppAssets.menu),
              const Spacer(),
              SvgPicture.asset(AppAssets.car),
              const XMargin(20),
            ],
          ),
        ),
      ],
    );
  }
}
