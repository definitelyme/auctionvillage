library profile_toolbar_icon.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

class ProfileToolbarIcon extends StatelessWidget {
  final bool align;
  final AlignmentGeometry alignment;
  final bool disabled;
  final double maxRadius;
  final bool hideIfNotLoggedIn;

  const ProfileToolbarIcon({
    Key? key,
    this.align = true,
    this.alignment = Alignment.center,
    this.disabled = false,
    this.maxRadius = 20,
    this.hideIfNotLoggedIn = true,
  }) : super(key: key);

  Widget _maybeAlign({required Widget child}) => align ? Align(alignment: alignment, child: child) : child;

  Widget _visibility({required Widget child, bool visible = true}) => hideIfNotLoggedIn ? (visible ? child : Utils.nothing) : child;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
      selector: (s) => s.user,
      builder: (c, user) => _visibility(
        visible: user != null,
        child: _maybeAlign(
          child: Center(
            child: ImageBox.avatar(
              photo: user?.photo.image.getOrNull,
              cacheHeight: 40,
              cacheWidth: 40,
              maxRadius: maxRadius,
              boxShape: BoxShape.circle,
              borderRadius: 100.br,
              circleAvatarBackgroundColor: (_) => Palette.background,
              replacementAsset: AssetsImagesDashboard.unnamedPNG,
              avatarInitials: user?.initials,
              expandsFullscreen: App.platform.isIOS,
              cacheOrResizeImageInFullscreen: false,
              onPressed: disabled
                  ? null
                  : (_) {
                      if (!App.platform.isIOS) context.tabsRouter.setActiveIndex(3);
                    },
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
