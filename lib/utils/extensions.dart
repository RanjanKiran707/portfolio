import 'package:flutter/material.dart';

extension TextThemeExt on BuildContext {
  TextStyle get bodyM => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodyS => Theme.of(this).textTheme.bodySmall!;
  TextStyle get bodyL => Theme.of(this).textTheme.bodyLarge!;

  TextStyle get headM => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headS => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get headL => Theme.of(this).textTheme.headlineLarge!;
}

extension FontExt on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  TextStyle col(Color color) => copyWith(color: color);
}

extension PadExt on Widget {
  Widget pAll(double pad) => Padding(padding: EdgeInsets.all(pad), child: this);
  Widget pSym({double? h, double? v}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: h ?? 0, vertical: v ?? 0),
      child: this);
  Widget pH(double pad) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: pad), child: this);
  Widget pV(double pad) =>
      Padding(padding: EdgeInsets.symmetric(vertical: pad), child: this);
  Widget pT(double pad) =>
      Padding(padding: EdgeInsets.only(top: pad), child: this);
  Widget pB(double pad) =>
      Padding(padding: EdgeInsets.only(bottom: pad), child: this);
  Widget pL(double pad) =>
      Padding(padding: EdgeInsets.only(left: pad), child: this);
  Widget pR(double pad) =>
      Padding(padding: EdgeInsets.only(right: pad), child: this);
}

extension BoxExt on num {
  Widget get hBox => SizedBox(height: toDouble());
  Widget get wBox => SizedBox(width: toDouble());
}

extension DimensionExt on BuildContext {
  double get dHeight => MediaQuery.of(this).size.height;
  double get dWidth => MediaQuery.of(this).size.width;
}
