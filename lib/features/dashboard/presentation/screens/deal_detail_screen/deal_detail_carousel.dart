part of deal_detail_screen.dart;

class _DealDetailCarousel extends StatelessWidget {
  const _DealDetailCarousel();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DealCubit, DealState, Deal>(
      selector: (d) => d.currentDeal!,
      builder: (c, deal) {
        if (deal.product != null && deal.product!.photos.isNotEmpty())
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.5).copyWith(top: 0.015.h),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
              type: MaterialType.transparency,
              child: MediaCarousel<MediaField>(
                items: deal.product!.photos.map((e) => e.image).asList(),
                height: 0.27.h,
                viewportFraction: (it) => deal.product!.photos.map((e) => e.image).size > 1 ? 0.8 : 0.95,
                enableInfiniteScroll: (it) => deal.product!.photos.map((e) => e.image).size > 2,
                position: CarouselIndicatorPosition.bottom,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 7),
                disableCenter: false,
                builder: (_, i, pv, item) => ImageBox.network(
                  photo: item.getOrNull,
                  fit: BoxFit.cover,
                  borderRadius: 8.br,
                  expandsFullscreen: true,
                  // heroTag: '${deal.product!.id}__${item.getOrNull}',
                  heroTag: 'deal-${deal.id.value}-${deal.product?.id.value}->${deal.product?.uniqueKey.value}',
                  replacement: Image.asset(item.getOrEmpty!, fit: BoxFit.cover),
                  progressIndicatorColorDark: Colors.white,
                  stackChildren: (image) => [
                    // Positioned.fill(child: Center(child: image)),
                    Positioned.fill(child: image),
                    //
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.8),
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black12,
                              Colors.black26,
                              Colors.black38,
                              Colors.black45,
                            ],
                          ),
                        ),
                      ),
                    ),
                    //
                    Positioned(
                      top: 8,
                      right: 8,
                      child: BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                        selector: (s) => s.user != null,
                        builder: (c, isAuthenticated) => BlocBuilder<DealCubit, DealState>(
                          buildWhen: (p, c) => p.isLoading != c.isLoading || p.isBidding != c.isBidding,
                          bloc: context.read<DealCubit>(),
                          builder: (c, s) {
                            final disabled = !isAuthenticated || (isAuthenticated && (s.isLoading || s.isBidding));

                            return Disabled(
                              disabled: s.isLoading,
                              child: AppIconButton(
                                backgroundColor: App.resolveColor(Palette.neutralF9, dark: Palette.cardColorDark),
                                borderRadius: 5.br,
                                type: MaterialType.button,
                                elevation: 0,
                                height: 40,
                                width: 40,
                                disabled: disabled,
                                cupertinoPadding: EdgeInsets.zero,
                                cupertinoBackgroundColor: App.resolveColor(Palette.neutralF9, dark: Palette.cardColorDark),
                                useMaterialDefaultPadding: false,
                                onPressed: disabled && App.platform.isIOS ? null : () => enqueue(c.read<DealCubit>().toggleFavorite),
                                child: Icon(
                                  deal.hasWish
                                      ? Utils.platform_(material: Icons.favorite, cupertino: CupertinoIcons.heart_fill)
                                      : Utils.platform_(material: Icons.favorite_border, cupertino: CupertinoIcons.heart),
                                  color: Palette.primary,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    //
                    if (deal.endDate.getOrNull != null && localTime.millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch)
                      Positioned(
                        top: 20,
                        left: 0,
                        child: CountdownWidget(
                          autostart: localTime.millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch,
                          duration: deal.endDate.getOrNull!.difference(localTime),
                          // showMinuteRemainder: false,
                          showHourRemainder: false,
                          ticker: (tick) => Material(
                            color: Palette.accentGreen,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              child: Row(
                                children: [
                                  Icon(AVIcons.clock, size: 16.sp, color: Colors.white),
                                  //
                                  Padding(
                                    padding: EdgeInsets.only(left: 0.015.w),
                                    child: AdaptiveText(
                                      tick,
                                      maxLines: 1,
                                      fontSize: 16.sp,
                                      maxFontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      textColor: Colors.white,
                                      textColorDark: Colors.white,
                                      isDefault: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          child: (fn) => Utils.nothing,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );

        return Utils.nothing;
      },
    );
  }
}
