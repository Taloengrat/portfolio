import 'package:flutter/material.dart';

class ActivitiesCardWidget extends StatelessWidget {
  final String? path;

  final Color color;
  const ActivitiesCardWidget({
    Key? key,
    this.path,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Container(
          color: Colors.transparent,
          // width: 500,
          height: 400,
          child: Row(
            children: [
              if (path!.isNotEmpty)
                Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
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
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(
                      0.1,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 4, top: 8, bottom: 8, right: 8),
                  child: Text(
                      'asdffffffffffffffffffffassdafasdfasdfsdafasfsadfsadfasdfasfasdfasfdas   '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
