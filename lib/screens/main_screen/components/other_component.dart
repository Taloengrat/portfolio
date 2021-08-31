import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/other_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/widget_position_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/other_widget.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        .update(5, position.dy);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: widget.size.width * 0.8,
      ),
      margin: EdgeInsets.symmetric(
        vertical: defaultMargin * 2,
        horizontal: defaultSpace.sp * 3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TopicNameWidget(
                size: widget.size,
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
                    size: widget.size,
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
