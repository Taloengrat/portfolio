import 'package:flutter/material.dart';
import 'package:taloengrat_cv/models/other_model.dart';

import '../../../constance.dart';

class OtherWidget extends StatelessWidget {
  final OtherModel otherModel;
  final bool isEnglish;
  const OtherWidget({
    Key? key,
    required this.otherModel,
    required this.isEnglish,
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
        title: Text(isEnglish ? otherModel.enTitle! : otherModel.thTitle!,
            style: Theme.of(context).textTheme.bodyText1),
        subtitle: Text(
            isEnglish ? otherModel.enSubtitle! : otherModel.thSubtitle!,
            style: Theme.of(context).textTheme.bodyText2),
      ),
    );
  }
}
