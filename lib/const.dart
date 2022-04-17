import 'package:flutter/material.dart';

const String kAssetIconsWay = 'assets/icons';

class PlayListItem {
  String img;
  String title;
  String? creator;
  PlayListItem({required this.title, required this.img, this.creator});
}

List<PlayListItem> kPlaylistGrid = [
  PlayListItem(
      title: 'Discover Weekly',
      img:
          'https://i04.fotocdn.net/s120/4817cfcc54ca9dc7/gallery_m/2738200936.jpg'),
  PlayListItem(
      title: 'Daily Mix 1',
      img:
          'https://i0.wp.com/www.noise11.com/wp/wp-content/uploads/2021/11/Adele-30.jpg?fit=875%2C875'),
  PlayListItem(
      title: 'Daily Mix 3',
      img:
          'https://yt3.ggpht.com/ytc/AKedOLSrzEtaB6cNd0sxMDapTZ0ZIIKcGQMtGNaZ6py00Q=s900-c-k-c0x00ffffff-no-rj'),
  PlayListItem(
      title: 'Chill Vibes',
      img:
          'https://www.fashionkibatain.com/wp-content/uploads/2017/04/guided-meditaiton.jpg'),
  PlayListItem(
      title: 'Tea Time',
      img: 'https://yanashla.com/wp-content/uploads/2020/01/9-15.jpg'),
  PlayListItem(
      title: 'Power Hour',
      img:
          'https://i.pinimg.com/originals/83/89/e0/8389e09578661f065d4b63ad86274b85.jpg'),
];

List<PlayListItem> kPlaylistPodcast = [
  PlayListItem(
      title: 'Supercars and cities',
      img:
          'https://www.wallpaperup.com/uploads/wallpapers/2013/01/01/27232/c59d12f56d7184506feedc70a6e99d07.jpg',
      creator: 'Show • Urban racer'),
  PlayListItem(
      title: 'Best barn finds',
      img:
          'https://avatars.mds.yandex.net/i?id=2a00000179eebf726d02d101ef4e3b2f77b4-2465206-images-thumbs&n=13',
      creator: 'Show • Car finder'),
  PlayListItem(
      title: 'Life at the red line',
      img:
          'https://www.mayrolaw.com/wp-content/uploads/2015/01/bigstock-Reducing-Speed-Safe-Driving-Co-50241104.jpg',
      creator: 'Show • Speedometer'),
];

List<PlayListItem> kPlaylistForYou = [
  PlayListItem(
    title: 'Current favorites and exciting new music. Cover: Charlie Puth',
    img:
        'https://i.pinimg.com/originals/00/08/f1/0008f11215f57750298696f2f922bdec.jpg',
  ),
  PlayListItem(
    title: 'Viral classics. Yep, we\'re at that stage.',
    img:
        'https://i.guim.co.uk/img/media/e66319b921c674d456265f30cfddb1750516c402/0_122_3905_2343/master/3905.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=e8262c27baa05ec6ba2b0f48b95433dd',
  ),
  PlayListItem(
    title: 'A mega mix of 75 favorites from the last few years!',
    img:
        'https://images6.fanpop.com/image/photos/39000000/Billboard-Photoshoot-ed-sheeran-39022303-540-665.jpg',
  ),
];

class SearchListItem {
  String img;
  String title;
  Color color;
  SearchListItem({required this.title, required this.img, required this.color});
}

List<SearchListItem> kPlaylistSdded = [
  SearchListItem(
    title: 'Rock',
    img: 'https://pbs.twimg.com/media/EJMbrPkVUAIxT9g.jpg',
    color: Colors.red,
  ),
  SearchListItem(
      title: 'Indie',
      img:
          'https://slaysonics.com/wp-content/uploads/2019/01/Indie-Electronic-Playlist.jpg',
      color: const Color.fromARGB(255, 194, 152, 1)),
];

List<SearchListItem> kAllSearh = [
  SearchListItem(
    title: 'Holiday',
    img:
        'https://banner2.cleanpng.com/20180325/xye/kisspng-beach-arecaceae-drawing-clip-art-beaches-5ab80b35ea50d6.7026522115220109339598.jpg',
    color: const Color.fromARGB(255, 194, 152, 1),
  ),
  SearchListItem(
      title: 'Trending',
      img:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-esquire-inorout-ep05-jack-harlow-kd-dn-rough-v1-copy-01-00-02-55-00-still008-1584377354.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://images.pexels.com/photos/355887/pexels-photo-355887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Soulfull',
      img:
          'https://i.pinimg.com/736x/0b/ba/16/0bba16d65137736c3ce02eb847b3a09d.jpg',
      color: Color.fromARGB(187, 255, 42, 0)),
  SearchListItem(
    title: 'Holiday',
    img:
        'https://banner2.cleanpng.com/20180325/xye/kisspng-beach-arecaceae-drawing-clip-art-beaches-5ab80b35ea50d6.7026522115220109339598.jpg',
    color: const Color.fromARGB(255, 194, 152, 1),
  ),
  SearchListItem(
      title: 'Trending',
      img:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-esquire-inorout-ep05-jack-harlow-kd-dn-rough-v1-copy-01-00-02-55-00-still008-1584377354.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://images.pexels.com/photos/355887/pexels-photo-355887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Soulfull',
      img:
          'https://i.pinimg.com/736x/0b/ba/16/0bba16d65137736c3ce02eb847b3a09d.jpg',
      color: Color.fromARGB(187, 255, 42, 0)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://images.pexels.com/photos/355887/pexels-photo-355887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Soulfull',
      img:
          'https://i.pinimg.com/736x/0b/ba/16/0bba16d65137736c3ce02eb847b3a09d.jpg',
      color: Color.fromARGB(187, 255, 42, 0)),
  SearchListItem(
      title: 'Trending',
      img:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-esquire-inorout-ep05-jack-harlow-kd-dn-rough-v1-copy-01-00-02-55-00-still008-1584377354.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://images.pexels.com/photos/355887/pexels-photo-355887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      color: const Color.fromARGB(255, 0, 20, 153)),
  SearchListItem(
      title: 'Trending',
      img:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-esquire-inorout-ep05-jack-harlow-kd-dn-rough-v1-copy-01-00-02-55-00-still008-1584377354.jpg',
      color: const Color.fromARGB(255, 249, 64, 255)),
  SearchListItem(
      title: 'Sleep',
      img:
          'https://images.pexels.com/photos/355887/pexels-photo-355887.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      color: const Color.fromARGB(255, 0, 20, 153)),
];

class FilterItem {
  String title;
  Function()? onTap;
  FilterItem({
    required this.title,
    this.onTap,
  });
}

List<FilterItem> kFilters = [
  FilterItem(
    title: 'Playlist',
  ),
  FilterItem(
    title: 'Artist',
  ),
];
