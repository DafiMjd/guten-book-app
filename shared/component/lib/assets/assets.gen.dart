/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetBookGen {
  const $AssetBookGen();

  /// Directory path: asset/book/img
  $AssetBookImgGen get img => const $AssetBookImgGen();

  /// Directory path: asset/book/svg
  $AssetBookSvgGen get svg => const $AssetBookSvgGen();
}

class $AssetBookImgGen {
  const $AssetBookImgGen();

  /// File path: asset/book/img/dummy_book.jpg
  AssetGenImage get dummyBook =>
      const AssetGenImage('asset/book/img/dummy_book.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [dummyBook];
}

class $AssetBookSvgGen {
  const $AssetBookSvgGen();

  /// File path: asset/book/svg/ic_copyright.svg
  String get icCopyright => 'asset/book/svg/ic_copyright.svg';

  /// File path: asset/book/svg/ic_heart_active.svg
  String get icHeartActive => 'asset/book/svg/ic_heart_active.svg';

  /// File path: asset/book/svg/ic_heart_inactive.svg
  String get icHeartInactive => 'asset/book/svg/ic_heart_inactive.svg';

  /// File path: asset/book/svg/ic_home_active.svg
  String get icHomeActive => 'asset/book/svg/ic_home_active.svg';

  /// File path: asset/book/svg/ic_home_inactive.svg
  String get icHomeInactive => 'asset/book/svg/ic_home_inactive.svg';

  /// List of all assets
  List<String> get values => [
    icCopyright,
    icHeartActive,
    icHeartInactive,
    icHomeActive,
    icHomeInactive,
  ];
}

class Assets {
  const Assets._();

  static const $AssetBookGen book = $AssetBookGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
