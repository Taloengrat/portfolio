import 'package:taloengrat_cv/screens/main_screen/widgets/icon_newtab_widget.dart';

class IconNavigateModel {
  final String tooltipMessage;
  final String url;
  final String pathImage;
  final ALTERNATIVE_TYPE? alternativeType;
  IconNavigateModel({
    required this.tooltipMessage,
    required this.url,
    required this.pathImage,
    this.alternativeType,
  });
}

List<IconNavigateModel> iconNavigate = [
  IconNavigateModel(
    tooltipMessage: 'Taloengrat Poomchaiya',
    pathImage: 'images/github.png',
    url: 'https://github.com/Taloengrat?tab=repositories',
  ),
  IconNavigateModel(
    tooltipMessage: 'Taloengrat Poomchaiya',
    pathImage: 'images/linkedin.png',
    url:
        'https://www.linkedin.com/in/taloengrat-poomchaiya-5bba86204/?originalSubdomain=th',
  ),
  IconNavigateModel(
    tooltipMessage: 'Line id : armtp1997',
    pathImage: 'images/line-logo.png',
    url: '',
    alternativeType: ALTERNATIVE_TYPE.LINE,
  ),
  IconNavigateModel(
    tooltipMessage: 'tp.sourcecode@gmail.com',
    pathImage: 'images/email.png',
    url: '',
    alternativeType: ALTERNATIVE_TYPE.EMAIL,
  ),
];
