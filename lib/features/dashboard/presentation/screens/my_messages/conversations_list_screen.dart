library conversations_list_screen.dart;

import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateful widget that renders `ConversationsListScreen`.
class ConversationsListScreen extends StatefulWidget with AutoRouteWrapper {
  const ConversationsListScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  ConversationsListScreenState createState() => ConversationsListScreenState();
}

class ConversationsListScreenState extends State<ConversationsListScreen> {
  @override
  Widget build(BuildContext context) {
    return const AdaptiveScaffold(
      body: AdaptiveScaffoldBody(
        body: Center(
          child: Text('Template for ConversationsListScreen'),
        ),
      ),
    );
  }
}
