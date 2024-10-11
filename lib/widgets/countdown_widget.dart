import 'dart:async';

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

import 'package:flutter/material.dart';

/// A stateless widget to render CountdownWidget.
class CountdownWidget extends StatefulWidget {
  final Widget Function(VoidCallback) child;
  final Widget Function(String)? ticker;
  final Widget Function(String, String, String, String)? tickerGroup;
  final Duration duration;
  final Future<void>? Function()? onTap;
  final VoidCallback? onPressed;
  final bool autostart;
  final bool showHourRemainder;
  final bool showMinuteRemainder;
  final String Function(String)? daysBuilder;
  final bool showZeroTimer;

  const CountdownWidget({
    Key? key,
    this.duration = const Duration(minutes: 2),
    required this.child,
    this.ticker,
    this.tickerGroup,
    this.onTap,
    this.onPressed,
    this.autostart = false,
    this.showHourRemainder = true,
    this.showMinuteRemainder = true,
    this.daysBuilder,
    this.showZeroTimer = false,
  }) : super(key: key);

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> with AutomaticKeepAliveClientMixin<CountdownWidget> {
  static const oneSec = Duration(seconds: 1);

  late Duration duration;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // init duration
    duration = widget.duration;
    if (widget.autostart) startCountdown();
  }

  @override
  bool get wantKeepAlive => true;

  bool get hasDays => duration.inDays > 0;

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  String get _hours {
    if (widget.showHourRemainder) {
      return _twoDigits(duration.inHours.remainder(24));
    } else {
      return duration.inHours > 0 ? _twoDigits(duration.inHours.remainder(24)) : '';
    }
  }

  String get _minutes {
    if (widget.showMinuteRemainder) {
      return _twoDigits(duration.inMinutes.remainder(60));
    } else {
      return duration.inMinutes > 0 ? _twoDigits(duration.inMinutes.remainder(60)) : '';
    }
  }

  String get _seconds => _twoDigits(duration.inSeconds.remainder(60));

  String _days([String? suffix]) => hasDays ? (suffix != null ? '${_twoDigits(duration.inDays)}$suffix' : _twoDigits(duration.inDays)) : '';

  String get _hourTime => _hours.isNotEmpty ? ' $_hours :' : _hours;

  String get _minuteTime => _minutes.isNotEmpty ? ' $_minutes :' : _minutes;

  String get _secondsTime => _seconds.isNotEmpty ? ' $_seconds' : _seconds;

  String get tick => hasDays && widget.daysBuilder != null
      ? widget.daysBuilder!('${duration.inDays}')
      : (_days(' ${'day'.pluralize(duration.inDays)},') + _hourTime + _minuteTime + _secondsTime);

  Widget get _ticker => widget.ticker?.call(tick) ?? AdaptiveText(tick, fontSize: 15.0);

  void startCountdown() {
    // Reset Duration
    duration = widget.duration;
    // Cancel timer if already started
    timer?.cancel();

    // Start timer
    timer = Timer.periodic(oneSec, (timer) {
      if (mounted)
        setState(() {
          if (duration.inSeconds > 0) {
            duration = duration - oneSec;
          } else {
            timer.cancel();
          }
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AnimatedVisibility(
      visible: !widget.showZeroTimer && duration.inSeconds == 0,
      replacement: widget.tickerGroup?.call(_days(), _hours, _minutes, _seconds) ?? _ticker,
      child: GestureDetector(
        onTap: () async {
          await widget.onTap?.call();
          widget.onPressed?.call();
          // start countdown
          startCountdown();
        },
        child: widget.child.call(startCountdown),
      ),
    );
  }
}
