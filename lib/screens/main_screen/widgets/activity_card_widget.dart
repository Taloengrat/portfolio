import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';

class ActivitiesCardWidget extends StatefulWidget {
  final String? path;
  final String title;
  final String content;
  final ACTIVITY_AXIS activityAxis;
  final Color color;
  const ActivitiesCardWidget({
    Key? key,
    required this.title,
    this.path,
    required this.activityAxis,
    required this.content,
    required this.color,
  }) : super(key: key);

  @override
  _ActivitiesCardWidgetState createState() => _ActivitiesCardWidgetState();
}

class _ActivitiesCardWidgetState extends State<ActivitiesCardWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        AnimatedContainer(
            duration: Duration(milliseconds: 250),
            // width: 400,
            // height: 300,
            margin: EdgeInsets.symmetric(
                horizontal: defaultSubTopicPadding as double,
                vertical: defaultMargin as double),
            // padding: EdgeInsets.symmetric(horizontal: defaultMargin as double),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: isHover ? 6.0 : 1.0,
                ),
              ],
            ),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (e) {
                if (!isHover) setState(() => isHover = true);
              },
              onExit: (e) {
                if (isHover)
                  setState(() {
                    isHover = false;
                  });
              },
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 100,
                      minWidth: 8,
                      maxHeight: 100,
                      maxWidth: 8,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            defaultRadius as double,
                          ),
                          bottomLeft: Radius.circular(
                            defaultRadius as double,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: defaultSpace as double,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: defaultMargin as double,
                      ),
                      Text(
                        widget.content,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ))
      ],
    );
  }
}

enum ACTIVITY_AXIS {
  HORIZONTAL,
  VERTICAL,
}
