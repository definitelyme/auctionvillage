library pricing_plan_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render PricingPlanScreen.
class PricingPlanScreen extends StatefulWidget {
  final ProductBloc? bloc;
  final Deal? deal;
  final Product? product;

  const PricingPlanScreen({super.key, this.bloc, this.deal, this.product});

  @override
  State<PricingPlanScreen> createState() => _PricingPlanScreenState();
}

class _PricingPlanScreenState extends State<PricingPlanScreen> {
  late ProductBloc _bloc;
  late AuthWatcherCubit _watcherCubit;

  @override
  void initState() {
    super.initState();
    _watcherCubit = context.read<AuthWatcherCubit>();
    _bloc = widget.bloc ?? blocMaybeOf(context, orElse: () => getIt<ProductBloc>());
    enqueue(() => _bloc.add(const ProductGetEvent.getDealPlans()));
    _bloc.add(ProductSyncEvent.init(product: widget.product));
    _bloc.add(ProductSyncEvent.dealPlanChanged(widget.deal?.dealPlan));
  }

  User? get authUser => context.read<AuthWatcherCubit>().state.user;
  Deal? get deal => widget.deal ?? _bloc.state.createdDeal;

  Widget _blocListener({required Widget child}) {
    if (widget.bloc != null) return child;

    return BlocListener<ProductBloc, ProductState>(
      listenWhen: (p, c) =>
          p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
          (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
      listener: (c, s) => s.status.fold(
        () {},
        (it) => it?.response.mapOrNull(
          info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
          error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
          success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
        ),
      ),
      child: child,
    );
  }

  Widget _blocProvider({required Widget child}) {
    if (widget.bloc != null) return BlocProvider.value(value: widget.bloc!, child: child);
    return BlocProvider(create: (_) => _bloc, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return _blocProvider(
      child: _blocListener(
        child: WillPopScope(
          onWillPop: () async {
            _bloc.add(const ProductSyncEvent.clearForm());
            return true;
          },
          child: AppSliverScrollView.scaffold(
            title: 'Promote your Product',
            useSafeArea: true,
            isPaginated: false,
            implyMiddle: false,
            toolbarOverlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.dark),
            subtitleTopPadding: 0,
            subtitleWidget: AdaptiveText(
              'Get more eyes on your listed product with our sponsored ads.',
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
            ),
            actions: [
              BlocSelector<ProductBloc, ProductState, bool>(
                selector: (s) => s.isLoading && s.dealPlans.isNotEmpty(),
                builder: (c, isLoading) => Center(
                  child: AnimatedVisibility(
                    visible: isLoading,
                    child: Padding(
                      padding: const EdgeInsets.all(1.5).copyWith(right: App.sidePadding),
                      child: CircularProgressBar.adaptive(
                        strokeWidth: 1.5,
                        height: 21,
                        width: 21,
                        radius: 12,
                        color: Palette.primary,
                        colorDark: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.015.h),
                sliver: BlocBuilder<ProductBloc, ProductState>(
                  builder: (c, s) {
                    final plans = s.dealPlans.notFreePlan;

                    if (plans.isEmpty())
                      return SliverToBoxAdapter(
                        child: SizedBox(
                          height: 0.08.h,
                          child: Center(
                            child: CircularProgressBar.adaptive(
                              strokeWidth: 2,
                              height: 25,
                              width: 25,
                              color: App.resolveColor(null, dark: Colors.white70),
                            ),
                          ),
                        ),
                      );

                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, i) {
                          final plan = plans.get(i);
                          final isSelected = plan.id == s.selectedPlan.id;

                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Material(
                                color: Palette.elevationOverlay,
                                shape: RoundedRectangleBorder(
                                  borderRadius: 4.br,
                                  side: BorderSide(color: Palette.onSurface60, width: 0.3),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Material(
                                      color: Palette.primary,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(4),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                AdaptiveText(
                                                  '${plan.amount.getOrNull}'.asCurrency(currency: authUser?.country?.symbol),
                                                  maxLines: 1,
                                                  fontSize: 18.sp,
                                                  textColor: Palette.onSurface100Dark,
                                                  textColorDark: Palette.onSurface100Dark,
                                                  fontWeight: FontWeight.bold,
                                                  textAlign: TextAlign.left,
                                                ),
                                                //
                                                AdaptiveText(
                                                  'Per 7 days',
                                                  fontSize: 14.sp,
                                                  maxFontSize: 16,
                                                  textColor: Palette.onSurface100Dark,
                                                  textColorDark: Palette.onSurface100Dark,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            //
                                            AdaptiveText(
                                              plan.name.sentence,
                                              maxLines: 1,
                                              fontSize: 15.sp,
                                              textColor: Palette.onSurface100Dark,
                                              textColorDark: Palette.onSurface100Dark,
                                              fontWeight: FontWeight.bold,
                                              textAlign: TextAlign.left,
                                              letterSpacing: Utils.letterSpacing,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    //
                                    0.03.verticalh,
                                    //
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: App.sidePadding),
                                      child: Column(
                                        children: plan.features
                                            .mapIndexed(
                                              (i, e) => Padding(
                                                padding: i != 0 && i != plan.features.size - 1
                                                    ? EdgeInsets.symmetric(vertical: 0.013.h)
                                                    : EdgeInsets.zero,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Icon(Icons.check_circle, color: Palette.accentGreen, size: 22),
                                                    //
                                                    0.03.horizontalw,
                                                    //
                                                    Flexible(
                                                      child: AdaptiveText(
                                                        '$e',
                                                        fontSize: 16.sp,
                                                        maxFontSize: 17,
                                                        textColor: Palette.onSurfaceLight,
                                                        textColorDark: Palette.onSurfaceDark,
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                            .asList(),
                                      ),
                                    ),
                                    //
                                    0.02.verticalh,
                                    //
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          if (plan.isRecommended) ...[
                                            DecoratedBox(
                                              decoration: BoxDecoration(color: Palette.accentGreen2, borderRadius: 100.br),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                                child: AdaptiveText(
                                                  'Recommended',
                                                  maxLines: 1,
                                                  fontSize: 13.sp,
                                                  maxFontSize: 15,
                                                  textColor: Colors.black,
                                                  textColorDark: Colors.black,
                                                ),
                                              ),
                                            ),
                                            //
                                            0.005.verticalh,
                                          ],
                                          //
                                          Visibility(
                                            visible: !isSelected,
                                            replacement: AppButton(
                                              text: 'Plan Selected',
                                              onPressed: App.platform.cupertino(() {}),
                                            ),
                                            child: AppOutlinedButton(
                                              text: 'Select Plan',
                                              onPressed: () => _bloc.add(ProductSyncEvent.dealPlanChanged(plan)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //
                                    0.02.verticalh,
                                  ],
                                ),
                              ),
                              //
                              0.02.verticalh,
                            ],
                          );
                        },
                        childCount: plans.size,
                      ),
                    );
                  },
                ),
              ),
              //
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    0.03.verticalh,
                    //
                    AppButton(
                      text: 'Continue',
                      onPressed: () {
                        if (!_watcherCubit.isAuthenticated) {
                          Utils.popupIfNoAuth(context, msg: 'Login to perform this action!');
                        } else {
                          navigator.navigate(PaymentPortalRoute(
                            onPaymentSuccess: () {
                              _bloc.add(const ProductSyncEvent.clearForm());
                              navigator.pushAndPopUntil(
                                DealDetailRoute(deal: deal!, onUnlist: navigator.popUntilRoot),
                                predicate: (r) => r.settings.name == DashboardRoute.name,
                              );
                            },
                            payable: Payable.upgradePlan(
                              _bloc.state.product,
                              deal: deal!,
                              user: _watcherCubit.user!,
                              plan: _bloc.state.selectedPlan,
                            ),
                          ));
                        }
                      },
                    ),
                    //
                    0.02.verticalh,
                    //
                    AppOutlinedButton(
                      text: 'Not Now',
                      fontWeight: FontWeight.w600,
                      textColor: Palette.primary,
                      textColorDark: Colors.white70,
                      borderColorDark: Colors.white70,
                      onPressed: navigator.pop,
                    ),
                    //
                    0.02.verticalh,
                  ]),
                ),
              ).sliverSafeBottom,
            ],
          ),
        ),
      ),
    );
  }
}
