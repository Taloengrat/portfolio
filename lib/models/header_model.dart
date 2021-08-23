class HeaderModel {
  final String enName;
  final String thName;
  final String enPosition;
  final String thPosition;

  HeaderModel({
    required this.enName,
    required this.thName,
    required this.enPosition,
    required this.thPosition,
  });
}

HeaderModel headerModel = HeaderModel(
    enName: 'TALOENGRAT \nPOOMCHAIYA',
    thName: 'เถลิงรัฐ  \nภูมิไชยา',
    enPosition: '\nDeveloper',
    thPosition: '\nนักพัฒนา');
