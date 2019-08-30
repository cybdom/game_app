import 'package:flutter/material.dart';
import 'package:game_app/global.dart';
import 'package:video_player/video_player.dart';

class VideoContainer extends StatefulWidget {
  final int id, vidId;

  const VideoContainer({Key key, this.id, this.vidId}) : super(key: key);
  @override
  _VideoContainerState createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        gamesList[widget.id]['videos'][widget.vidId])
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: _controller.value.initialized
                  ? VideoPlayer(_controller)
                  : Container(),
            ),
            _controller.value.initialized
                ? Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      child: IconButton(
                        icon: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                        ),
                        onPressed: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
