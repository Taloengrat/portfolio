import 'package:flutter/material.dart';

class ActivitiesCardWidget extends StatefulWidget {
  final String? path;
  final String content;
  final ACTIVITY_AXIS activityAxis;
  const ActivitiesCardWidget({
    Key? key,
    this.path,
    required this.activityAxis,
    required this.content,
  }) : super(key: key);

  @override
  _ActivitiesCardWidgetState createState() => _ActivitiesCardWidgetState();
}

class _ActivitiesCardWidgetState extends State<ActivitiesCardWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        width: 400,
        height: 300,
        margin: EdgeInsets.all(5),
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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (widget.path!.isNotEmpty)
              Expanded(
                child: Container(
                  width: 250,
                  height: 250,
                  margin: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(widget.path!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(
                    0.4,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(left: 4, top: 8, bottom: 8, right: 8),
                child: Text(
                  widget.content,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ACTIVITY_AXIS {
  HORIZONTAL,
  VERTICAL,
}
