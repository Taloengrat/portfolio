import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicNameWidget extends StatelessWidget {
  final Color color;
  final String topicName;
  final bool? differenceStyle;
  final Size size;
  const TopicNameWidget({
    Key? key,
    required this.color,
    required this.topicName,
    this.differenceStyle = false,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 30.sp,
          height: 30.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            // border: Border.all(
            //   color: color,
            //   width: 5,
            // ),
          ),
        ),
        SizedBox(
          width: defaultSpace as double,
        ),
        Text(
          topicName,
          style: differenceStyle!
              ? TextStyle(
                  color: Colors.white,
                  fontSize: size.width <= widthTarget
                      ? 60.sp
                      : Theme.of(context).textTheme.headline4!.fontSize,
                )
              : TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: size.width <= widthTarget ? 60.sp : 35.sp,
                ),
        ),
        SizedBox(
          width: defaultSpace as double,
        ),
      ],
    );
  }
}
