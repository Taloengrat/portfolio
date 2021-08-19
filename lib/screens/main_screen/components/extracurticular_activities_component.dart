import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/models/extracurricular_atvt_model.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
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
    final language = Provider.of<LanguageProvider>(context).item;

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
              children: extraccurricularATVModel
                  .map((e) => ActivitiesCardWidget(
                        path: e.pathImage!,
                        content:
                            language == 'English' ? e.enContain! : e.thContain!,
                        activityAxis: e.activityAxis,
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
