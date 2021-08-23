import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/models/extracurricular_atvt_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/activity_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

class ExtracurricularActivitiesComponent extends StatelessWidget {
  final Size size;
  final TopicModel topic;
  final bool isEnglish;
  const ExtracurricularActivitiesComponent({
    Key? key,
    required this.size,
    required this.topic,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: size.width * 0.8),
      child: Wrap(
        alignment: WrapAlignment.start,
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
          ...extraccurricularATVModel
              .map((e) => ActivitiesCardWidget(
                    title: e.enTitle!,
                    path: e.pathImage!,
                    content: isEnglish ? e.enContain! : e.thContain!,
                    activityAxis: e.activityAxis,
                    color: e.color,
                  ))
              .toList()
        ],
      ),
    );
  }
}
