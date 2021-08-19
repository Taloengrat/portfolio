class MySkillModel {
  String? path;
  String title;
  SKILL_LEVEL skillLevel;
  String detail;
  SKILL_TYPE skilType;

  MySkillModel({
    this.path,
    required this.title,
    required this.skillLevel,
    required this.detail,
    required this.skilType,
  });
}

List<MySkillModel> listMyskill = [
  MySkillModel(
      title: 'Java',
      skillLevel: SKILL_LEVEL.MEDIUM,
      detail: 'detail1',
      path: 'images/language/java.png',
      skilType: SKILL_TYPE.LANGUAGE),
  MySkillModel(
      title: 'Dart',
      skillLevel: SKILL_LEVEL.MEDIUM,
      detail: 'detail2',
      path: 'images/language/dart.png',
      skilType: SKILL_TYPE.LANGUAGE),
  MySkillModel(
      title: 'Typescript',
      skillLevel: SKILL_LEVEL.MEDIUM,
      detail: 'detail2',
      path: 'images/language/type_script.png',
      skilType: SKILL_TYPE.LANGUAGE),
];

enum SKILL_LEVEL {
  LOW,
  MEDIUM,
  HIGH,
  ADVANCE,
}

enum SKILL_TYPE {
  LANGUAGE,
  TOOL,
}
