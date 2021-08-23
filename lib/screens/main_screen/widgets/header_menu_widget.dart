import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/providers/sidebar_contact_provider.dart';

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
    if (widget.scrollController.offset ==
        widget.scrollController.position.maxScrollExtent) {
      Provider.of<SidebarProvider>(context, listen: false)
          .updateReachBottom(true);
    } else {
      Provider.of<SidebarProvider>(context, listen: false)
          .updateReachBottom(false);
    }

    if (widget.scrollController.offset <=
            widget.scrollController.position.minScrollExtent &&
        !widget.scrollController.position.outOfRange) {
      Provider.of<SidebarProvider>(context, listen: false)
          .updateReachBottom(true);
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
            style: GoogleFonts.prompt(
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
