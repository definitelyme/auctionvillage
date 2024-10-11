library wallet_history_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render WalletHistoryScreen.
class WalletHistoryScreen extends StatefulWidget with AutoRouteWrapper {
  final UserWallet? wallet;

  const WalletHistoryScreen({Key? key, this.wallet}) : super(key: key);

  @override
  State<WalletHistoryScreen> createState() => _WalletHistoryScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<PaymentCubit>(),
      child: BlocListener<PaymentCubit, PaymentState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _WalletHistoryScreenState extends State<WalletHistoryScreen>
    with AutomaticKeepAliveClientMixin<WalletHistoryScreen>, WalletHistoryScreenMixin {
  late PaymentCubit _cubit;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _cubit = blocMaybeOf(context, orElse: () => getIt<PaymentCubit>());
    super.initState();
    settings.runAllTours(context, keys);
  }

  User get currentUser => context.read<AuthWatcherCubit>().user!;

  void onLoadMore(DragToRefreshState refresh) async {
    if (!_cubit.state.isLoading) {
      enqueue(
        () => _cubit.getWalletActivities(
          currentUser,
          nextPage: true,
          perPage: 20,
          endOfList: () => refresh.loadNoData(),
        ),
        onResult: (_) => refresh.loadComplete(),
      );
    }
  }

  void onRefresh(DragToRefreshState refresh) async {
    if (!_cubit.state.isLoading) {
      enqueue(
        () => _cubit.getWalletActivities(currentUser, existing: widget.wallet, perPage: 20),
        onResult: (_) => refresh.refreshCompleted(resetFooterState: true),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(title: 'Wallet Activities', implyMiddle: false, centerTitle: false),
      body: Column(
        children: [
          0.02.verticalh.safeTop,
          //
          Expanded(
            child: DragToRefresh(
              initialRefresh: true,
              enablePullUp: true,
              onRefresh: onRefresh,
              onLoading: onLoadMore,
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: App.sidePadding * 0.5),
                    sliver: SliverToBoxAdapter(
                      child: BlocBuilder<PaymentCubit, PaymentState>(
                        builder: (c, s) => WalletBalanceCard(
                          isLoading: s.isFetchingWalletHistory,
                          balance: '${s.wallet?.balance.getOrNull ?? 0}',
                          onTapWithdraw: (action) => settings.runTour(context, withdrawBtnKey, onTargetClick: action),
                          onTapFundWallet: (action) => settings.runTour(context, fundWalletBtnKey, onTargetClick: action),
                          withdrawButton: (btn) => TourGuide(
                            key: withdrawBtnKey,
                            title: 'Withdraw',
                            description: 'Withdraw funds from your wallet back to your bank account.',
                            child: btn,
                          ),
                          fundWalletButton: (btn) => TourGuide(
                            key: fundWalletBtnKey,
                            title: 'Fund wallet',
                            description: 'Fund your ${env.appName} wallet via '
                                'bank transfer, USSD or with your debit card.',
                            child: btn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    sliver: SliverToBoxAdapter(
                      child: BlocSelector<PaymentCubit, PaymentState, UserWallet?>(
                        selector: (s) => s.wallet,
                        builder: (c, wallet) => Row(
                          children: [
                            if (wallet != null) ...[
                              Expanded(
                                child: UpDownIndicator.down(
                                  value: '${wallet.expense}'.asCurrency(),
                                  description: 'Total Expenses',
                                  popupActions: (c) => [
                                    AdaptivePopupBottomMenuItem(
                                      title: 'Something wrong?',
                                      trailing: Icons.help_outline_outlined,
                                      trailingColor: Palette.errorRed,
                                      titleColor: Palette.errorRed,
                                      onTap: (c) => navigator.navigate(ContactSupportRoute()),
                                    ),
                                  ],
                                  previewActions: (c) => [
                                    AdaptiveContextMenuItem(
                                      child: const Text('Fund Wallet', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                      trailingIcon: CupertinoIcons.creditcard,
                                      onPressed: () => context.router.push(FundWalletRoute(onConfirmed: _cubit.getWallet)),
                                    ),
                                    //
                                    AdaptiveContextMenuItem(
                                      child: const Text(
                                        'Something wrong?',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      ),
                                      isDestructiveAction: true,
                                      trailingIconColor: Palette.errorRed,
                                      trailingIcon: CupertinoIcons.question_circle,
                                      onPressed: () => navigator.navigate(ContactSupportRoute()),
                                    ),
                                  ],
                                ),
                              ),
                              //
                              0.04.horizontalw,
                              //
                              Expanded(
                                child: UpDownIndicator.up(
                                  value: '${wallet.revenue}'.asCurrency(),
                                  description: 'Total Revenue',
                                  popupActions: (c) => [
                                    AdaptivePopupBottomMenuItem(
                                      title: 'Something wrong?',
                                      trailing: Icons.help_outline_outlined,
                                      trailingColor: Palette.errorRed,
                                      titleColor: Palette.errorRed,
                                      onTap: (c) => navigator.navigate(ContactSupportRoute()),
                                    ),
                                  ],
                                  previewActions: (c) => [
                                    AdaptiveContextMenuItem(
                                      child: const Text('Withdraw', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                      trailingIcon: CupertinoIcons.money_dollar_circle,
                                      onPressed: () => context.router.push(const WithdrawalRoute()),
                                    ),
                                    //
                                    AdaptiveContextMenuItem(
                                      child: const Text(
                                        'Something wrong?',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      ),
                                      isDestructiveAction: true,
                                      trailingIconColor: Palette.errorRed,
                                      trailingIcon: CupertinoIcons.question_circle,
                                      onPressed: () => navigator.navigate(ContactSupportRoute()),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  BlocSelector<PaymentCubit, PaymentState, KtMap<DateTime, KtList<UserWalletTransaction>>?>(
                    selector: (s) => s.wallet?.transactionsByDate,
                    builder: (c, transx) => SliverVisibility(
                      visible: transx != null && transx.isNotEmpty(),
                      sliver: SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding * 2),
                        sliver: SliverToBoxAdapter(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AdaptiveText(
                                'Recent Transactions',
                                maxLines: 1,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.left,
                              ),
                              //
                              // AppIconButton(
                              //   backgroundColor: Palette.primary.withOpacity(0.1),
                              //   borderRadius: 5.br,
                              //   type: MaterialType.button,
                              //   elevation: 0,
                              //   onPressed: () {},
                              //   child: AppAssets.filter(context),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  BlocSelector<PaymentCubit, PaymentState, KtMap<DateTime, KtList<UserWalletTransaction>>?>(
                    selector: (s) => s.wallet?.transactionsByDate,
                    builder: (c, transactions) {
                      if (transactions == null) return const SliverToBoxAdapter(child: Utils.nothing);

                      return SliverPadding(
                        padding: EdgeInsets.symmetric(vertical: App.sidePadding * 0.7),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (_, i) => GroupedLayoutCard(
                              dateTime: transactions.keys.elementAt(i),
                              contentPadding: EdgeInsets.zero,
                              layout: (i2) {
                                final transaction = transactions.values.elementAt(i).elementAt(i2);

                                return transaction.type.when(
                                  credit: TransactionTile.down(
                                    disabled: false,
                                    createdAt: transaction.createdAt,
                                    title: '${transaction.amount}'.asCurrency(),
                                    subtitle: transaction.reference.isValid ? '#${transaction.reference}' : '#${transaction.id}',
                                    status: transaction.status.when(
                                      pending: () => transaction.status,
                                      confirmed: () => transaction.paymentMethod as ActivityStatus,
                                      failed: () => transaction.status,
                                    ),
                                  ),
                                  debit: TransactionTile.up(
                                    disabled: false,
                                    createdAt: transaction.createdAt,
                                    title: '${transaction.amount}'.asCurrency(),
                                    subtitle: transaction.reference.isValid ? '#${transaction.reference}' : '#${transaction.id}',
                                    status: transaction.status.when(
                                      pending: () => transaction.status,
                                      confirmed: () => transaction.paymentMethod as ActivityStatus,
                                      failed: () => transaction.status,
                                    ),
                                  ),
                                );
                              },
                              count: transactions.values.elementAt(i).size,
                            ),
                            childCount: transactions.size,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
