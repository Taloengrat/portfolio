import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/models/icon_navigate_model.dart';
import 'package:taloengrat_cv/providers/sidebar_contact_provider.dart';
import 'package:taloengrat_cv/screens/main_screen/widgets/icon_newtab_widget.dart';

class SideBarContactComponent extends StatelessWidget {
  final AXIZ_TYPE axizType;
  final Size size;
  const SideBarContactComponent({
    Key? key,
    required this.axizType,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isReachBottom = Provider.of<SidebarProvider>(context).item;

    return axizType == AXIZ_TYPE.COLUMN
        ? Visibility(
            visible: !isReachBottom,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                iconNavigate.length,
                (index) => IconNavigate(
                  size: size,
                  index: index,
                  alternativeColor: ALTERNATIVE_COLOR.BLACK,
                ),
              ),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              iconNavigate.length,
              (index) => IconNavigate(
                size: size,
                index: index,
                alternativeColor: ALTERNATIVE_COLOR.WHITE,
              ),
            ),
          );
  }
}

enum AXIZ_TYPE {
  COLUMN,
  ROW,
}
