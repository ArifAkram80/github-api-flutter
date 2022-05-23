import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircularNetworkImage extends StatelessWidget {
  final String url;
  final double dimension;
  final BoxFit boxFit;

  const CircularNetworkImage(
      {required this.url,
      required this.dimension,
      this.boxFit = BoxFit.contain,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: FittedBox(
        fit: boxFit,
        child: CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(
            url,
            maxHeight: dimension.toInt(),
            maxWidth: dimension.toInt(),
          ),
        ),
      ),
    );
  }
}
