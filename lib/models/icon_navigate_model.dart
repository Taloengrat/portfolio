class IconNavigateModel {
  final String tooltipMessage;
  final String url;
  final String pathImageB;
  final String pathImageW;
  final ALTERNATIVE_TYPE? alternativeType;
  IconNavigateModel({
    required this.tooltipMessage,
    required this.url,
    required this.pathImageB,
    required this.pathImageW,
    this.alternativeType,
  });
}

List<IconNavigateModel> iconNavigate = [
  IconNavigateModel(
    tooltipMessage: 'Taloengrat Poomchaiya',
    pathImageB: 'assets/images/github_b.png',
    pathImageW: 'assets/images/github_w.png',
    url: 'https://github.com/Taloengrat?tab=repositories',
  ),
  IconNavigateModel(
    tooltipMessage: 'Taloengrat Poomchaiya',
    pathImageB: 'assets/images/linkedin_b.png',
    pathImageW: 'assets/images/linkedin_w.png',
    url:
        'https://www.linkedin.com/in/taloengrat-poomchaiya-5bba86204/?originalSubdomain=th',
  ),
  IconNavigateModel(
    tooltipMessage: 'Line id : armtp1997',
    pathImageB: 'assets/images/line-logo_b.png',
    pathImageW: 'assets/images/line-logo_w.png',
    url: '',
    alternativeType: ALTERNATIVE_TYPE.LINE,
  ),
  IconNavigateModel(
    tooltipMessage: 'tp.sourcecode@gmail.com',
    pathImageB: 'assets/images/email_b.png',
    pathImageW: 'assets/images/email_w.png',
    url: '',
    alternativeType: ALTERNATIVE_TYPE.EMAIL,
  ),
  IconNavigateModel(
    tooltipMessage: 'tp.sourcecode@gmail.com',
    pathImageB: 'assets/images/youtube_b.png',
    pathImageW: 'assets/images/youtube_w.png',
    url: 'https://www.youtube.com/channel/UCpZbrIT9vATGUYsyuegqeBQ/featured',
  ),
];

enum ALTERNATIVE_TYPE {
  EMAIL,
  LINE,
  PHONE,
}

enum ALTERNATIVE_COLOR {
  BLACK,
  WHITE,
}
