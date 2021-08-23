import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

class EducationTileWidget extends StatelessWidget {
  final String? path;
  final String title;
  final String subTitle;
  const EducationTileWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(5),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: thridColor,
              width: 5,
            ),
          ),
        ),
        title: Text(title, style: Theme.of(context).textTheme.bodyText1),
        subtitle: Text(subTitle, style: Theme.of(context).textTheme.bodyText2),
      ),
    );
  }
}
