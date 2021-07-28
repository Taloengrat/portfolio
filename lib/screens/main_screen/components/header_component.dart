import 'dart:developer';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constance.dart';

class HeaderComponent extends StatefulWidget {
  final ScrollController scrollController;
  final Size size;
  final List<double> listTopicPosition;

  HeaderComponent({
    Key? key,
    required this.size,
    required this.scrollController,
    required this.listTopicPosition,
  }) : super(key: key);

  @override
  _HeaderComponentState createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: widget.size.height,
      child: Stack(
        children: [
          Align(
            child: Container(
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                color: Colors.black38,
                image: DecorationImage(
                  image: AssetImage(
                    'head_background.jpg',
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, 1),
            child: Container(
              child: Image.asset('myself_logo.png'),
            ),
          ),
          Align(
            alignment: Alignment(0.3, 0.3),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    maxHeight: 200,
                    maxWidth: 400,
                    minHeight: 200,
                    minWidth: 200,
                  ),
                  child: !isFinished
                      ? AnimatedTextKit(
                          onFinished: () => setState(() => isFinished = true),
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TyperAnimatedText(
                              'TALOENGRAT \nPOOMCHAIYA',
                              // speed: Duration(milliseconds: 150),
                              textStyle: Theme.of(context).textTheme.headline3,
                            ),
                            TyperAnimatedText('\nDeveloper',
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                // speed: Duration(milliseconds: 100),
                                curve: Curves.easeInCubic),
                          ],
                        )
                      : RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'TALOENGRAT \nPOOMCHAIYA',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              TextSpan(
                                  text: '\nDeveloper',
                                  style: Theme.of(context).textTheme.subtitle1),
                            ],
                          ),
                        ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              width: widget.size.width * (widget.size.width >= 830 ? 0.5 : 0.9),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuWidget(
                      message: 'My Story',
                      color: primaryColor,
                      index: 0,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: 'My skill',
                      color: secondColor,
                      index: 1,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: 'Extracurricular\nactivities',
                      color: thridColor,
                      index: 2,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: 'Education',
                      color: fourthColor,
                      index: 3,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                    MenuWidget(
                      message: 'Contact',
                      color: fifthColor,
                      index: 4,
                      scrollController: widget.scrollController,
                      listTopicPosition: widget.listTopicPosition,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends StatefulWidget {
  final int index;
  final String message;
  final Color color;
  final ScrollController scrollController;
  final List<double> listTopicPosition;
  const MenuWidget({
    Key? key,
    required this.message,
    required this.color,
    required this.index,
    required this.scrollController,
    required this.listTopicPosition,
  }) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  // String message = '';
  _moveTo(int index) {
    if (widget.listTopicPosition.isEmpty) return;

    widget.scrollController.animateTo(
      widget.listTopicPosition.elementAt(index),
      curve: Curves.linear,
      duration: Duration(milliseconds: 500),
    );
  }

  _scrollListener() {
    // log(widget.scrollController.offset.toString(), name: 'scroll value');
    if (widget.scrollController.offset >=
            widget.scrollController.position.maxScrollExtent &&
        !widget.scrollController.position.outOfRange) {
      setState(() {
        // message = "reach the bottom";
        // log(message, name: 'log: HeaderComponent scroll listener');
      });
    }
    if (widget.scrollController.offset <=
            widget.scrollController.position.minScrollExtent &&
        !widget.scrollController.position.outOfRange) {
      setState(() {
        // message = "reach the top";
        // log(message, name: 'scroll listener');
      });
    }

    // if(widget.scrollController.offset >)
  }

  @override
  void initState() {
    widget.scrollController.addListener(_scrollListener);
    super.initState();
  }

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (e) {
        setState(() {
          if (e)
            isHover = true;
          else
            isHover = false;
        });
      },
      // onExit: (e) {
      //   setState(() {
      //     isHover = false;
      //   });
      // },
      onTap: () => _moveTo(widget.index),
      // onEnter: (e) => {if (e.down) },
      // cursor: SystemMouseCursors.click,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.all(5),
        decoration: isHover
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: widget.color, width: 5),
                ),
              )
            : null,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            widget.message,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: isHover ? 18 : 16,
                fontWeight: isHover ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
