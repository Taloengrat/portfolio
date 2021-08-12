import 'package:flutter/material.dart';
import 'package:taloengrat_cv/screens/main_screen/components/sidebar_contact.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

import '../../../constance.dart';

class ContactComponent extends StatelessWidget {
  final Size size;
  const ContactComponent({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      constraints: BoxConstraints(
        maxHeight: size.height,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Colors.black87,
        // image: DecorationImage(
        //   image: AssetImage(
        //     'head_background.jpg',
        //   ),
        //   fit: BoxFit.cover,
        //   alignment: Alignment.center,
        // ),
      ),
      margin: EdgeInsets.symmetric(vertical: defaultMargin * 2),
      child: Column(
        children: [
          Container(
            width: size.width * 0.8,
            child: TopicNameWidget(
              color: fifthColor,
              topicName: 'Contact',
              differenceStyle: true,
            ),
          ),
          Container(
            height: 50,
            width: 200,
            child: SideBarContactComponent(
              axizType: AXIZ_TYPE.ROW,
            ),
          ),
        ],
      ),
    );
  }
}
