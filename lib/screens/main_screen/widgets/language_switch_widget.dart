import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';

class LanguageSwitchWidget extends StatefulWidget {
  LanguageSwitchWidget({Key? key}) : super(key: key);

  @override
  _LanguageSwitchWidgetState createState() => _LanguageSwitchWidgetState();
}

class _LanguageSwitchWidgetState extends State<LanguageSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    final language = Provider.of<LanguageProvider>(context).item;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, right: 8),
          child: DropdownButton(
              value: language,
              onChanged: (String? newValue) {
                setState(() {
                  Provider.of<LanguageProvider>(context, listen: false)
                      .updateLanguageType(newValue!);
                });
              },
              items: languageList
                  .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem<String>(
                            child: Text(
                              e,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            value: e,
                          ))
                  .toList()),
        )
      ],
    );
  }
}
