import 'package:taloengrat_cv/screens/main_screen/widgets/activity_card_widget.dart';

class ExtracurricularATVTModel {
  String? enContain;
  String? enTitle;
  String? thTitle;
  String? thContain;
  String? pathImage;
  ACTIVITY_AXIS activityAxis;

  ExtracurricularATVTModel({
    required this.enTitle,
    required this.thTitle,
    this.enContain,
    this.thContain,
    this.pathImage,
    required this.activityAxis,
  });
}

List<ExtracurricularATVTModel> extraccurricularATVModel = [
  ExtracurricularATVTModel(
    enContain: '',
    thContain: '',
    enTitle: '',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_13.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
  ),
  ExtracurricularATVTModel(
    enContain: '',
    thContain: '',
    enTitle: 'International Capstone Program: Global CDP',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_6.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
  ),
  ExtracurricularATVTModel(
    enContain: '',
    thContain: '',
    enTitle: 'International Capstone Program: Global CDP',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_2.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
  ),
  ExtracurricularATVTModel(
    enContain: '',
    thContain: '',
    enTitle: 'International Capstone Program: Global CDP',
    thTitle: '',
    pathImage: 'images/activities/extracurricular_1.png',
    activityAxis: ACTIVITY_AXIS.HORIZONTAL,
  ),
];
