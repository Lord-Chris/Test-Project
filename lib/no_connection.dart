import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants/assets.dart';
import 'constants/colors.dart';
import 'shared/bottom_widget.dart';
import 'shared/circular_progress_paint.dart';
import 'shared/size_config.dart';
import 'shared/spacings.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                ),
                child: CustomPaint(
                  painter: CircularProgressPaint(
                    progress: 25,
                  ),
                  child: Container(
                    padding:
                        EdgeInsets.only(top: SizeConfig.yMargin(context, 2.5)),
                    alignment: Alignment.topCenter,
                    height: SizeConfig.yMargin(context, 28),
                    width: SizeConfig.yMargin(context, 28),
                    child: Text(
                      "10%",
                      style: TextStyle(
                        fontSize: SizeConfig.yMargin(context, 12),
                        fontWeight: FontWeight.bold,
                        color: AppColors.fadedMain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                YMargin(SizeConfig.yMargin(context, 0.5)),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    icon: const Icon(Icons.close),
                    iconSize: SizeConfig.yMargin(context, 2),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Text(
                  "Your car is in charging mode.\nDo not unplug cable",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(context, 3.8),
                    color: const Color.fromRGBO(33, 38, 52, 1),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(flex: 3),
                    SvgPicture.asset(
                      AppAssets.ac,
                      height: SizeConfig.yMargin(context, 1.8),
                    ),
                    const XMargin(10),
                    Text(
                      "AC  3.3kw",
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(context, 3.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.calender,
                      height: SizeConfig.yMargin(context, 1.8),
                    ),
                    const XMargin(10),
                    Text(
                      "10 Aug",
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(context, 3.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.time,
                      height: SizeConfig.yMargin(context, 1.8),
                    ),
                    const XMargin(10),
                    Text(
                      "6:00pm",
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(context, 3.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(flex: 3),
                    Stack(
                      children: [
                        Container(
                          height: SizeConfig.yMargin(context, 19),
                          width: SizeConfig.xMargin(context, 21),
                          alignment: Alignment.centerLeft,
                          child: const InfoBox(
                            mainText: "10%",
                            subText: "Charging",
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: Center(
                            child: Container(
                              height: SizeConfig.yMargin(context, 3),
                              width: SizeConfig.xMargin(context, 5),
                              decoration: BoxDecoration(
                                color: AppColors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.main.withOpacity(0.8),
                                    offset: const Offset(0, 2),
                                    spreadRadius: 2,
                                    blurRadius: 6,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.stationBox,
                                    height: 1000,
                                    width: 1000,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned.fill(
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppAssets.zap,
                                        fit: BoxFit.cover,
                                        height:
                                            SizeConfig.yMargin(context, 1.8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const InfoBox(mainText: "15:34", subText: "Time Left"),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: SizeConfig.yMargin(context, 19),
                          width: SizeConfig.xMargin(context, 23),
                          alignment: Alignment.centerLeft,
                          child: const InfoBox(
                            mainText: "55.99",
                            subText: "Amount Left",
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: SizeConfig.yMargin(context, 3),
                            width: SizeConfig.xMargin(context, 19),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.main,
                            ),
                            child: Text(
                              "Recharge now",
                              style: TextStyle(
                                fontSize: SizeConfig.textSize(context, 2.8),
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
                const Spacer(flex: 4),
                const BottomWidget(false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String mainText;
  final String subText;
  const InfoBox({
    Key? key,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.yMargin(context, 17),
      width: SizeConfig.xMargin(context, 21),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [AppColors.black, AppColors.blackGradient],
          stops: [.3, .6],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Spacer(flex: 7),
          Text(
            mainText,
            style: TextStyle(
              fontSize: SizeConfig.textSize(context, 8),
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          const Spacer(flex: 1),
          Text(
            subText,
            style: TextStyle(
              fontSize: SizeConfig.textSize(context, 3.3),
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(137, 146, 165, 1),
            ),
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
