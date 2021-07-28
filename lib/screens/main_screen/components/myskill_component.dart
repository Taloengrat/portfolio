import 'package:flutter/material.dart';
import 'package:taloengrat_cv/models/my_skill_model.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/myskill_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

import '../../../constance.dart';

class MySkillComponent extends StatelessWidget {
  final Size size;

  const MySkillComponent({
    Key? key,
    required this.size,
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
                color: secondColor,
                topicName: 'My Skills',
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
          Wrap(
            alignment: WrapAlignment.center,
            children: listMyskill.map((e) {
              return MyskillCardWidget(
                title: e.title,
                detail: e.detail,
                pathImageIcon: e.path,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
