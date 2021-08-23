import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/skill_level_widget.dart';

class MyskillCardWidget extends StatefulWidget {
  final String title;
  final String detail;
  final int level;
  final String? pathImageIcon;

  const MyskillCardWidget({
    Key? key,
    required this.title,
    required this.detail,
    this.pathImageIcon,
    required this.level,
  }) : super(key: key);

  @override
  _MyskillCardWidgetState createState() => _MyskillCardWidgetState();
}

class _MyskillCardWidgetState extends State<MyskillCardWidget> {
  bool isHover = false;
  bool isExpand = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (_) {
        if (!isHover) setState(() => isHover = true);
      },
      onExit: (_) {
        if (isHover) setState(() => isHover = false);
      },
      child: Container(
        // width: 300,
        // height: 120,
        margin: EdgeInsets.all(
          (defaultMargin / 2),
        ),
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
            child: ExpansionTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: isHover ? 1.0 : 6.0,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    widget.pathImageIcon!,
                  ),
                ),
              ),
              title: Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: SkillLevelWidget(
                level: widget.level,
              ),
              expandedAlignment: Alignment.centerLeft,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: defaultSpace as double,
                  ),
                  child: Text(
                    widget.detail,
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
