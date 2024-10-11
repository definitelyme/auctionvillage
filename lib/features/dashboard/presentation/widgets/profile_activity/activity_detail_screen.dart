library activity_detail_screen.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget that renders `ActivityDetailScreen`.
class ActivityDetailScreen extends StatelessWidget with AutoRouteWrapper {
  final Deal deal;

  const ActivityDetailScreen(this.deal, {super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Center(
        child: Text('Template for ActivityDetailScreen'),
      ),
    );
  }
}
