import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taloengrat_cv/models/other_model.dart';
import '../../../constance.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherWidget extends StatelessWidget {
  final OtherModel otherModel;
  final bool isEnglish;
  final Size size;

  const OtherWidget({
    Key? key,
    required this.otherModel,
    required this.isEnglish,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin as double,
      ),
      child: ListTile(
        leading: Container(
          height: 100.sp,
          width: 10.sp,
          color: otherModel.color,
        ),
        title: Text(
          isEnglish ? otherModel.enTitle! : otherModel.thTitle!,
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
        subtitle: Text(
            isEnglish ? otherModel.enSubtitle! : otherModel.thSubtitle!,
            style: Theme.of(context).textTheme.bodyText2),
      ),
    );
  }
}
