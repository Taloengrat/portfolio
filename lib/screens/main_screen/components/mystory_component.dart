import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taloengrat_cv/models/about_me_model.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constance.dart';

class MyStoryComponent extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: size.width * 0.8,
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
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              SelectableText(
                isEnglish
                    ? myStoryModel.enDetail as String
                    : myStoryModel.thDetail as String,
                toolbarOptions: ToolbarOptions(
                  copy: true,
                ),
                style: size.width <= widthTarget || size.height <= heightTarget
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
