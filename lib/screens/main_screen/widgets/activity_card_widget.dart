import 'package:flutter/material.dart';

class ActivitiesCardWidget extends StatelessWidget {
  final String? path;
  final Color color;
  final String content;
  const ActivitiesCardWidget({
    Key? key,
    this.path,
    required this.color,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (path!.isNotEmpty)
            Expanded(
              child: Container(
                width: 250,
                height: 250,
                margin: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(path!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(
                  0.4,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(left: 4, top: 8, bottom: 8, right: 8),
              child: Text(
                  'asdffffffffffffffffffffassdafasdfasdfsdafasfsadfsadfasdfasfasdfasfdas'),
            ),
          ),
        ],
      ),
    );
  }
}
