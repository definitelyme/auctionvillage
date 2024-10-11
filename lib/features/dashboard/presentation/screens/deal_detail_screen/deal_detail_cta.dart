part of deal_detail_screen.dart;

/// A stateless widget to render _DealDetailCTA.
class _DealDetailCTA extends StatelessWidget {
  const _DealDetailCTA();

  void _placeBidOrBuyNow(BuildContext ctx) {
    final _cubit = ctx.read<DealCubit>();
    final _deal = _cubit.state.currentDeal!;
    final _watcher = ctx.read<AuthWatcherCubit>();
    final user = _watcher.user;
    final isAuthenticated = _watcher.isAuthenticated;

    if (!isAuthenticated) {
      Utils.popupIfNoAuth(ctx, msg: 'You must be logged-in to bid or buy.');
    } else {
      if (_cubit.state.currentDeal!.isPrivate && !_cubit.state.currentDeal!.hasPaidAdmittance(user)) {
        DealDetailScreen.showDialog(ctx, _cubit.state.currentDeal!);
      } else {
        _deal.type.maybeWhen(
          auction: () => enqueue(_cubit.sendBid),
          buyNow: () => navigator.navigate(
            PaymentPortalRoute(
              payable: Payable.closeBid(_deal, bidAmount: _deal.lastPriceOffered, user: user!),
              onPaymentSuccess: () => navigator.pushAndPopUntil(
                DealDetailRoute(deal: _deal, onUnlist: navigator.popUntilRoot),
                predicate: (r) => r.settings.name != PaymentPortalRoute.name,
              ),
            ),
          ),
          orElse: () {},
        );
      }
    }
  }

  Widget _guestCTA({required Widget child, required BuildContext ctx, DealType type = DealType.auction}) {
    return BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
      selector: (s) => s.user,
      builder: (c, user) {
        if (user == null)
          return AppButton(
            text: type.fold(auction: 'BID NOW', buyNow: 'BUY NOW', clearance: ''),
            onPressed: () => _placeBidOrBuyNow(ctx),
          );

        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
      selector: (s) => s.user,
      builder: (c, user) => BlocBuilder<DealCubit, DealState>(
        builder: (c, s) {
          final deal = s.currentDeal!;

          return _guestCTA(
            ctx: c,
            type: deal.type,
            child: deal.type.when(
              clearance: () {
                // TODO: Check this
                return Utils.nothing;
              },
              auction: () => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (deal.isLastBidder(user)) ...[
                    Align(
                      alignment: Alignment.centerRight,
                      child: DecoratedBox(
                        decoration: BoxDecoration(borderRadius: 100.br, border: Border.all(color: Palette.accentGreen)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.check_circle, color: Palette.accentGreen, size: 18),
                              //
                              0.01.horizontalw,
                              //
                              AdaptiveText(
                                'Highest bidder',
                                maxLines: 1,
                                minFontSize: 12,
                                fontSize: 14.sp,
                                maxFontSize: 16,
                                softWrap: true,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //
                    0.007.verticalh,
                  ],
                  //
                  if (deal.isOwner(user)) ...[
                    Align(
                      alignment: Alignment.centerRight,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: 6.br,
                          border: Border.all(
                            color: App.resolveColor(
                              Palette.secondary.withOpacity(0.2),
                              dark: Palette.secondary.withOpacity(0.1),
                              ctx: c,
                            )!,
                          ),
                          color: App.resolveColor(
                            Palette.secondary.withOpacity(0.2),
                            dark: Palette.secondary.withOpacity(0.1),
                            ctx: c,
                          )!,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3.0),
                          child: AdaptiveText(
                            'You created this item'.toUpperCase(),
                            maxLines: 1,
                            minFontSize: 12,
                            fontSize: 14.sp,
                            maxFontSize: 16,
                            softWrap: true,
                            textColor: Palette.secondaryColor.shade700,
                            textColorDark: Palette.secondaryColor.shade500,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    //
                    0.01.verticalh,
                  ],
                  //
                  AnimatedVisibility(
                    visible: !deal.isClosed,
                    replacement: user != null && deal.isHighestBidder(user) && !deal.hasPaid(user)
                        ? AppButton(
                            text: 'Continue to Payment'.titleCase(),
                            onPressed: () => navigator.navigate(PaymentPortalRoute(
                              payable: Payable.closeBid(deal, bidAmount: deal.lastPriceOffered, user: user),
                              onPaymentSuccess: () => navigator.pushAndPopUntil(
                                DealDetailRoute(deal: deal, onUnlist: navigator.popUntilRoot),
                                predicate: (r) => r.settings.name != PaymentPortalRoute.name,
                              ),
                            )),
                          )
                        : AppButton(
                            text: 'Auction has ended.'.titleCase(),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            textColor: Utils.platform_(material: Palette.onPrimary, cupertino: Palette.onSurface),
                            textColorDark: Utils.platform_(material: Palette.onPrimary, cupertino: Palette.onSurface),
                            splashColor: Palette.destructiveRed.withOpacity(0.2),
                            backgroundColor: Palette.destructiveRed,
                          ),
                    child: AppButton(
                      text: 'BID NOW',
                      isLoading: s.isBidding,
                      disabled: s.isLoading ||
                          s.isBidding ||
                          s.bidAmount.getExact() <= deal.lastPriceOffered.getExact() ||
                          deal.isLastBidder(user) ||
                          deal.isOwner(user),
                      onPressed: () => _placeBidOrBuyNow(context),
                    ),
                  ),
                ],
              ),
              buyNow: () => AnimatedVisibility(
                visible: deal.canBuyNow(user),
                replacement: AnimatedVisibility(
                  visible: deal.hasPaid(user),
                  replacement: AppOutlinedButton(
                    text: 'Closed / Out of Stock.',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    textColor: App.resolveColor(Palette.welcomeGrey, dark: Palette.permissionGrey2, ctx: c),
                    textColorDark: App.resolveColor(Palette.welcomeGrey, dark: Palette.permissionGrey2, ctx: c),
                    borderColor: App.resolveColor(Palette.welcomeGrey, dark: Palette.permissionGrey2, ctx: c),
                    borderColorDark: App.resolveColor(Palette.welcomeGrey, dark: Palette.permissionGrey2, ctx: c),
                  ),
                  child: AppOutlinedButton(
                    text: 'You already own this item.',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    textColor: Palette.secondary,
                    textColorDark: Palette.secondary,
                    borderColor: Palette.secondary,
                    borderColorDark: Palette.secondary,
                  ),
                ),
                child: AppButton(
                  text: 'BUY NOW',
                  isLoading: s.isBidding,
                  disabled: s.isLoading || s.isBidding,
                  onPressed: () => _placeBidOrBuyNow(context),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
