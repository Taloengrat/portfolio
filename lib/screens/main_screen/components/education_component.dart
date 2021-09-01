import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/education_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/widget_position_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/education_tile_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constance.dart';

class EducationComponent extends StatefulWidget {
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
  _EducationComponentState createState() => _EducationComponentState();
}

class _EducationComponentState extends State<EducationComponent> {
  // GlobalKey _key = GlobalKey();

  // @override
  // void initState() {
  //   WidgetsBinding.instance!.addPostFrameCallback(_getPosition);
  //   super.initState();
  // }

  // _getPosition(_) {
  //   final RenderBox? myStotyBox =
  //       _key.currentContext!.findRenderObject() as RenderBox;
  //   final position = myStotyBox!.localToGlobal(Offset.zero);
  //   Provider.of<WidgetPositionProvider>(context, listen: false)
  //       .update(4, position.dy);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: widget.size.height,
        maxWidth: widget.size.width * 0.8,
      ),
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin * 2,
        horizontal: defaultSpace.sp * 3,
      ),
      child: Wrap(
        // alignment: WrapAlignment.center,
        children: [
          Row(
            children: [
              TopicNameWidget(
                // key: _key,
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
          Column(
            children: educationModelData
                .map((e) => EducationTileWidget(
                      size: widget.size,
                      color: e.color,
                      path: e.logoPath,
                      title:
                          (widget.isEnglish ? e.enUniversity : e.thUniversity) +
                              ' - ' +
                              (widget.isEnglish ? e.yearEn : e.yearTh),
                      subTitle:
                          widget.isEnglish ? e.enDepartment : e.thDepartment,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
