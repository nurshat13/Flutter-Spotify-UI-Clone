import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/components/icon_button_widget.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff447ED4), Color(0xff121212)]),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Transform.translate(
            offset: const Offset(-15, 0),
            child: const IconButtonWidget(icon: 'pull-down-arrow.png'),
          ),
          title: const Text(
            "Playlist Name",
            style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Raleway",
                fontStyle: FontStyle.normal,
                fontSize: 13.0),
          ),
          centerTitle: true,
          actions: [
            Transform.translate(
              offset: const Offset(15, 0),
              child: const IconButtonWidget(icon: 'more.png'),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://sterling-sound.com/wp-content/uploads/Lauv-I-Like-Me-Better-2017-billboard-embed.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  // title and like button
                  Row(
                    children: [
                      // title and creator
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          // title
                          Text("I Like me Better",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Raleway",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24.0),
                              textAlign: TextAlign.left),
                          // Creator
                          Text("Lauv",
                              style: TextStyle(
                                  color: Color(0xffbfb8b2),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Raleway",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0),
                              textAlign: TextAlign.left)
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      // like button
                      const IconButtonWidget(icon: 'heart.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // seek bar
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white.withAlpha(30),
                        thumbColor: Colors.white,
                        trackHeight: 4,
                        trackShape: CustomTrackShape(),
                        overlayShape: SliderComponentShape.noOverlay),
                    child: Slider(
                      value: 20,
                      min: 1,
                      max: 100,
                      onChanged: (value) {},
                    ),
                  ),
                  // current and left time
                  Row(
                    children: const [
                      // 0:56
                      Text("0:56",
                          style: TextStyle(
                              color: Color(0xffc3bfb9),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Montserrat",
                              fontStyle: FontStyle.normal,
                              fontSize: 13.0),
                          textAlign: TextAlign.left),
                      Expanded(child: SizedBox()),
                      // -3:07
                      Text("-3:18",
                          style: TextStyle(
                              color: Color(0xffc3bfb9),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Montserrat",
                              fontStyle: FontStyle.normal,
                              fontSize: 13.0),
                          textAlign: TextAlign.left)
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // control buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconButtonWidget(icon: 'shuffle.png'),
                      IconButtonWidget(icon: 'previus-song.png'),
                      IconButtonWidget(icon: 'play-pause-button.png'),
                      IconButtonWidget(icon: 'next-song.png'),
                      IconButtonWidget(icon: 'repeat.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconButtonWidget(icon: 'connect-device.png'),
                      Expanded(child: SizedBox()),
                      IconButtonWidget(icon: 'playlist.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
