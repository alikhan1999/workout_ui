import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImageWidget extends StatelessWidget {
  final String? url;
  final double width, height, radius;

  const CacheImageWidget(
      {super.key,
      required this.url,
      this.width = 90,
      this.height = 90,
      this.radius = 100});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        height: height,
        width: width,
        repeat: ImageRepeat.noRepeat,
        imageUrl: url??"https://placehold.co/600x400.png",
        fit:BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            Image.asset(
          'assets/images/placeholder.png',
          fit: BoxFit.cover,
        ),
        errorWidget: (context, url, error) => Image.asset(
          'assets/images/error_image.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
