library pricing_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kt_dart/collection.dart';

part './tabs/auction_product_tab.dart';
part './tabs/buy_now_product_tab.dart';

void _pickDate(
  BuildContext ctx, {
  DateTime? selectedDate,
  required void Function(DateTime?) onSelected,
}) {
  DatePicker.showDateTimePicker(
    ctx,
    showTitleActions: true,
    minTime: Product.startDate,
    maxTime: Product.endDate,
    onChanged: onSelected,
    onConfirm: onSelected,
    currentTime: selectedDate ?? localTime,
    theme: DatePickerTheme(
      backgroundColor: Palette.background,
      cancelStyle: TextStyle(
        color: App.resolveColor(Colors.black54, dark: Colors.white70, ctx: ctx),
        fontSize: 16,
      ),
      doneStyle: const TextStyle(color: Colors.blue, fontSize: 16),
      itemStyle: TextStyle(color: Palette.onSurface, fontSize: 17),
      containerHeight: 210.0,
      titleHeight: 44.0,
      itemHeight: 36.0,
    ),
  );
}

/// A stateful widget to render PricingPage.
class PricingPage extends StatefulWidget {
  static const index = 2;

  const PricingPage({Key? key}) : super(key: key);

  @override
  _PricingPageState createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage>
    with AutomaticKeepAliveClientMixin<PricingPage>, SingleTickerProviderStateMixin<PricingPage>, SellScreenKeyMixin {
  late TabNavigationCubit _tabCubit;
  late ProductBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ProductBloc>();
    _tabCubit = context.read<TabNavigationCubit>();
    _tabCubit.initTabbar(this, length: PricingPageTab.tabs.size);
    _tabCubit.addTabListener(_tabListener);

    final savedIndex = _bloc.state.product.deal?.type == DealType.buyNow ? 1 : 0;
    _tabCubit.animateTo(savedIndex);

    Future.delayed(const Duration(seconds: 1), () => settings.runAllTours(context, pricingKeys));
  }

  void _tabListener() {}

  @override
  void dispose() {
    _tabCubit.removeTabListener(_tabListener);
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          child: ClipRRect(
            borderRadius: Utils.inputBorderRadius.br,
            child: Material(
              color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
              shape: RoundedRectangleBorder(
                borderRadius: Utils.inputBorderRadius.br,
                side: const BorderSide(
                  width: 1.0,
                  color: Color(0xffDCDFF1),
                ),
              ),
              child: BlocBuilder<TabNavigationCubit, TabNavigationState>(
                builder: (c, s) => TabBar(
                  isScrollable: false,
                  controller: _tabCubit.state.tabController,
                  labelPadding: EdgeInsets.zero,
                  indicatorWeight: 0.01,
                  automaticIndicatorColorAdjustment: true,
                  onTap: (i) => _tabCubit.changedTabIndex(i, callback: (i) {
                    final type = i == 0 ? DealType.auction : DealType.buyNow;
                    c.read<ProductBloc>().add(ProductSyncEvent.dealTypeChanged(type));
                  }),
                  tabs: PricingPageTab.tabs
                      .mapIndexed(
                        (i, item) => Material(
                          color: _tabCubit.setTabBgColor(
                            i,
                            selected: App.resolveColor(
                              Palette.primaryColor.shade50.withOpacity(0.3),
                              dark: Palette.primaryColor.shade50,
                            ),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  item.asset,
                                  fit: BoxFit.contain,
                                  color: _tabCubit.setTabTextColor(i, selected: Palette.primary),
                                ),
                                //
                                0.02.horizontalw,
                                //
                                Tab(
                                  height: 0.062.h,
                                  child: AdaptiveText(
                                    '${item.title}'.titleCase(),
                                    maxLines: 1,
                                    fontSize: 17.sp,
                                    textColor: _tabCubit.setTabTextColor(i, selected: Palette.primary),
                                    fontWeight: s.selectedTab == i ? FontWeight.w600 : FontWeight.w400,
                                    letterSpacing: Utils.letterSpacing,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .asList(),
                ),
              ),
            ),
          ),
        ),
        //
        LimitedBox(
          maxHeight: 0.96.h,
          child: TabBarView(
            controller: _tabCubit.state.tabController,
            physics: const ClampingScrollPhysics(),
            children: const [_AuctionProductTab(), _BuyNowProductTab()],
          ),
        ),
      ],
    );
  }
}
