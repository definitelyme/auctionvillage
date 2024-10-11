library success_screen.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render SuccessScreen.
class SuccessScreen extends StatefulWidget with AutoRouteWrapper {
  final Widget? svg;
  final Widget? image;
  final String title;
  final String? description;
  final String? footnote;
  final Widget? footWidget;
  final String? buttonText;
  final Duration animationDuration;
  final EdgeInsets? padding;
  final BoxFit fit;
  final double? width;
  final double? height;
  final VoidCallback? onButtonPressed;
  final Future<bool> Function()? onBackPressed;
  final Future<void> Function()? onInitState;
  final bool hasAppbar;

  const SuccessScreen({
    Key? key,
    this.svg,
    this.image,
    required this.title,
    this.description,
    this.footnote,
    this.footWidget,
    this.buttonText,
    this.animationDuration = const Duration(milliseconds: 1600),
    this.fit = BoxFit.cover,
    this.padding,
    this.width,
    this.height,
    this.onButtonPressed,
    this.onBackPressed,
    this.onInitState,
    this.hasAppbar = true,
  })  : assert((svg != null && image == null) || (svg == null && image != null) || (svg == null && image == null)),
        super(key: key);

  @override
  SuccessScreenState createState() => SuccessScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class SuccessScreenState extends State<SuccessScreen> with AutomaticKeepAliveClientMixin<SuccessScreen> {
  bool isInit = true;

  @override
  void didChangeDependencies() async {
    if (widget.onInitState != null && isInit) {
      await widget.onInitState!.call();
      setState(() => isInit = false);
    }

    super.didChangeDependencies();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: widget.onBackPressed,
      child: AdaptiveScaffold(
        adaptiveToolbar: widget.hasAppbar ? const AdaptiveToolbar() : null,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(App.sidePadding).merge(widget.padding),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Builder(builder: (_) {
                            if (widget.image != null)
                              return Image.asset(
                                '${widget.image}',
                                width: widget.width,
                                height: widget.height,
                                fit: BoxFit.contain,
                              );
                            if (widget.svg != null) return widget.svg!;
                            return Utils.nothing;
                          }),
                        ),
                        //
                        VerticalSpace(height: 0.06.sw),
                        //
                        Align(
                          alignment: Alignment.center,
                          child: AdaptiveText(
                            widget.title,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            maxFontSize: 22,
                            letterSpacing: Utils.letterSpacing,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        //
                        ...widget.description?.let((it) => [
                                  VerticalSpace(height: 0.04.sw),
                                  //
                                  Align(
                                    alignment: Alignment.center,
                                    child: AdaptiveText(
                                      '${widget.description}',
                                      fontSize: 17.sp,
                                      textAlign: TextAlign.center,
                                      letterSpacing: Utils.letterSpacing,
                                    ),
                                  ),
                                ]) ??
                            [Utils.nothing],
                        //
                        VerticalSpace(height: 0.08.sw),
                        //
                        widget.buttonText?.let(
                              (it) => AppButton(
                                text: widget.buttonText,
                                onPressed: widget.onButtonPressed,
                              ),
                            ) ??
                            Utils.nothing,
                      ],
                    ),
                  ),
                ),
                //
                ...widget.footnote?.let((it) => [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: AdaptiveText(
                              '${widget.footnote}',
                              fontSize: 17.sp,
                              maxFontSize: 18,
                              // textAlign: TextAlign.center,
                              letterSpacing: Utils.letterSpacing,
                              style: const TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ]) ??
                    [widget.footWidget ?? Utils.nothing],
                //
                0.025.verticalh,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
