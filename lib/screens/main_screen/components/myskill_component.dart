import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/my_skill_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/widget_position_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/skill_card_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constance.dart';

class MySkillComponent extends StatefulWidget {
  final Size size;
  final TopicModel topic;
  final bool isEnglish;

  const MySkillComponent({
    Key? key,
    required this.size,
    required this.topic,
    required this.isEnglish,
  }) : super(key: key);

  @override
  _MySkillComponentState createState() => _MySkillComponentState();
}

class _MySkillComponentState extends State<MySkillComponent> {
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
  //       .update(2, position.dy);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: widget.size.width * 0.8,
      ),
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin * 2,
        horizontal: defaultSpace.sp * 3,
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          SizedBox(
            height: 50,
          ),
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            alignment: WrapAlignment.center,
            children: [
              ...listMyskill.map((e) {
                return MyskillCardWidget(
                  title: e.title,
                  level: e.skillLevel,
                  detail: e.detail,
                  pathImageIcon: e.path,
                );
              }).toList()
            ],
          ),
        ],
      ),
    );
  }
}
