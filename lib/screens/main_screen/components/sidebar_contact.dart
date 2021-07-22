import 'package:flutter/material.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/icon_newtab_widget.dart';

class SideBarContactComponent extends StatelessWidget {
  const SideBarContactComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconNavigate(
          child: Tooltip(
            message: 'Taloengrat Poomchaiya',
            child: Image.asset(
              'images/github.png',
              width: 32,
            ),
          ),
          path: gitHubUrlPath,
        ),
        IconNavigate(
          child: Tooltip(
            message: 'Taloengrat Poomchaiya',
            child: Image.asset(
              'images/linkedin.png',
              width: 32,
            ),
          ),
          path: linkedInPathUrl,
        ),
        IconNavigate(
          child: Tooltip(
            message: 'Line id : armtp1997',
            child: Image.asset(
              'images/line-logo.png',
              width: 32,
            ),
          ),
          path: '',
          alternativeType: ALTERNATIVE_TYPE.LINE,
        ),
        IconNavigate(
          child: Tooltip(
            message: 'tp.sourcecode@gmail.com',
            child: Image.asset(
              'images/email.png',
              width: 32,
            ),
          ),
          path: '',
          alternativeType: ALTERNATIVE_TYPE.EMAIL,
        ),
      ],
    );
  }
}
