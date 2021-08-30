import 'package:flutter/material.dart';
import 'package:taloengrat_cv/models/education_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/education_tile_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

import '../../../constance.dart';

class EducationComponent extends StatelessWidget {
  final Size size;
  final TopicModel topic;
  final bool isEnglish;

  const EducationComponent({
    Key? key,
    required this.size,
    required this.topic,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: size.height,
        maxWidth: size.width * 0.8,
      ),
      margin: EdgeInsets.symmetric(vertical: defaultMargin * 2),
      child: Wrap(
        // alignment: WrapAlignment.center,
        children: [
          Row(
            children: [
              TopicNameWidget(
                size: size,
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
          Column(
            children: educationModelData
                .map((e) => EducationTileWidget(
                      size: size,
                      color: e.color,
                      path: e.logoPath,
                      title: (isEnglish ? e.enUniversity : e.thUniversity) +
                          ' - ' +
                          (isEnglish ? e.yearEn : e.yearTh),
                      subTitle: isEnglish ? e.enDepartment : e.thDepartment,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
