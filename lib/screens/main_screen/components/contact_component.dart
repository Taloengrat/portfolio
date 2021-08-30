import 'package:flutter/material.dart';
import 'package:taloengrat_cv/models/topic_model.dart';
import 'package:taloengrat_cv/screens/main_screen/components/sidebar_contact.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';
import 'package:http/http.dart' as http;
import '../../../constance.dart';
import 'dart:developer';
import 'dart:html' as html;

class ContactComponent extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding as double),
      width: double.infinity,
      // height: size.height * 0,
      constraints: BoxConstraints(
        maxHeight: size.height,
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
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopicNameWidget(
                      size: size,
                      color: thridColor,
                      topicName: isEnglish ? topic.enTitle : topic.thTitle,
                      differenceStyle: true,
                    ),
                    RaisedButton.icon(
                      onPressed: doDownloadCV,
                      icon: Icon(
                        Icons.download,
                      ),
                      label: Text(
                        isEnglish ? 'Download' : 'ดาวน์โหลด',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: SideBarContactComponent(
                  size: size,
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
    html.window.open(back_end_api, "_blank");

    // http.get(Uri.parse(back_end_api));
  }
}
