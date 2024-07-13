import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:flutter/material.dart';

class ImageNetworkAppWidget extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? witdh;
  final BoxFit? fit;

  const ImageNetworkAppWidget({super.key, required this.imageUrl, this.height, this.witdh, this.fit});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      width: witdh,
      fit: fit ?? BoxFit.fitWidth,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          color: GlobalHelper.getColorSchema(context).surfaceVariant,
          height: height ?? 150,
          width: witdh,
          child: Center(
            child: CircularProgressIndicator(
              value: (loadingProgress.expectedTotalBytes != null)
                  ? (loadingProgress.cumulativeBytesLoaded /
                      (loadingProgress.expectedTotalBytes!))
                  : null,
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) => Container(
        height: height ?? 150,
        width: witdh,
        color: GlobalHelper.getColorSchema(context).surfaceVariant,
        child: Center(
          child: Icon(
            Icons.image_not_supported,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
