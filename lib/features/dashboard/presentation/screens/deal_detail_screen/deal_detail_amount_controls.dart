part of deal_detail_screen.dart;

/// A stateless widget to render _DealDetailAmountControls.
class _DealDetailAmountControls extends StatelessWidget {
  final Deal? deal;

  const _DealDetailAmountControls(this.deal);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          child: Material(
            color: App.resolveColor(Palette.neutralF4, dark: Palette.backgroundColorDark.shade800),
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            child: BlocBuilder<DealCubit, DealState>(
              builder: (c, s) => Disabled(
                disabled: s.bidAmount.getExact() <= deal!.lastPriceOffered.getExact() || s.isLoading || s.isBidding,
                child: AdaptiveInkWell(
                  onTap: context.read<DealCubit>().decreaseBid,
                  splashColor: App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade800),
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  child: Padding(
                    padding: EdgeInsets.all(0.02.sw),
                    child: Icon(
                      Utils.platform_(material: Icons.remove, cupertino: CupertinoIcons.minus),
                      size: 22,
                      color: App.resolveColor(Colors.black87.withOpacity(0.7), dark: Palette.primaryDark, ctx: c),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        //
        Flexible(
          flex: 2,
          child: BlocSelector<DealCubit, DealState, NumField<double>>(
            selector: (s) => s.bidAmount,
            builder: (c, amount) => AdaptiveText.rich(
              TextSpan(children: [
                TextSpan(text: deal?.country?.symbolPadded),
                TextSpan(text: '${amount.getExact().roundToIntOrDouble}'.asCurrency(symbol: false)),
              ]),
              maxLines: 1,
              fontSize: 26.sp,
              fontWeight: FontWeight.bold,
              textColor: Palette.primary,
              textColorDark: Palette.primaryDark,
              softWrap: false,
              letterSpacing: Utils.letterSpacing,
            ),
          ),
        ),
        //
        Flexible(
          child: BlocBuilder<DealCubit, DealState>(
            builder: (c, s) => Material(
              color: App.resolveColor(Palette.neutralF4, dark: Palette.backgroundColorDark.shade800, ctx: c),
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              child: Disabled(
                disabled: s.isLoading || s.isBidding,
                child: AdaptiveInkWell(
                  onTap: context.read<DealCubit>().increaseBid,
                  splashColor: App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade800, ctx: c),
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                  child: Padding(
                    padding: EdgeInsets.all(0.02.sw),
                    child: Icon(
                      Utils.platform_(material: Icons.add, cupertino: CupertinoIcons.add),
                      size: 22,
                      color: App.resolveColor(Colors.black87.withOpacity(0.7), dark: Palette.primaryDark, ctx: c),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
