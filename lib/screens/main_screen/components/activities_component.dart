import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/activity_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

class ActivitiesComponent extends StatelessWidget {
  final Size size;
  const ActivitiesComponent({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxHeight: size.height, maxWidth: size.width * 0.8),
      margin: EdgeInsets.symmetric(vertical: defaultMargin * 2),
      child: Column(
        children: [
          TopicNameWidget(
            color: thridColor,
            topicName: 'Activities',
          ),
          Expanded(
            child: RotatedBox(
              quarterTurns: 1,
              child: ListWheelScrollView(
                itemExtent: 480,
                children: [
                  for (int i = 0; i < 5; i++)
                    ActivitiesCardWidget(
                      // width: 400,
                      // height: 400,
                      // color: colors[Random().nextInt(3)],

                      path: 'activity_1.jpg',
                      color: Colors.black45,
                    ),
                ],
                diameterRatio: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
