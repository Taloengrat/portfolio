import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/about_me_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/providers/widget_position_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constance.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStoryComponent extends StatefulWidget {
  final Size size;
  final TopicModel topic;
  final bool isEnglish;
  const MyStoryComponent({
    Key? key,
    required this.size,
    required this.topic,
    required this.isEnglish,
  }) : super(key: key);

  @override
  _MyStoryComponentState createState() => _MyStoryComponentState();
}

class _MyStoryComponentState extends State<MyStoryComponent> {
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
        .update(1, position.dy);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * 0.8,
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
                key: _key,
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
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              SelectableText(
                widget.isEnglish
                    ? myStoryModel.enDetail as String
                    : myStoryModel.thDetail as String,
                toolbarOptions: ToolbarOptions(
                  copy: true,
                ),
                style: widget.size.width <= widthTarget ||
                        widget.size.height <= heightTarget
                    ? GoogleFonts.prompt(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                          fontSize: 45.sp,
                        ),
                      )
                    : Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          // Spacer(),
        ],
      ),
    );
  }
}
