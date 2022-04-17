import 'package:flutter/material.dart';

class SectionBuilder extends StatelessWidget {
  const SectionBuilder({
    Key? key,
    required this.sectionTitle,
    required this.sectionBodyBuilder,
    this.titlePadding = const EdgeInsets.only(left: 16, bottom: 18),
    this.padding = const EdgeInsets.only(bottom: 36),
  }) : super(key: key);

  final String sectionTitle;
  final Widget Function(BuildContext) sectionBodyBuilder;
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Padding(
            padding: titlePadding,
            child: Text(sectionTitle,
                style: const TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Raleway",
                    fontStyle: FontStyle.normal,
                    fontSize: 22.0,
                    overflow: TextOverflow.ellipsis),
                maxLines: 2,
                textAlign: TextAlign.left),
          ),
          Builder(builder: sectionBodyBuilder),
        ],
      ),
    );
  }
}
