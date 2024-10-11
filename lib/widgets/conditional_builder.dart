library conditional_builder.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render ConditionalBuilder.
class ConditionalBuilder extends StatelessWidget {
  final bool showChild;
  final bool showReplacement;
  final Widget child;
  final Widget replacement;

  const ConditionalBuilder({
    Key? key,
    this.showChild = true,
    this.showReplacement = true,
    required this.child,
    this.replacement = Utils.nothing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showChild) return child;
    if (showReplacement) return replacement;
    return child;
  }
}
