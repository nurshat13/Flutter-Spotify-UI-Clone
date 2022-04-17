import 'package:flutter/material.dart';

import '../const.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (() {}),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          '$kAssetIconsWay/$icon',
          color: Colors.white,
        ),
      ),
    );
  }
}
