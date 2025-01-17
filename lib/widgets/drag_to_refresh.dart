library global_refresh_config.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// A stateless widget to render DragToRefresh.
bool checkHasAncestor<T extends InheritedWidget>(BuildContext context) {
  if (context.widget is! T && context.getElementForInheritedWidgetOfExactType<T>() == null) {
    return false;
  }
  return true;
}

class DragToRefresh extends StatefulWidget {
  final void Function(DragToRefreshState)? onLoading;
  final void Function(DragToRefreshState)? onRefresh;
  final Widget child;
  final Duration completeDuration;
  final Axis direction;
  final bool enablePullDown;
  final bool enablePullUp;
  final Widget Function(Widget)? footerLoader;
  final Widget Function(Widget)? headerLoader;
  final double Function(double)? footerHeight;
  final double Function(double)? headerHeight;
  final bool initialRefresh;
  final ScrollPhysics? physics;
  final bool? primary;
  final bool? reversed;
  final ScrollController? scrollController;

  const DragToRefresh({
    Key? key,
    required this.child,
    this.initialRefresh = false,
    this.enablePullDown = true,
    this.enablePullUp = false,
    this.onRefresh,
    this.onLoading,
    this.direction = Axis.vertical,
    this.completeDuration = const Duration(seconds: 15),
    this.scrollController,
    this.primary,
    this.physics,
    this.reversed,
    this.headerLoader,
    this.footerLoader,
    this.headerHeight,
    this.footerHeight,
  }) : super(key: key);

  @override
  State<DragToRefresh> createState() => DragToRefreshState();

  static DragToRefreshState? maybeOf(BuildContext context) {
    if (checkHasAncestor<RefreshState>(context)) {
      return context.dependOnInheritedWidgetOfExactType<RefreshState>()!.refresher;
    } else {
      return null;
    }
  }

  static DragToRefreshState of(BuildContext context, {bool build = true}) {
    assert(RefreshState.debugCheckHasRefreshState(context));
    return build ? RefreshState.of(context)!.refresher : context.findAncestorWidgetOfExactType<RefreshState>()!.refresher;
  }
}

class DragToRefreshState extends State<DragToRefresh>
    with TickerProviderStateMixin<DragToRefresh>, AutomaticKeepAliveClientMixin<DragToRefresh> {
  late AnimationController _footerController, _footerScaleController;
  bool _isInitialRefresh = false;
  bool _isLoading = false;
  bool _isRefreshing = false;
  late AnimationController _animationcontroller, _scaleController;

  late RefreshController controller;

  @override
  void dispose() {
    try {
      controller.dispose();
      _footerScaleController.dispose();
      _scaleController.dispose();
      _footerController.dispose();
      _animationcontroller.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  void initState() {
    _isInitialRefresh = widget.initialRefresh;

    controller = RefreshController(initialRefresh: widget.initialRefresh);

    _animationcontroller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    _scaleController = AnimationController(value: 0.0, vsync: this, upperBound: 1.0);

    _footerScaleController = AnimationController(value: 0.0, vsync: this, upperBound: 1.0);

    _footerController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    controller.headerMode?.addListener(() {
      if (controller.headerStatus == RefreshStatus.idle) {
        _scaleController.value = 0.0;
        _animationcontroller.reset();
      } else if (controller.headerStatus == RefreshStatus.refreshing) {
        _animationcontroller.repeat();
      }
    });

    controller.footerMode?.addListener(() {
      if (controller.footerStatus == LoadStatus.idle) {
        _footerScaleController.value = 0.0;
        _footerController.reset();
      } else if (controller.footerStatus == LoadStatus.loading) {
        _footerController.repeat();
      }
    });

    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  ScrollPhysics get _physics => widget.physics ?? Utils.physics;
  bool get isInitialRefresh => _isInitialRefresh;
  bool get isLoading => _isLoading;
  bool get isRefreshing => _isRefreshing;

  void loadComplete() {
    controller.loadComplete();
    if (mounted) setState(() => _isLoading = false);
  }

  void loadNoData() => controller.loadNoData();

  void refreshCompleted({bool resetFooterState = false}) {
    controller.refreshCompleted(resetFooterState: resetFooterState);
    if (mounted) setState(() => _isRefreshing = false);
  }

  void requestLoading() => controller.requestLoading();

  void requestRefresh() => controller.requestRefresh();

  void resetNoData() => controller.resetNoData();

  void updateController(RefreshController controller) => setState(() => controller = controller);

  double get _headerHeight => widget.headerHeight?.call(60) ?? 60;
  double get _footerHeight => widget.footerHeight?.call(60) ?? 60;

  Widget? _buildMaterialRefresh() {
    if (!(App.platform.isIOS || App.platform.isMacOS))
      return RefreshProgressIndicator(
        backgroundColor: Palette.elevationOverlay,
        color: App.resolveColor(Palette.primaryColor, dark: Colors.white70),
        strokeWidth: 2,
      );
    return null;
  }

  Widget get _defaultHeaderLoader => Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: FadeTransition(
            opacity: _scaleController,
            child: ScaleTransition(
              scale: _scaleController,
              child: Utils.platform_(
                material: _buildMaterialRefresh(),
                cupertino: const CircularProgressBar.adaptive(height: 30, width: 30, radius: 12),
              ),
            ),
          ),
        ),
      );

  Widget get _defaultFooterLoader => Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: FadeTransition(
          opacity: _footerScaleController,
          child: ScaleTransition(
            scale: _footerScaleController,
            child: Utils.platform_(
              material: _buildMaterialRefresh(),
              cupertino: const CircularProgressBar.adaptive(height: 30, width: 30, radius: 12),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return RefreshState(
      refresher: this,
      controller: controller,
      child: Builder(
        builder: (c) => SmartRefresher(
          controller: controller,
          enablePullDown: widget.enablePullDown,
          enablePullUp: widget.enablePullUp,
          scrollDirection: widget.direction,
          primary: widget.primary,
          scrollController: widget.scrollController,
          reverse: widget.reversed,
          physics: _physics,
          onRefresh: () {
            setState(() {
              _isRefreshing = true;
              if (_isInitialRefresh) _isInitialRefresh = false;
            });

            widget.onRefresh?.call(this);

            Future.delayed(widget.completeDuration, () {
              if (isRefreshing) refreshCompleted(resetFooterState: true);
            });
          },
          onLoading: () {
            setState(() => _isLoading = true);

            widget.onLoading?.call(this);

            Future.delayed(widget.completeDuration, () {
              if (isLoading) loadComplete();
            });
          },
          header: CustomHeader(
            refreshStyle: RefreshStyle.Follow,
            height: _headerHeight,
            builder: (c, m) => (widget.headerLoader != null ? widget.headerLoader!(_defaultHeaderLoader) : _defaultHeaderLoader),
            onOffsetChange: (offset) {
              if (controller.headerMode?.value != RefreshStatus.refreshing) _scaleController.value = offset / 80.0;
            },
          ),
          footer: CustomFooter(
            loadStyle: LoadStyle.ShowWhenLoading,
            height: _footerHeight,
            onModeChange: (mode) {
              if (mode == LoadStatus.loading) {
                _footerScaleController.value = 60.0;
                _footerController.repeat();
              } else {
                _footerController.reset();
              }
            },
            onOffsetChange: (offset) {
              if (controller.footerMode?.value != LoadStatus.loading) _footerScaleController.value = offset * 80.0;
            },
            builder: (context, mode) {
              Widget child;
              switch (mode) {
                case LoadStatus.failed:
                  child = const Text('Failed! Try again.');
                  break;
                case LoadStatus.noMore:
                  child = Utils.nothing;
                  break;
                case LoadStatus.loading:
                case LoadStatus.canLoading:
                  child = (widget.footerLoader != null ? widget.footerLoader!(_defaultFooterLoader) : _defaultFooterLoader);
                  break;
                case LoadStatus.idle:
                default:
                  child = Utils.nothing;
              }
              return Center(child: child);
            },
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

class RefreshState extends InheritedWidget {
  final RefreshController controller;
  final DragToRefreshState refresher;

  const RefreshState({
    Key? key,
    required Widget child,
    required this.controller,
    required this.refresher,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(RefreshState oldWidget) => controller != oldWidget.controller;

  /// Asserts that the given context has a [RefreshState] ancestor.
  ///
  /// Used by various widgets to make sure that they are only used in an
  /// appropriate context.
  ///
  /// To invoke this function, use the following pattern, typically in the
  /// relevant Widget's build method:
  ///
  /// ```dart
  /// assert(debugCheckHasRefreshState(context));
  /// ```
  ///
  /// Does nothing if asserts are disabled. Always returns true.
  static bool debugCheckHasRefreshState(BuildContext context) {
    assert(() {
      if (context.widget is! RefreshState && context.getElementForInheritedWidgetOfExactType<RefreshState>() == null) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No RefreshState widget ancestor found.'),
          ErrorDescription('${context.widget.runtimeType} widgets require a RefreshState widget ancestor.'),
          context.describeWidget('The specific widget that could not find a RefreshState ancestor was'),
          context.describeOwnershipChain('The ownership chain for the affected widget is'),
          ErrorHint(
            'No RefreshState ancestor could be found starting from the context '
            'that was passed to RefreshState.of(). This can happen because you '
            'have not added a DragToRefresh widget, which introduce a RefreshState, or it can happen if the '
            'context you use comes from a widget above the DragToRefresh widget.',
          ),
        ]);
      }
      return true;
    }());
    return true;
  }

  static RefreshState? of(BuildContext context) {
    assert(debugCheckHasRefreshState(context));
    return context.dependOnInheritedWidgetOfExactType<RefreshState>();
  }
}
