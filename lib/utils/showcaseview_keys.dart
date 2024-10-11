library showcaseview_keys.dart;

import 'package:auctionvillage/manager/settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

mixin _Parent {
  List<ShowcaseKey> get keys => throw UnimplementedError();
}

final unlistItemKey = ShowcaseKey('_unlistItemKey');

mixin DashboardScreenKeyMixin {
  static final liveBottomNavKey = ShowcaseKey('$_className^_liveBottomNavKey');
  static final sellBottomNavKey = ShowcaseKey('$_className^_sellBottomNavKey');

  static List<ShowcaseKey> get keys => [liveBottomNavKey, sellBottomNavKey];

  static String get _className => (DashboardScreenKeyMixin).toString();
}

mixin HomeScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final filterKey = ShowcaseKey('_filterKey');
  final searchKey = ShowcaseKey('_searchKey');
  final seeAllKey = ShowcaseKey('$_className^_homeScreenSeeAllKey');
  static final clearanceSaleBtnKey = ShowcaseKey('$_className^_clearanceSaleBtnKey');
  static final buyNowBtnKey = ShowcaseKey('$_className^_buyNowBtnKey');

  @override
  List<ShowcaseKey> get keys => [...DashboardScreenKeyMixin.keys, clearanceSaleBtnKey, buyNowBtnKey, seeAllKey];

  static String get _className => (HomeScreenKeyMixin).toString();
}

mixin LiveScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final filterKey = ShowcaseKey('_filterKey');
  final searchKey = ShowcaseKey('_searchKey');
  final closedAuctionsKey = ShowcaseKey('_closedAuctionsKey');

  @override
  List<ShowcaseKey> get keys => [...DashboardScreenKeyMixin.keys, filterKey, searchKey, closedAuctionsKey];
}

mixin SellScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final clearAllBtnKey = ShowcaseKey('$_className-_clearAllBtnKey');
  final pricingNextBtnKey = ShowcaseKey('$_className^_pricingNextBtnKey');
  final pricingPrevBtnKey = ShowcaseKey('$_className^_pricingPrevBtnKey');

  @override
  List<ShowcaseKey> get keys => [...DashboardScreenKeyMixin.keys, clearAllBtnKey];

  List<ShowcaseKey> get pricingKeys => [pricingPrevBtnKey, pricingNextBtnKey];

  static String get _className => (SellScreenKeyMixin).toString();
}

mixin ChatScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final filterKey = ShowcaseKey('_filterKey');
  final searchKey = ShowcaseKey('_searchKey');

  @override
  List<ShowcaseKey> get keys => [...DashboardScreenKeyMixin.keys, filterKey, searchKey];
}

mixin MoreScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  static final myBidsTileKey = ShowcaseKey('$_className^_myBidsTileKey');
  static final mySalesTileKey = ShowcaseKey('$_className^_mySalesTileKey');
  static final myWishListTileKey = ShowcaseKey('$_className^_myWishListTileKey');
  static final myReviewsTileKey = ShowcaseKey('$_className^_myReviewsTileKey');
  static final helpSupportTileKey = ShowcaseKey('$_className^_helpSupportTileKey');
  final helpSupportFABKey = ShowcaseKey('$_className^_helpSupportFABKey');
  final withdrawBtnKey = ShowcaseKey('_withdrawBtnKey');
  final fundWalletBtnKey = ShowcaseKey('_fundWalletBtnKey');
  final walletHistoryBtnKey = ShowcaseKey('$_className^_walletHistoryBtnKey');

  static String get _className => (MoreScreenKeyMixin).toString();

  @override
  List<ShowcaseKey> get keys => [
        ...DashboardScreenKeyMixin.keys,
        // withdrawBtnKey,
        // fundWalletBtnKey,
        // walletHistoryBtnKey,
        myBidsTileKey,
        mySalesTileKey,
        myWishListTileKey,
        myReviewsTileKey,
        helpSupportTileKey,
      ];
}

mixin DealListScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final filterKey = ShowcaseKey('_filterKey');
  final searchKey = ShowcaseKey('_searchKey');

  @override
  List<ShowcaseKey> get keys => [filterKey, searchKey];
}

mixin MyBidsScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final auctionParticipatedKey = ShowcaseKey('$_className^_auctionParticipatedKey');
  final winningBidsKey = ShowcaseKey('$_className^_winningBidsKey');
  final bidHistoryItemKey = ShowcaseKey('$_className^_bidHistoryItemKey');

  @override
  List<ShowcaseKey> get keys => [auctionParticipatedKey, winningBidsKey, bidHistoryItemKey];

  static String get _className => (MyBidsScreenKeyMixin).toString();
}

mixin WalletHistoryScreenMixin<T extends StatefulWidget> on State<T> implements _Parent {
  final withdrawBtnKey = ShowcaseKey('_withdrawBtnKey');
  final fundWalletBtnKey = ShowcaseKey('_fundWalletBtnKey');
  final filterBtn = ShowcaseKey('$_className^filterBtn');

  @override
  List<ShowcaseKey> get keys => [withdrawBtnKey, fundWalletBtnKey];

  static String get _className => (WalletHistoryScreenMixin).toString();
}

mixin DealDetailScreenKeyMixin<T extends StatefulWidget> on State<T> implements _Parent {
  @override
  List<ShowcaseKey> get keys => [];

  // static String get _className => (WalletHistoryScreenMixin).toString();
}

extension ShowcaseSettings on AppSettings {
  void _markTourDone(ShowcaseKey key) => box?.put(key.name, true);

  bool hasToured(ShowcaseKey key) => box?.get(key.name) as bool? ?? false;

  bool _hasPendingTour(List<ShowcaseKey> keys) => keys.any((key) => !hasToured(key));

  void endTour(BuildContext context, ShowcaseKey key, {VoidCallback? onTargetClick}) {
    ShowCaseWidget.of(context).completed(key.key);
    onTargetClick?.call();
  }

  void runTour(BuildContext context, ShowcaseKey key, {void Function(ShowcaseKey)? onboarding, VoidCallback? onTargetClick}) {
    if (!hasToured(key)) {
      if (onboarding != null) {
        onboarding(key);
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ShowCaseWidget.of(context).startShowCase([key.key]);
        });
      }
      _markTourDone(key);
    } else {
      onTargetClick?.call();
    }
  }

  void runAllTours(
    BuildContext context,
    List<ShowcaseKey> keys, {
    void Function(List<ShowcaseKey>)? onboarding,
    VoidCallback? onTargetClick,
  }) {
    if (_hasPendingTour(keys)) {
      final _keys = keys.where((key) => !hasToured(key)).toList();

      if (onboarding != null) {
        onboarding(_keys);
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final globalKeys = _keys.map((i) => i.key).toList();
          ShowCaseWidget.of(context).startShowCase(globalKeys);
        });
      }

      _keys.forEach(_markTourDone);
    } else {
      onTargetClick?.call();
    }
  }
}

class ShowcaseKey {
  final String name;
  final GlobalKey key;

  static final kdefult = ShowcaseKey('_default_key_');

  ShowcaseKey(this.name) : key = GlobalKey(debugLabel: name);

  @override
  String toString() => key.toString();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ShowcaseKey && runtimeType == other.runtimeType && name == other.name && key == other.key;

  @override
  int get hashCode => name.hashCode ^ key.hashCode;
}


// TourGuide.widget(
//   height: 0.25.h,
//   width: 0.5.w,
//   key: i.id == LiveScreen.index
//       ? DashboardScreenKeyMixin.liveBottomNavKey
//       : (i.id == SellScreen.index ? DashboardScreenKeyMixin.sellBottomNavKey : ShowcaseKey.kdefult),
//   render: i.id == LiveScreen.index || i.id == SellScreen.index,
//   // title: 'Some very long title',
//   // description: ,
//   shapeBorder: const CircleBorder(),
//   borderRadius: const BorderRadius.all(Radius.circular(40)),
//   builder: (_) => DecoratedBox(
//     decoration: const BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.all(Radius.circular(16)),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: SizedBox(
//         height: 0.25.h,
//         width: 0.5.w,
//         child: Column(
//           children: [
//             AdaptiveText(
//               'Some title',
//               fontSize: 17.sp,
//               fontWeight: FontWeight.w700,
//             ),
//             //
//             Flexible(
//               child: AdaptiveText(
//                 '''Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam ''',
//                 fontSize: 16.sp,
//                 minFontSize: 15,
//                 maxLines: 20,
//                 textAlign: TextAlign.justify,
//                 // isDefault: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ),
//   child: Icon(i.icon, color: index == i.id ? Palette.primary : Colors.grey),
// ),
