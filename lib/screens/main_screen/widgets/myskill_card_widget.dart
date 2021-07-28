import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';

class MyskillCardWidget extends StatefulWidget {
  final String title;
  final String detail;
  final String? pathImageIcon;

  const MyskillCardWidget({
    Key? key,
    required this.title,
    required this.detail,
    this.pathImageIcon,
  }) : super(key: key);

  @override
  _MyskillCardWidgetState createState() => _MyskillCardWidgetState();
}

class _MyskillCardWidgetState extends State<MyskillCardWidget> {
  bool isHover = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) {
        if (!isHover) setState(() => isHover = true);
      },
      onExit: (e) {
        if (isHover) setState(() => isHover = false);
      },
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.topLeft,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 250),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: isHover ? 6.0 : 1.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedContainer(
                    margin: EdgeInsets.all(defaultMargin as double),
                    padding: EdgeInsets.all(defaultPadding as double),
                    duration: Duration(milliseconds: 250),
                    width: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        if (!isHover)
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0,
                          ),
                      ],
                    ),
                    child: Image.asset(
                      widget.pathImageIcon!,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
