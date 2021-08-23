import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';

class SkillLevelWidget extends StatelessWidget {
  final int level;
  const SkillLevelWidget({
    Key? key,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 1; i <= 5; i++)
          Container(
            margin: EdgeInsets.only(
              right: defaultMargin as double,
            ),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i <= level ? Colors.yellow : Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.yellow,
              ),
            ),
          ),
      ],
    );
  }
}
