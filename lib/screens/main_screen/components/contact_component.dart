import 'package:flutter/material.dart';
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
      height: size.height * 0.5,
      constraints: BoxConstraints(
        maxHeight: size.height,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'footer_background.jpg',
          ),
          fit: BoxFit.fill,
        ),
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
          )
        ],
      ),
    );
  }
}
