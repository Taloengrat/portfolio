import 'package:flutter/material.dart';

class TopicNameWidget extends StatelessWidget {
  final Color color;
  final String topicName;
  final bool? differenceStyle;
  const TopicNameWidget({
    Key? key,
    required this.color,
    required this.topicName,
    this.differenceStyle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(5),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: primaryColor,
          border: Border.all(
            color: color,
            width: 5,
          ),
        ),
      ),
      title: Text(
        topicName,
        style: differenceStyle!
            ? TextStyle(
                color: Colors.white,
                fontSize: Theme.of(context).textTheme.headline4!.fontSize,
              )
            : Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
