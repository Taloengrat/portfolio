import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/activity_card_widget.dart';

class ExtracurricularATVTModel {
  String? enTitle;
  String? thTitle;
  String? enContain;
  String? thContain;
  Color color;
  String? pathImage;
  ACTIVITY_AXIS activityAxis;

  ExtracurricularATVTModel({
    required this.enTitle,
    required this.thTitle,
    this.enContain,
    this.thContain,
    this.pathImage,
    required this.activityAxis,
    required this.color,
  });
}

List<ExtracurricularATVTModel> extraccurricularATVModel = [
  ExtracurricularATVTModel(
    enContain:
        '   Competition Solving the Right Problems for Students with Disabilities.',
    thContain: '   เนื้อหา ภาษาไทย',
    enTitle: 'Accessible Learning Hackathon 2018',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_13.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
    color: thridColor,
  ),
  ExtracurricularATVTModel(
    enContain:
        '   Ragamangala University Of Technology Thanyaburi working with Yeungnam University,South korea |2018 - 2019',
    thContain: '   เนื้อหา ภาษาไทย',
    enTitle: 'International Capstone Program: Global CDP',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_2.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
    color: fourthColor,
  ),
  ExtracurricularATVTModel(
    enContain: '   Hold position since 2018 - 2019',
    thContain: '   เนื้อหา ภาษาไทย',
    enTitle: 'Student President of Computer Engineering',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_6.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
    color: fifthColor,
  ),
];
