import 'package:flutter/material.dart';
import 'package:game_app/global.dart';
import 'package:game_app/ui/widgets/ratingwidget.dart';
import 'package:game_app/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xff333333),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            "Game Details",
            style: TextStyle(
              color: Color(0xff333333),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Color(0xff333333),
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              gamesList[id]['imgurl'],
                              height: 151,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${gamesList[id]['name']}",
                                  style: Theme.of(context).textTheme.title,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Rating: ",
                                      style: TextStyle(color: grey),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "${gamesList[id]['rating']}",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        "Game Description",
                        style: Theme.of(context)
                            .textTheme
                            .headline
                            .apply(fontWeightDelta: 2),
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        "${gamesList[id]['desc']}",
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .apply(color: grey),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        "Screenshots",
                        style: Theme.of(context)
                            .textTheme
                            .headline
                            .apply(fontWeightDelta: 2),
                      ),
                      SizedBox(height: 7.0),
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gamesList[id]['imgs'].length,
                          itemBuilder: (ctx, imgId) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 9.0),
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  gamesList[id]['imgs'][imgId],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: blue,
                  child: Text(
                    "Buy the game",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
