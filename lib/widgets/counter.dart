import 'package:covid_app/constant.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final String title;
  final int number;
  final Color color;

  const Counter({
    Key key,
    this.title,
    this.number,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: color, width: 2)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$number",
          style: TextStyle(fontSize: 40, color: color),
        ),
        Text(
          "$title",
          style: kSubTextStyle,
        ),
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
