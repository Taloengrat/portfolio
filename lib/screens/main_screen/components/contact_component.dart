import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/screens/main_screen/components/sidebar_contact.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import '../../../constance.dart';
import 'dart:developer';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactComponent extends StatefulWidget {
  final Size size;
  final TopicModel topic;
  final bool isEnglish;
  const ContactComponent({
    Key? key,
    required this.size,
    required this.topic,
    required this.isEnglish,
  }) : super(key: key);

  @override
  _ContactComponentState createState() => _ContactComponentState();
}

class _ContactComponentState extends State<ContactComponent> {
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
  //       .update(6, position.dy);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding * 2,
        horizontal: defaultSpace.sp * 3,
      ),
      width: double.infinity,
      height: widget.size.height * 0.15,
      constraints: BoxConstraints(
        maxHeight: widget.size.height,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Colors.black87,
      ),
      margin: EdgeInsets.only(top: defaultMargin * 2),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: widget.size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopicNameWidget(
                      // key: _key,
                      size: widget.size,
                      color: thridColor,
                      topicName: widget.isEnglish
                          ? widget.topic.enTitle
                          : widget.topic.thTitle,
                      differenceStyle: true,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultMargin as double,
                      ),
                      child: RaisedButton.icon(
                        onPressed: doDownloadCV,
                        icon: Icon(
                          Icons.download,
                        ),
                        label: Text(
                          widget.isEnglish ? 'Download' : 'ดาวน์โหลด',
                          style: widget.size.width <= widthTarget
                              ? GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 32.sp,
                                  ),
                                )
                              : Theme.of(context).textTheme.button,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: SideBarContactComponent(
                  size: widget.size,
                  axizType: AXIZ_TYPE.ROW,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  doDownloadCV() {
    log('download cv', name: 'CONTACT');
    html.window.open(back_end_api_show, "_blank");

    // http.get(Uri.parse(back_end_api_download));
  }
}
