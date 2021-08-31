import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/models/extracurricular_atvt_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/widget_position_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/activity_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExtracurricularActivitiesComponent extends StatefulWidget {
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
  _ExtracurricularActivitiesComponentState createState() =>
      _ExtracurricularActivitiesComponentState();
}

class _ExtracurricularActivitiesComponentState
    extends State<ExtracurricularActivitiesComponent> {
  GlobalKey _key = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback(_getPosition);
    super.initState();
  }

  _getPosition(_) {
    final RenderBox? myStotyBox =
        _key.currentContext!.findRenderObject() as RenderBox;
    final position = myStotyBox!.localToGlobal(Offset.zero);
    Provider.of<WidgetPositionProvider>(context, listen: false)
        .update(3, position.dy);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin * 2,
        horizontal: defaultSpace.sp * 3,
      ),
      constraints: BoxConstraints(maxWidth: widget.size.width * 0.8),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Row(
            children: [
              TopicNameWidget(
                size: widget.size,
                color: primaryColor,
                topicName: widget.isEnglish
                    ? widget.topic.enTitle
                    : widget.topic.thTitle,
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
                    content: widget.isEnglish ? e.enContain! : e.thContain!,
                    activityAxis: e.activityAxis,
                    color: e.color,
                  ))
              .toList()
        ],
      ),
    );
  }
}
