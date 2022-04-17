import 'package:flutter/material.dart';

import '../components/icon_button_widget.dart';
import '../components/section_builder.dart';
import '../const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 68, 126, 212), Colors.transparent],
              stops: [0.0, 0.30]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 36, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title-and-toolbar-buttons
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: Row(
                  children: const [
                    Text("Good evening",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Raleway",
                            fontStyle: FontStyle.normal,
                            fontSize: 23.0),
                        textAlign: TextAlign.left),
                    Expanded(child: SizedBox()),
                    IconButtonWidget(
                      icon: 'bell.png',
                    ),
                    IconButtonWidget(
                      icon: 'history.png',
                    ),
                    IconButtonWidget(
                      icon: 'settings.png',
                    ),
                  ],
                ),
              ),
              // playlist-grid-section
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 36),
                child: SizedBox(
                  height: 220,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8),
                      itemCount: kPlaylistGrid.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff2E2F33),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              // img
                              Container(
                                width: 56,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          kPlaylistGrid[index].img),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      bottomLeft: Radius.circular(4)),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              // text
                              Flexible(
                                child: Text(kPlaylistGrid[index].title,
                                    style: const TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Color(0xffffffff),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        overflow: TextOverflow.clip)),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              // New songs added section
              SectionBuilder(
                  sectionTitle: 'New songs added',
                  sectionBodyBuilder: (context) {
                    return Container(
                      height: 145,
                      decoration: const BoxDecoration(
                        color: Color(0xff2E2F33),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      margin: const EdgeInsets.only(right: 16, left: 16),
                      child: Row(
                        children: [
                          // img
                          Container(
                            width: 142,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://pbs.twimg.com/media/Dd67LcWVMAAjFrC.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4)),
                            ),
                          ),
                          // text
                          Padding(
                            padding: const EdgeInsets.only(top: 16, right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text("Viral hits",
                                      style: TextStyle(
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Raleway",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13.0),
                                      textAlign: TextAlign.left),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // description
                                const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: SizedBox(
                                    width: 150,
                                    child: Text(
                                      "Playlist • The Kid LAROI, Olivia Rodrigo, Ariana Gra...",
                                      style: TextStyle(
                                        color: Color(0xffa7a7a7),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Raleway",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 13.0,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        IconButtonWidget(icon: 'heart.png'),
                                        Expanded(child: SizedBox()),
                                        IconButtonWidget(
                                            icon: 'play-button.png'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              // podcast fir you section
              SectionBuilder(
                sectionTitle: 'Podcasts for you',
                sectionBodyBuilder: (context) {
                  return HomeSectionsItemsBuilder(
                    list: kPlaylistPodcast,
                  );
                },
              ),
              SectionBuilder(
                sectionTitle: 'Made for you',
                sectionBodyBuilder: (context) {
                  return HomeSectionsItemsBuilder(
                    list: kPlaylistForYou,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeSectionsItemsBuilder extends StatelessWidget {
  const HomeSectionsItemsBuilder({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          bool last = list.length == (index + 1);
          return Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: last ? 16 : 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // img
                Container(
                  width: 138,
                  height: 138,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(list[index].img),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // name
                SizedBox(
                  width: 135,
                  child: Text(list[index].title,
                      style: const TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                      textAlign: TextAlign.left),
                ),
                const SizedBox(
                  height: 4,
                ),
                // show-creator
                SizedBox(
                  width: 135,
                  child: Text(list[index].creator ?? '',
                      style: const TextStyle(
                          color: Color(0xffb3b3b3),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                      textAlign: TextAlign.left),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
