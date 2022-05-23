import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/values/colors.dart';

class CircularNetworkImage extends StatelessWidget {
  final String? url;
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
      child: url == null
          ? Icon(
              Icons.person,
              color: colorDivider,
              size: dimension,
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(100),
              clipBehavior: Clip.antiAlias,
              child: FittedBox(
                fit: boxFit,
                child: CachedNetworkImage(
                  imageUrl: url!,
                  progressIndicatorBuilder: (context, _, __) => const Padding(
                    padding: EdgeInsets.all(4),
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.broken_image_rounded,
                      color: colorDivider,
                      size: dimension,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
