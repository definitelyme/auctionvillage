library spinkit_loader.dart;

import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SpinKitLoader extends StatefulWidget {
  final Color? color;
  final Color? colorDark;
  final Duration duration;
  final double strokeWidth;
  final IndexedWidgetBuilder? builder;
  final AnimationController Function()? controller;
  final bool shouldDispose;
  final double? value;
  final double radius;

  const SpinKitLoader({
    Key? key,
    this.strokeWidth = 2,
    this.color,
    this.colorDark,
    this.duration = const Duration(milliseconds: 700),
    this.value,
    this.builder,
    this.controller,
    this.shouldDispose = true,
    this.radius = 12,
  }) : super(key: key);

  @override
  SpinKitLoaderState createState() => SpinKitLoaderState();
}

class SpinKitLoaderState extends State<SpinKitLoader> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin<SpinKitLoader> {
  late AnimationController _controller;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _controller = widget.controller!.call();
    } else {
      _controller = AnimationController(
        vsync: this,
        duration: widget.duration,
      );
    }
  }

  @override
  void dispose() {
    if (widget.shouldDispose) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Center(
      child: CircularProgressBar.adaptive(
        height: 30,
        width: 30,
        strokeWidth: widget.strokeWidth,
        radius: widget.radius,
        value: widget.value,
        color: widget.color,
        colorDark: widget.colorDark,
      ),
    );
  }
}
