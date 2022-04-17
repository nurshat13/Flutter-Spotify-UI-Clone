import 'package:flutter/material.dart';

import '../components/icon_button_widget.dart';
import '../const.dart';

class ProflePage extends StatelessWidget {
  const ProflePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: const Color(0xff121212),
          expandedHeight: 100,
          pinned: true,
          floating: true,
          title: Row(
            children: const [
              CircleAvatar(
                backgroundColor: Color(0xff84b963),
                child: Text("N",
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Raleway",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0),
                    textAlign: TextAlign.left),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Your Library",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Raleway",
                      fontStyle: FontStyle.normal,
                      fontSize: 22.0),
                  textAlign: TextAlign.left),
              Expanded(child: SizedBox()),
              IconButtonWidget(
                icon: 'search.png',
              ),
              IconButtonWidget(
                icon: 'plus.png',
              ),
            ],
          ),
          shape: const Border(
            bottom: BorderSide(width: 2, color: Colors.black),
          ),
          flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding: const EdgeInsets.symmetric(horizontal: 16),
              centerTitle: true,
              background: Padding(
                padding: const EdgeInsets.only(top: 45, left: 16, bottom: 10),
                child: FiltersBuilder(list: kFilters),
              )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
              bottom: 130,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // recent filter
                Row(
                  children: const [
                    // icon
                    IconButtonWidget(icon: 'recent.png'),
                    // title
                    Text("Recently Played",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Raleway",
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0),
                        textAlign: TextAlign.left)
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),
                // playlist
                const PlayListContainer(
                  title: 'Eminem',
                  description: 'Playlist 1',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
                      fit: BoxFit.cover),
                ),
                // artist
                const ArtistContainer(
                  backgroundImage: NetworkImage(
                      'https://lite-images-i.scdn.co/image/ab6761610000e5eb9d1710bb76a4331e62ec1259'),
                  title: 'The Rare Occasions',
                  description: 'Artist',
                ),

                //add artist
                ArtistContainer(
                  child: Image.asset(
                    '$kAssetIconsWay/plus.png',
                  ),
                  title: 'Add artist',
                  backgroundColor: const Color(0xff2E2F33),
                ),
                // Add podcast & event
                const PlayListContainer(
                  title: 'Add podcast & event',
                  image: DecorationImage(
                    image: AssetImage('$kAssetIconsWay/plus.png'),
                  ),
                  color: Color(0xff2E2F33),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ArtistContainer extends StatelessWidget {
  const ArtistContainer({
    Key? key,
    required this.title,
    this.description,
    this.child,
    this.onTap,
    this.backgroundColor = const Color(0xff2E2F33),
    this.backgroundImage,
  }) : super(key: key);

  final String title;
  final String? description;
  final Widget? child;
  final ImageProvider<Object>? backgroundImage;
  final Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // img
            CircleAvatar(
              radius: 35,
              backgroundImage: backgroundImage,
              child: child,
              backgroundColor: backgroundColor,
            ),
            // text
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(title,
                        style: const TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Raleway",
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0),
                        textAlign: TextAlign.left),
                  ),
                  // description
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        description ?? '',
                        style: const TextStyle(
                          color: Color(0xffa7a7a7),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
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

class PlayListContainer extends StatelessWidget {
  const PlayListContainer({
    Key? key,
    required this.title,
    this.description,
    this.image,
    this.onTap,
    this.color = const Color(0xff2E2F33),
  }) : super(key: key);

  final String title;
  final String? description;
  final DecorationImage? image;
  final Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // img
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: color,
                image: image,
              ),
            ),
            // text
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(title,
                        style: const TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Raleway",
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0),
                        textAlign: TextAlign.left),
                  ),
                  // description
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        description ?? '',
                        style: const TextStyle(
                          color: Color(0xffa7a7a7),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
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

class FiltersBuilder extends StatelessWidget {
  const FiltersBuilder({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: list[index].onTap,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    )),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                margin: const EdgeInsets.only(top: 20),
                child: Text(list[index].title,
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Raleway",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0),
                    textAlign: TextAlign.left),
              ),
            ),
          );
        }),
      ),
    );
  }
}
