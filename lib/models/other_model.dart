import 'package:flutter/material.dart';

class OtherModel {
  String? enTitle;
  String? thTitle;
  String? enSubtitle;
  String? thSubtitle;
  String? enDetail;
  String? thDetail;
  Color color;

  OtherModel({
    this.enTitle,
    this.thTitle,
    this.enSubtitle,
    this.thSubtitle,
    this.enDetail,
    this.thDetail,
    required this.color,
  });
}

List<OtherModel> otherModel = [
  OtherModel(
    color: Colors.red,
    enTitle: 'Internship',
    thTitle: 'ฝึกงาน',
    enSubtitle: 'NSTDA NECTEC | June - October 2019',
    thSubtitle: '',
    enDetail: '',
    thDetail: '',
  ),
  OtherModel(
    color: Colors.yellow,
    enTitle: 'Senior Computer Engineering Project',
    thTitle: 'โปรเจกต์จบการศึกษา วิศวกรรมคอมพิวเตอร์',
    enSubtitle: 'A Mobile Application For Speaking Skill Practice In English',
    thSubtitle: '',
    enDetail: '',
    thDetail: '',
  ),
];
