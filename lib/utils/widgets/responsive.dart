import 'package:flutter/material.dart';

class ResponsiveView extends StatefulWidget {
  const ResponsiveView({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  final Widget mobile;
  final Widget desktop;

  @override
  State<ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width <= 800) {
      return widget.mobile;
    }
    return widget.desktop;
  }
}
