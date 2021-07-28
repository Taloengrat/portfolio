class MySkillModel {
  String? path;
  String title;
  SKILL_LEVEL skillLevel;
  String detail;

  MySkillModel({
    this.path,
    required this.title,
    required this.skillLevel,
    required this.detail,
  });
}

List<MySkillModel> listMyskill = [
  MySkillModel(
    title: 'Java',
    skillLevel: SKILL_LEVEL.MEDIUM,
    detail: 'detail1',
    path: 'images/language/java.png',
  ),
  MySkillModel(
    title: 'Dart',
    skillLevel: SKILL_LEVEL.MEDIUM,
    detail: 'detail2',
    path: 'images/language/dart.png',
  ),
  MySkillModel(
    title: 'Typescript',
    skillLevel: SKILL_LEVEL.MEDIUM,
    detail: 'detail2',
    path: 'images/language/type_script.png',
  ),
];

enum SKILL_LEVEL { LOW, MEDIUM, HIGH, ADVANCE }
