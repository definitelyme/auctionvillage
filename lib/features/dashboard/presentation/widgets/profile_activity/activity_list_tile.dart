library activity_list_tile.dart;

import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget that renders `ActivityListTile`.
class ActivityListTile extends StatelessWidget {
  final Deal? deal;

  const ActivityListTile(this.deal, {super.key});

  @override
  Widget build(BuildContext context) {
    final bidStatus = deal?.bidStatusForUser(context.read<AuthWatcherCubit>().user);

    return AdaptiveListTile(
      leading: ImageBox.network(
        photo: deal?.product?.photos.getOrNull(0)?.image.getOrNull,
        cacheOrResizeImageInFullscreen: false,
        borderRadius: 100.br,
        width: 45,
        height: 45,
        cacheHeight: 45,
        cacheWidth: 45,
      ),
      trailing: Icon(
        Utils.platform_(material: Icons.arrow_forward_ios_rounded, cupertino: CupertinoIcons.forward),
        size: 16,
        color: Palette.iconColor,
      ),
      title: AdaptiveText(
        '${deal?.product?.name}',
        maxLines: 2,
        fontSize: 15.sp,
        minFontSize: 14,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: bidStatus == null
          ? null
          : Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Material(
                  borderRadius: 100.br,
                  color: bidStatus.bgColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    child: AdaptiveText(
                      bidStatus.value,
                      maxLines: 2,
                      fontSize: 13.sp,
                      minFontSize: 12,
                      textColor: bidStatus.color,
                      textColorDark: bidStatus.color,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
      horizontalTitleGap: 0.037.w,
      noCupertinoBorder: true,
      contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      onTap: () {},
    );
  }
}
