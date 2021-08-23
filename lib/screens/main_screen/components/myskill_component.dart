import 'package:flutter/material.dart';
import 'package:taloengrat_cv/models/my_skill_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/skill_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

import '../../../constance.dart';

class MySkillComponent extends StatelessWidget {
  final Size size;
  final TopicModel topic;
  final bool isEnglish;

  const MySkillComponent({
    Key? key,
    required this.size,
    required this.topic,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: size.width * 0.8,
      ),
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.symmetric(vertical: defaultMargin as double),
      child: Wrap(
        alignment: WrapAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              TopicNameWidget(
                color: primaryColor,
                topicName: isEnglish ? topic.enTitle : topic.thTitle,
              ),
              Expanded(
                child: Divider(
                  height: 25,
                  thickness: 5,
                  color: Colors.blueGrey[600],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            // alignment: WrapAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ...listMyskill.map((e) {
                      if (e.skilType == SKILL_TYPE.LANGUAGE) {
                        return MyskillCardWidget(
                          title: e.title,
                          level: e.skillLevel,
                          detail: e.detail,
                          pathImageIcon: e.path,
                        );
                      } else {
                        return Container();
                      }
                    }).toList()
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ...listMyskill.map((e) {
                      if (e.skilType == SKILL_TYPE.TOOL) {
                        return MyskillCardWidget(
                          title: e.title,
                          level: e.skillLevel,
                          detail: e.detail,
                          pathImageIcon: e.path,
                        );
                      } else {
                        return Container();
                      }
                    }).toList()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
