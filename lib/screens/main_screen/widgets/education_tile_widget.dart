import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationTileWidget extends StatelessWidget {
  final String? path;
  final String title;
  final String subTitle;
  final Color color;
  final Size size;

  const EducationTileWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.size,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: (size.width <= widthTarget || size.height <= heightTarget
            ? defaultMargin / 2
            : defaultMargin) as double,
      ),
      child: ListTile(
        leading: Container(
          height: 100.sp,
          width: 10.sp,
          color: color,
        ),
        title: Text(
          title,
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
          subTitle,
          style: size.width <= widthTarget || size.height <= heightTarget
              ? GoogleFonts.prompt(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                    fontSize: 40.sp,
                  ),
                )
              : Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
