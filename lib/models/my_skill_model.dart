class MySkillModel {
  String? path;
  String title;
  int skillLevel;
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
      skillLevel: 3,
      detail: 'detail1',
      path: 'images/language/java.png',
      skilType: SKILL_TYPE.LANGUAGE),
  MySkillModel(
      title: 'Dart',
      skillLevel: 3,
      detail: 'detail2',
      path: 'images/language/dart.png',
      skilType: SKILL_TYPE.LANGUAGE),
  MySkillModel(
      title: 'Typescript',
      skillLevel: 3,
      detail: 'detail3',
      path: 'images/language/type_script.png',
      skilType: SKILL_TYPE.LANGUAGE),
  MySkillModel(
      title: 'Jenkins',
      skillLevel: 3,
      detail: 'detail4',
      path: 'images/language/jenkins.png',
      skilType: SKILL_TYPE.TOOL),
  MySkillModel(
      title: 'Spring Boot',
      skillLevel: 3,
      detail: 'detail5',
      path: 'images/language/spring.png',
      skilType: SKILL_TYPE.TOOL),
  MySkillModel(
      title: 'Android Studio',
      skillLevel: 3,
      detail: 'detail6',
      path: 'images/language/android_studio.png',
      skilType: SKILL_TYPE.TOOL),
  MySkillModel(
      title: 'Unity',
      skillLevel: 2,
      detail: 'detail6',
      path: 'images/language/unity.jpg',
      skilType: SKILL_TYPE.TOOL),
];

enum SKILL_TYPE {
  LANGUAGE,
  TOOL,
}
