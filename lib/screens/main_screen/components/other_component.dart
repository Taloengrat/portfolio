import 'package:flutter/material.dart';
import 'package:taloengrat_cv/models/other_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/other_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

import '../../../constance.dart';

class OtherComponent extends StatefulWidget {
  final Size size;
  final TopicModel topicModel;
  final bool isEnglish;
  OtherComponent({
    Key? key,
    required this.size,
    required this.topicModel,
    required this.isEnglish,
  }) : super(key: key);

  @override
  _OtherComponentState createState() => _OtherComponentState();
}

class _OtherComponentState extends State<OtherComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: widget.size.width * 0.8,
      ),
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin * 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TopicNameWidget(
                color: primaryColor,
                topicName: widget.isEnglish
                    ? widget.topicModel.enTitle
                    : widget.topicModel.thTitle,
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
            children: otherModel
                .map(
                  (e) => OtherWidget(
                    otherModel: e,
                    isEnglish: widget.isEnglish,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
