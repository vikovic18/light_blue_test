import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumBluegray50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray50,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  // Headline text style
  static get headlineSmallGray90002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineSmallff121315 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF121315),
      );
  // Label text style
  static get labelMediumGray90002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get labelMediumLightblue400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlue400,
      );
  // Title text style
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleMediumInterGray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90002 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInstrumentSansBluegray900 =>
      theme.textTheme.titleSmall!.instrumentSans.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallInstrumentSansGray900 =>
      theme.textTheme.titleSmall!.instrumentSans.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallInstrumentSansLightblue400 =>
      theme.textTheme.titleSmall!.instrumentSans.copyWith(
        color: appTheme.lightBlue400,
      );
  static get titleSmallInstrumentSansLightblue40015 =>
      theme.textTheme.titleSmall!.instrumentSans.copyWith(
        color: appTheme.lightBlue400,
        fontSize: 15.fSize,
      );
  static get titleSmallInstrumentSansWhiteA700 =>
      theme.textTheme.titleSmall!.instrumentSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallInstrumentSansWhiteA70001 =>
      theme.textTheme.titleSmall!.instrumentSans.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get instrumentSans {
    return copyWith(
      fontFamily: 'Instrument Sans',
    );
  }
}
