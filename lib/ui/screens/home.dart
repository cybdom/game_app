import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:game_app/global.dart';
import 'package:game_app/ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              color: blue,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Hi Cybdom!",
                        style: Theme.of(context).textTheme.title.apply(
                              color: Colors.white,
                            ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.pngarts.com/files/3/Boy-Avatar-PNG-Photo.png",
                        ),
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 11.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                        gapPadding: 0,
                      ),
                      hintText: "Search for your favorite game...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.0),
                  SizedBox(
                    height: 25,
                    child: CategoryMenu(),
                  )
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                primary: false,
                crossAxisCount: 4,
                itemCount: gamesList.length,
                itemBuilder: (ctx, id) {
                  return GameContainer(id: id);
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(2, index.isEven ? 3 : 2);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
