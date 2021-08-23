class TopicModel {
  final String enTitle;
  final String thTitle;

  TopicModel({
    required this.enTitle,
    required this.thTitle,
  });
}

List<TopicModel> topicList = [
  TopicModel(
    enTitle: 'About me',
    thTitle: 'เกี่ยวกับฉัน',
  ),
  TopicModel(
    enTitle: 'Skill',
    thTitle: 'ทักษะ',
  ),
  TopicModel(
    enTitle: 'Extracurricular activities',
    thTitle: 'กิจกรรมนอกหลักสูตร',
  ),
  TopicModel(
    enTitle: 'Education',
    thTitle: 'การศึกษา',
  ),
  TopicModel(
    enTitle: 'Other',
    thTitle: 'อื่น ๆ',
  ),
  TopicModel(
    enTitle: 'Contact',
    thTitle: 'ติดต่อ',
  ),
];
