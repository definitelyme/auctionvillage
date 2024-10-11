library sell_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render SellScreen.
class SellScreen extends StatefulWidget with AutoRouteWrapper {
  static const index = 2;

  const SellScreen({super.key});

  @override
  _SellScreenState createState() => _SellScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<TabNavigationCubit>()),
        BlocProvider(create: (_) => blocMaybeOf(context, orElse: () => getIt<ProductBloc>())),
      ],
      child: BlocListener<ProductBloc, ProductState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, state) => state.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(
              message: f.message,
              show: f.show && f.message.isNotEmpty,
              duration: const Duration(seconds: 15),
            ).render(c),
            success: (s) {
              if (App.currentRoute == DashboardRoute.name)
                return PopupDialog.success(
                  message: s.message,
                  show: s.message.isNotEmpty,
                  listener: (status) => status?.fold(
                    dismissed: () {
                      if (state.productCreated && s.pop) {
                        navigator.navigate(PricingPlanRoute(bloc: c.read<ProductBloc>()));
                      }
                    },
                  ),
                ).render(c);

              return null;
            },
          ),
        ),
        child: this,
      ),
    );
  }
}

class _SellScreenState extends State<SellScreen> with SellScreenKeyMixin {
  late ProductBloc _bloc;

  @override
  void initState() {
    _bloc = blocMaybeOf(context, orElse: () => context.read<ProductBloc>());
    _bloc.add(const ProductPageControllerEvent.attachListener());
    enqueue(() => _bloc.add(const ProductGetEvent.categories()));
    settings.runAllTours(context, keys);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            title: const AdaptiveText('Sell form', maxLines: 1, maxFontSize: 20, fontWeight: FontWeight.w700),
            collapsedHeight: kToolbarHeight,
            toolbarHeight: kToolbarHeight,
            excludeHeaderSemantics: true,
            scrolledUnderElevation: Utils.platform_(cupertino: 1.5, material: 3),
            automaticallyImplyLeading: false,
            pinned: true,
            stretch: true,
            centerTitle: false,
            backgroundColor: Palette.background,
            actions: [
              BlocBuilder<ProductBloc, ProductState>(
                builder: (c, s) => Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: App.sidePadding * 0.6),
                    child: AnimatedVisibility(
                      visible: !s.product.isSellBlank,
                      child: TourGuide(
                        key: clearAllBtnKey,
                        description: 'Need to start over?\nTap this button to clear all fields.',
                        child: AdaptiveButton(
                          text: 'RESET',
                          onPressed: () => _bloc.add(const ProductSyncEvent.clearForm()),
                          textColor: Palette.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          backgroundColor: Colors.transparent,
                          borderRadius: 4.br,
                          materialData: (d) => d.copyWith(
                            height: 0.045.h,
                            splashColor: AdaptiveButton.defaultSplashColor,
                            highlightColor: AdaptiveButton.defaultHighlightColor,
                          ),
                          cupertinoData: (d) => d.copyWith(height: 0.045.h),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: AdaptiveText(
                'Complete the process below in other to get your product on ${env.appName}',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                textColor: Palette.fromHex('#989DB3'),
                textColorDark: Palette.onSurface100,
              ),
            ),
            //
            Expanded(
              child: BlocSelector<ProductBloc, ProductState, PageController?>(
                selector: (s) => s.controller,
                builder: (c, controller) => PageView.builder(
                  key: const ValueKey('sell_screen_page_view'),
                  pageSnapping: true,
                  itemCount: _ProductPager.items.length,
                  physics: Utils.physics,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) => _bloc.add(ProductPageControllerEvent.indexChanged(index)),
                  itemBuilder: (_, i) => _PageBuilder(
                    _ProductPager.items[i],
                    currentIndex: i,
                    key: ValueKey('sell-screen-item-$i'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageBuilder extends StatefulWidget {
  final int currentIndex;
  final _ProductPager item;

  const _PageBuilder(this.item, {Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<_PageBuilder> createState() => _PageBuilderState();
}

class _PageBuilderState extends State<_PageBuilder> with SellScreenKeyMixin {
  late ProductBloc _bloc;
  late AuthWatcherCubit _watcherCubit;

  @override
  void initState() {
    _bloc = context.read<ProductBloc>();
    _watcherCubit = context.read<AuthWatcherCubit>();
    settings.runAllTours(context, keys);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              0.035.verticalh,
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AdaptiveText(
                    widget.item.title,
                    maxLines: 1,
                    minFontSize: 16,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: Utils.letterSpacing,
                  ),
                  //
                  AdaptiveText(
                    'Step ${widget.item.index} of ${_ProductPager.items.length}',
                    maxLines: 1,
                    minFontSize: 13,
                    maxFontSize: 17,
                    fontSize: 14.sp,
                    textColor: Palette.fromHex('#989DB3'),
                    textColorDark: Palette.onSurface,
                    fontWeight: FontWeight.normal,
                    letterSpacing: Utils.labelLetterSpacing,
                  ),
                ],
              ),
              //
              0.01.verticalh,
              //
              ClipRRect(
                borderRadius: 100.br,
                child: LinearProgressIndicator(
                  value: widget.item.progress,
                  backgroundColor: const Color(0xffD8D8D8),
                  color: const Color(0xffD8D8D8),
                  valueColor: const AlwaysStoppedAnimation(Color(0xff00AB06)),
                  minHeight: 3.5,
                ),
              ),
              //
              0.02.verticalh,
            ]),
          ),
        ),
        //
        SliverList(
          delegate: SliverChildListDelegate.fixed([
            widget.item.page,
            //
            // if (widget.currentIndex != 2)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  0.04.verticalh,
                  //
                  AnimatedVisibility(
                    visible: !_bloc.isLast(_ProductPager.items, widget.currentIndex),
                    replacement: BlocBuilder<ProductBloc, ProductState>(
                      builder: (context, s) => AppButton(
                        text: 'Finish'.toUpperCase(),
                        disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
                        isLoading: s.isCreatingProduct,
                        onPressed: () {
                          _bloc.add(ProductSyncEvent.validate(
                            context,
                            validate: true,
                            callback: (hasErrors) {
                              if (!_watcherCubit.isAuthenticated) {
                                Utils.popupIfNoAuth(context, msg: 'Login to complete this action!');
                              } else if (!hasErrors) {
                                enqueue(() => _bloc.add(ProductStructEvent.store(_watcherCubit.user)));
                              }
                            },
                          ));
                        },
                      ),
                    ),
                    child: AppButton(
                      text: 'Continue',
                      onPressed: () => _bloc.add(ProductPageControllerEvent.next(_ProductPager.items, widget.currentIndex)),
                    ),
                  ),
                  //
                  0.02.verticalh,
                  //
                  if (!_bloc.isFirst(widget.currentIndex)) ...[
                    AppOutlinedButton(
                      text: 'Go Back',
                      backgroundColor: Colors.transparent,
                      textColor: App.resolveColor(Palette.primary, dark: Colors.white),
                      splashColor: App.resolveColor(Colors.black12, dark: Colors.grey.shade800),
                      onPressed: () => _bloc.add(const ProductPageControllerEvent.prev()),
                    ),
                    //
                    0.02.verticalh,
                  ],
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class _ProductPager {
  final int index;
  final Widget page;
  final String title;

  const _ProductPager({
    required this.index,
    required this.title,
    required this.page,
  });

  static List<_ProductPager> get items => const [
        _ProductPager(index: 1, title: 'Item Type', page: AboutPostPage()),
        _ProductPager(index: 2, title: 'Item Details', page: ItemDetailsPage()),
        _ProductPager(index: 3, title: 'Item Catalog and Pricing', page: PricingPage()),
        _ProductPager(index: 4, title: 'Shipping Details', page: ShippingDetailsPage()),
      ];

  double get progress => index / items.length;
}
