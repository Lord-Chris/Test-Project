import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/constants/assets.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/shared/spacings.dart';

import 'shared/bottom_widget.dart';
import 'shared/circular_progress_paint.dart';
import 'shared/size_config.dart';

class ConnectionEstablished extends StatelessWidget {
  const ConnectionEstablished({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.greenLine,
                  width: 4,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.subMain,
                    child: Icon(
                      Icons.done,
                      color: AppColors.white,
                    ),
                  ),
                  YMargin(SizeConfig.yMargin(context, 5)),
                  Container(
                    height: SizeConfig.yMargin(context, 28),
                    width: SizeConfig.yMargin(context, 28),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                    child: CustomPaint(
                      painter: CircularProgressPaint(
                        progress: 0,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: SizeConfig.yMargin(context, 2.5)),
                        alignment: Alignment.topCenter,
                        height: SizeConfig.yMargin(context, 28),
                        width: SizeConfig.yMargin(context, 28),
                        child: Text(
                          "03",
                          style: TextStyle(
                            fontSize: SizeConfig.yMargin(context, 13),
                            fontWeight: FontWeight.bold,
                            color: AppColors.fadedMain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const YMargin(20),
                Text(
                  "Connection Established",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.black.withOpacity(0.8),
                  ),
                ),
                const Spacer(flex: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAssets.ac,
                      height: 20,
                    ),
                    XMargin(SizeConfig.xMargin(context, 2)),
                    const Text(
                      "AC  3.3kw",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 4),
                const BottomWidget(true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
