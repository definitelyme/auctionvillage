library bottom_navigation.dart;

import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';

class BottomNav {
  final int id;
  final String asset;
  final String title;
  final PageRouteInfo<void> router;
  final String? tourTitle;
  final String? tourDescription;

  const BottomNav({
    required this.id,
    required this.title,
    required this.asset,
    required this.router,
    this.tourTitle,
    this.tourDescription,
  });

  static List<BottomNav> get list => [
        const BottomNav(
          id: HomeScreen.index,
          title: 'Home',
          asset: AssetsSvgsDashboard.navHomeSVG,
          router: HomeRouter(),
        ),
        //
        const BottomNav(
          id: SearchScreen.index,
          title: 'Search',
          asset: AssetsSvgsDashboard.navSearchSVG,
          router: SearchRouter(),
          tourTitle: 'Search Auctions',
          tourDescription: 'To view all live auctions, click here.',
        ),
        //
        const BottomNav(
          id: SellScreen.index,
          title: 'Sell',
          asset: AssetsSvgsDashboard.navStoreSVG,
          router: SellRouter(),
          tourTitle: 'Sell Item',
          tourDescription: 'To place an item for sale, click here.',
        ),
        //
        const BottomNav(
          id: ProfileScreen.index,
          title: 'Profile',
          asset: AssetsSvgsDashboard.navAccountSVG,
          router: ProfileRouter(),
        ),
      ];

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is BottomNav && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'BottomNav(id: $id, title: $title)';
}
