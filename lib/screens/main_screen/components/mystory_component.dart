import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/my_story_model.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/topic_name_widget.dart';

import '../../../constance.dart';

class MyStoryComponent extends StatelessWidget {
  final Size size;
  const MyStoryComponent({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final language = Provider.of<LanguageProvider>(context).item;

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
                color: primaryColor,
                topicName: 'My Story',
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
                language == 'English'
                    ? myStoryModel.enDetail as String
                    : myStoryModel.thDetail as String,
                toolbarOptions: ToolbarOptions(
                  copy: true,
                ),
              ),
            ],
          ),
          // Spacer(),
        ],
      ),
    );
  }
}
