import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class GtExtendedImageNetwork extends StatelessWidget {
  const GtExtendedImageNetwork({
    super.key,
    required this.imgUrl,
    this.fit,
    this.colorFilter,
    this.borderRadius = 0,
    this.compressionRatio,
    this.customProgressIndicator,
    this.isUseBuilder = true,
    this.filterQuality,
    this.height,
    this.width,
    this.errorWidget,
  });

  final String imgUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final ColorFilter? colorFilter;
  final double? borderRadius;
  final Widget? customProgressIndicator;
  final double? compressionRatio;
  final bool isUseBuilder;
  final Widget? errorWidget;
  final FilterQuality? filterQuality;

  @override
  Widget build(BuildContext context) {
    final errorWidget =
        this.errorWidget ??
        SizedBox(height: height, width: width, child: const Icon(Icons.error));

    if (imgUrl.isEmpty) {
      return errorWidget;
    }

    return ExtendedImage.network(
      imgUrl,
      height: height,
      width: width,
      fit: fit ?? BoxFit.cover,
      compressionRatio: compressionRatio ?? 0.1,
      maxBytes: 20,
      cacheHeight: height?.toInt(),
      cacheWidth: width?.toInt(),
      filterQuality: filterQuality ?? FilterQuality.low,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return SizedBox(
              height: height,
              width: width,
              child:
                  customProgressIndicator ??
                  CircularProgressIndicator(
                    constraints: BoxConstraints(
                      maxWidth: 32.w,
                      maxHeight: 32.w,
                    ),
                  ),
            );
          case LoadState.completed:
            return Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: state.imageProvider,
                  fit: fit ?? BoxFit.cover,
                  colorFilter: colorFilter,
                ),
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              ),
            );
          case LoadState.failed:
            return errorWidget;
        }
      },
    );
  }
}
