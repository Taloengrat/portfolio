import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/header_model.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/language_switch_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constance.dart';

class HeaderComponent extends StatefulWidget {
  // final ScrollController scrollController;
  final Size size;

  HeaderComponent({
    Key? key,
    required this.size,
    // required this.scrollController,
  }) : super(key: key);

  @override
  _HeaderComponentState createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    // final position = Provider.of<WidgetPositionProvider>(context).item;
    final language = Provider.of<LanguageProvider>(context).item;
    final bool isEnglish = language == 'English';

    return Container(
      width: widget.size.width,
      height:
          widget.size.height <= heightTarget || widget.size.width <= widthTarget
              ? widget.size.height * 0.5
              : widget.size.height,
      child: Stack(
        children: [
          Align(
            child: Container(
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                color: Colors.black38,
                image: DecorationImage(
                  image: AssetImage(
                    background_header_image,
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, 1),
            child: Container(
              child: Image.asset(profile_picture),
            ),
          ),
          Align(
            alignment: Alignment(0.3, 0.3),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints(
                        maxHeight: widget.size.height <= heightTarget ||
                                widget.size.width <= widthTarget
                            ? 70
                            : 200,
                        maxWidth: widget.size.width <= widthTarget ? 130 : 400,
                      ),
                      child: !isFinished
                          ? AnimatedTextKit(
                              onFinished: () =>
                                  setState(() => isFinished = true),
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TyperAnimatedText(
                                  isEnglish
                                      ? headerModel.enName
                                      : headerModel.thName,
                                  // speed: Duration(milliseconds: 150),
                                  textStyle: widget.size.width <= widthTarget
                                      ? GoogleFonts.prompt(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.amber,
                                            fontSize: 40.sp,
                                          ),
                                        )
                                      : Theme.of(context).textTheme.headline3,
                                ),
                                TyperAnimatedText(
                                    isEnglish
                                        ? headerModel.enPosition
                                        : headerModel.thPosition,
                                    textStyle: widget.size.width <= widthTarget
                                        ? GoogleFonts.prompt(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white70,
                                              fontSize: 22.sp,
                                            ),
                                          )
                                        : Theme.of(context).textTheme.subtitle1,
                                    // speed: Duration(milliseconds: 100),
                                    curve: Curves.easeInCubic),
                              ],
                            )
                          : RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: isEnglish
                                        ? headerModel.enName
                                        : headerModel.thName,
                                    style: widget.size.width <= widthTarget
                                        ? GoogleFonts.prompt(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.amber,
                                              fontSize: 40.sp,
                                            ),
                                          )
                                        : Theme.of(context).textTheme.headline3,
                                  ),
                                  TextSpan(
                                    text: isEnglish
                                        ? headerModel.enPosition
                                        : headerModel.thPosition,
                                    style: widget.size.width <= widthTarget
                                        ? GoogleFonts.prompt(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white70,
                                              fontSize: 22.sp,
                                            ),
                                          )
                                        : Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: widget.size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.white,
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     alignment: Alignment.center,
          //     width: widget.size.width *
          //         (widget.size.width <= widthTarget ? 0.9 : 0.6),
          //     height: 70,
          //     padding: EdgeInsets.symmetric(
          //       horizontal: defaultPadding * 2 as double,
          //     ),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(8),
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey,
          //           offset: Offset(0.0, 1.0),
          //           blurRadius: 6.0,
          //         ),
          //       ],
          //     ),
          //     child: Scrollbar(
          //       child: SingleChildScrollView(
          //         scrollDirection: Axis.horizontal,
          //         physics: ScrollPhysics(),
          //         child: Row(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             MenuWidget(
          //               message: isEnglish
          //                   ? topicList.elementAt(0).enTitle
          //                   : topicList.elementAt(0).thTitle,
          //               color: primaryColor,
          //               index: 0,
          //               scrollController: widget.scrollController,
          //               // listTopicPosition: widget.listTopicPosition,
          //               size: widget.size,
          //               position: position[1],
          //             ),
          //             MenuWidget(
          //               message: isEnglish
          //                   ? topicList.elementAt(1).enTitle
          //                   : topicList.elementAt(1).thTitle,
          //               color: secondColor,
          //               index: 1,
          //               scrollController: widget.scrollController,
          //               // listTopicPosition: widget.listTopicPosition,
          //               size: widget.size,
          //               position: position[2],
          //             ),
          //             MenuWidget(
          //               message: isEnglish
          //                   ? topicList.elementAt(2).enTitle
          //                   : topicList.elementAt(2).thTitle,
          //               color: thridColor,
          //               index: 2,
          //               scrollController: widget.scrollController,
          //               // listTopicPosition: widget.listTopicPosition,
          //               size: widget.size,
          //               position: position[3],
          //             ),
          //             MenuWidget(
          //               message: isEnglish
          //                   ? topicList.elementAt(3).enTitle
          //                   : topicList.elementAt(3).thTitle,
          //               color: fourthColor,
          //               index: 3,
          //               scrollController: widget.scrollController,
          //               // listTopicPosition: widget.listTopicPosition,
          //               size: widget.size,
          //               position: position[4],
          //             ),
          //             MenuWidget(
          //               message: isEnglish
          //                   ? topicList.elementAt(4).enTitle
          //                   : topicList.elementAt(4).thTitle,
          //               color: fifthColor,
          //               index: 4,
          //               scrollController: widget.scrollController,
          //               // listTopicPosition: widget.listTopicPosition,
          //               size: widget.size,
          //               position: position[5],
          //             ),
          //             MenuWidget(
          //               message: isEnglish
          //                   ? topicList.elementAt(5).enTitle
          //                   : topicList.elementAt(5).thTitle,
          //               color: sixthColor,
          //               index: 5,
          //               scrollController: widget.scrollController,
          //               // listTopicPosition: widget.listTopicPosition,
          //               size: widget.size,
          //               position: position[6],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          Visibility(
            visible: enableLanguage,
            child: Align(
              alignment: Alignment.topRight,
              child: LanguageSwitchWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
