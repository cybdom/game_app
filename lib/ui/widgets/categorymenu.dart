import 'package:flutter/material.dart';
import 'package:game_app/global.dart';

class CategoryMenu extends StatefulWidget {
  @override
  _CategoryMenuState createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: gameCategories.length,
      itemBuilder: (ctx, id) {
        return GestureDetector(
          onTap: () {
            setState(() {
              active = id;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  "${gameCategories[id]}",
                  style: TextStyle(
                    fontWeight:
                        active == id ? FontWeight.bold : FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                active == id
                    ? Container(
                        height: 3.0,
                        width: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      )
                    : Container(
                        // height: 3.0,
                        // width: 7.0,
                        ),
              ],
            ),
          ),
        );
      },
    );
  }
}
