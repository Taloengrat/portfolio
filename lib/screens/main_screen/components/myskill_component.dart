import 'package:flutter/material.dart';
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
        maxHeight: size.height,
        maxWidth: size.width * 0.8,
      ),
      margin: EdgeInsets.symmetric(vertical: defaultMargin * 2),
      child: Column(
        children: [
          TopicNameWidget(
            color: secondColor,
            topicName: 'My Skills',
          )
        ],
      ),
    );
  }
}