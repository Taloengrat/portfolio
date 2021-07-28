import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/activity_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

class ExtracurricularActivitiesComponent extends StatelessWidget {
  final Size size;
  const ExtracurricularActivitiesComponent({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: size.width * 0.8),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Row(
            children: [
              TopicNameWidget(
                color: thridColor,
                topicName: 'Extracurricular activities',
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
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                ActivitiesCardWidget(
                  path: 'images/activities/extracurricular_1.PNG',
                  color: Colors.grey,
                  content: 'GCDP RMUTT COMPETITION',
                )
            ],
          ),
        ],
      ),
    );
  }
}
