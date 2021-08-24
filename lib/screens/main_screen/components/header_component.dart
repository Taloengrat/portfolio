import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/header_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/header_menu_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/language_switch_widget.dart';

import '../../../constance.dart';

class HeaderComponent extends StatefulWidget {
  final ScrollController scrollController;
  final Size size;
  final List<double> listTopicPosition;

  HeaderComponent({
    Key? key,
    required this.size,
    required this.scrollController,
    required this.listTopicPosition,
  }) : super(key: key);

  @override
  _HeaderComponentState createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    final language = Provider.of<LanguageProvider>(context).item;
    bool isEnglish = language == 'English';
    return Container(
      width: widget.size.width,
      height: widget.size.height,
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
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    maxHeight: 200,
                    maxWidth: 400,
                    minHeight: 200,
                    minWidth: 200,
                  ),
                  child: !isFinished
                      ? AnimatedTextKit(
                          onFinished: () => setState(() => isFinished = true),
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TyperAnimatedText(
                              isEnglish
                                  ? headerModel.enName
                                  : headerModel.thName,
                              // speed: Duration(milliseconds: 150),
                              textStyle: Theme.of(context).textTheme.headline3,
                            ),
                            TyperAnimatedText(
                                isEnglish
                                    ? headerModel.enPosition
                                    : headerModel.thPosition,
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
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
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              TextSpan(
                                  text: isEnglish
                                      ? headerModel.enPosition
                                      : headerModel.thPosition,
                                  style: Theme.of(context).textTheme.subtitle1),
                            ],
                          ),
                        ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              width: widget.size.width * (widget.size.width >= 830 ? 0.5 : 0.9),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuWidget(
                      message: isEnglish
                          ? topicList.elementAt(0).enTitle
                          : topicList.elementAt(0).thTitle,
                      color: primaryColor,
                      index: 0,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: isEnglish
                          ? topicList.elementAt(1).enTitle
                          : topicList.elementAt(1).thTitle,
                      color: secondColor,
                      index: 1,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: isEnglish
                          ? topicList.elementAt(2).enTitle
                          : topicList.elementAt(2).thTitle,
                      color: thridColor,
                      index: 2,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: isEnglish
                          ? topicList.elementAt(3).enTitle
                          : topicList.elementAt(3).thTitle,
                      color: fourthColor,
                      index: 3,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: isEnglish
                          ? topicList.elementAt(4).enTitle
                          : topicList.elementAt(4).thTitle,
                      color: fifthColor,
                      index: 4,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: isEnglish
                          ? topicList.elementAt(5).enTitle
                          : topicList.elementAt(5).thTitle,
                      color: sixthColor,
                      index: 5,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: LanguageSwitchWidget(),
          ),
        ],
      ),
    );
  }
}
