library dirty_widget_observer.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateful widget to render DirtyTree.
class DirtyTree extends StatefulWidget {
  final Widget? child;
  final WidgetBuilder? builder;
  final void Function(DragToRefreshState?)? onPopTopRoute;
  final void Function(DragToRefreshState?)? onPushTopRoute;
  final void Function(DragToRefreshState?)? onPop;
  final void Function(DragToRefreshState?)? onPush;
  final void Function(TabPageRoute, DragToRefreshState?)? didChangeTabRoute;
  final void Function(TabPageRoute?, DragToRefreshState?)? didInitTabRoute;

  const DirtyTree({
    Key? key,
    this.child,
    this.builder,
    this.onPopTopRoute,
    this.onPushTopRoute,
    this.onPop,
    this.onPush,
    this.didChangeTabRoute,
    this.didInitTabRoute,
  })  : assert((builder == null && child != null) ||
            (builder != null && child == null)),
        super(key: key);

  @override
  DirtyTreeState createState() => DirtyTreeState();
}

class DirtyTreeState extends State<DirtyTree> with AutoRouteAware {
  AutoRouteObserver? _observer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // RouterScope exposes the list of provided observers
    // including inherited observers
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      // we subscribe to the observer by passing our
      // AutoRouteAware state and the scoped routeData
      _observer?.subscribe(this, context.routeData);
    }
  }

  @override
  void dispose() {
    _observer?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) => widget.didChangeTabRoute
      ?.call(previousRoute, DragToRefresh.maybeOf(context));

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) => widget.didInitTabRoute
      ?.call(previousRoute, DragToRefresh.maybeOf(context));

  @override
  void didPopNext() =>
      widget.onPopTopRoute?.call(DragToRefresh.maybeOf(context));

  @override
  void didPushNext() =>
      widget.onPushTopRoute?.call(DragToRefresh.maybeOf(context));

  @override
  void didPush() => widget.onPush?.call(DragToRefresh.maybeOf(context));

  @override
  void didPop() => widget.onPop?.call(DragToRefresh.maybeOf(context));

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (c) =>
            widget.builder?.call(c) ?? widget.child ?? Utils.nothing);
  }
}
