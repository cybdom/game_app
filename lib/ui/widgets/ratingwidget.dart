import 'package:flutter/material.dart';
import 'package:game_app/global.dart';

class RatingWidget extends StatelessWidget {
  final int id;

  const RatingWidget({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.orange,
          ),
          Text(
            "${gamesList[id]['rating']}",
            style: TextStyle(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
