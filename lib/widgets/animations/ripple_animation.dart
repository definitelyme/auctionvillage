library ripple_animation.dart;

import 'dart:math' as math show sin, pi, sqrt;

import 'package:flutter/material.dart';

class RippleAnimation extends StatefulWidget {
  final Widget child;
  final Color color;
  final double size;
  final int? waveCount;

  const RippleAnimation({
    super.key,
    this.waveCount,
    this.size = 80.0,
    this.color = Colors.redAccent,
    required this.child,
  });

  @override
  _RippleAnimationState createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: CirclePainter(_controller, color: widget.color, count: widget.waveCount),
        child: SizedBox(
          width: widget.size * 4.125,
          height: widget.size * 4.125,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.size),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: <Color>[widget.color, Color.lerp(widget.color, Colors.black, .05)!],
                  ),
                ),
                child: ScaleTransition(
                  scale: Tween(begin: 0.95, end: 1.0).animate(
                    CurvedAnimation(parent: _controller, curve: const CurveWave()),
                  ),
                  child: widget.child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CurveWave extends Curve {
  const CurveWave();

  @override
  double transform(double t) {
    if (t == 0 || t == 1) {
      return 0.01;
    }
    return math.sin(t * math.pi);
  }
}

class CirclePainter extends CustomPainter {
  final Animation<double> _animation;
  final int? count;

  final Color color;

  CirclePainter(
    this._animation, {
    this.count,
    required this.color,
  })  : assert(count == null || !count.isNegative),
        super(repaint: _animation);

  int get _waveCount => count ?? 3;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    for (int wave = _waveCount; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => true;

  void circle(Canvas canvas, Rect rect, double value) {
    final double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    final Color _color = color.withOpacity(opacity);
    final double size = rect.width / 2;
    final double area = size * size;
    final double radius = math.sqrt(area * value / 4);
    final Paint paint = Paint()..color = _color;
    canvas.drawCircle(rect.center, radius, paint);
  }
}
