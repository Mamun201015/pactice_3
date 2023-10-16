import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utiles/img _url.dart';

class KAppImage extends StatelessWidget {
  const KAppImage(
      {super.key, required this.imageUrl, this.height = 100, this.width = 200});
  final String imageUrl;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.blue, BlendMode.colorBurn),
        )),
      ),
      placeholder: (context, url) => Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(KlodingImage)),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(KerrorImage)),
        ),
      ),
    );
  }
}
