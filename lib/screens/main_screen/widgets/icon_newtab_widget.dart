import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taloengrat_cv/models/icon_navigate_model.dart';

class IconNavigate extends StatelessWidget {
  final ALTERNATIVE_COLOR alternativeColor;

  final int index;
  const IconNavigate({
    Key? key,
    required this.alternativeColor,
    required this.index,
    // required this.path,
    // required this.child,
    // this.alternativeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();

    final size = MediaQuery.of(context).size;
    return InkWell(
      key: key,
      onTap: () => iconNavigate[index].url.isNotEmpty
          ? html.window.open(iconNavigate[index].url, "_blank")
          : showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title:
                    iconNavigate[index].alternativeType == ALTERNATIVE_TYPE.LINE
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Line id : armtp1997',
                                textAlign: TextAlign.center,
                              ),
                              IconButton(
                                icon: Icon(Icons.copy),
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(text: 'armtp1997'),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'copied',
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )
                        : null,
                content: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: iconNavigate[index].alternativeType ==
                          ALTERNATIVE_TYPE.EMAIL
                      ? 100
                      : size.height * 0.5,
                  width: size.height * 0.5,
                  decoration: iconNavigate[index].alternativeType ==
                          ALTERNATIVE_TYPE.LINE
                      ? BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'line_qrcode.jpg',
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                  child: iconNavigate[index].alternativeType ==
                          ALTERNATIVE_TYPE.LINE
                      ? null
                      : Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'tp.sourcecode@gmail.com',
                                style: TextStyle(color: Colors.black),
                              ),
                              IconButton(
                                icon: Icon(Icons.copy),
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                        text: 'tp.sourcecode@gmail.com'),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'copied',
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                            // leading: ,
                            // trailing: Icon(Icons.copy),
                          ),
                        ),
                  alignment: Alignment.center,
                ),
              ),
            ),
      child: Tooltip(
        message: iconNavigate[index].tooltipMessage,
        child: Image.asset(
          alternativeColor == ALTERNATIVE_COLOR.BLACK
              ? iconNavigate[index].pathImageB
              : iconNavigate[index].pathImageW,
          width: 32,
        ),
      ),
    );
  }
}
