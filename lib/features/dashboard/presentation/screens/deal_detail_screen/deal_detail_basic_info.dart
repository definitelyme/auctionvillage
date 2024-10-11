part of deal_detail_screen.dart;

class _DealDetailBasicInfo extends StatelessWidget {
  final Deal deal;

  const _DealDetailBasicInfo(this.deal);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: App.resolveColor(const Color(0xffF3F2F1), dark: Palette.cardColorDark),
      shape: RoundedRectangleBorder(
        borderRadius: 8.br,
        side: BorderSide(color: App.resolveColor(const Color(0xffF3F2F1), dark: Palette.backgroundColorDark.shade300)!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Color(0xffFFA500),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
              child: AdaptiveText(
                deal.type == DealType.auction ? 'Auction Information' : 'Basic Information',
                maxLines: 1,
                softWrap: true,
                fontSize: 17.sp,
                textColorDark: Colors.white,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: AdaptiveText.rich(
                    TextSpan(children: [
                      const TextSpan(text: 'Type: '),
                      TextSpan(text: '${deal.biddingType}'.titleCase(), style: const TextStyle(fontWeight: FontWeight.w700)),
                    ]),
                    maxLines: 1,
                    softWrap: true,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.left,
                  ),
                ),
                //
                if (deal.startDate.getOrNull != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: AdaptiveText.rich(
                      TextSpan(children: [
                        const TextSpan(text: 'Auction Start Date: '),
                        if (deal.startDate.getOrNull != null)
                          TextSpan(
                            text: DateFormat('MMM dd, yyyy').format(deal.startDate.getOrNull!),
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                      ]),
                      maxLines: 1,
                      softWrap: true,
                      fontSize: 15.sp,
                      maxFontSize: 17,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.left,
                    ),
                  ),
                //
                if (deal.endDate.getOrNull != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: AdaptiveText.rich(
                      TextSpan(children: [
                        const TextSpan(text: 'Auction End Date: '),
                        if (deal.endDate.getOrNull != null)
                          TextSpan(
                            text: DateFormat('MMM dd, yyyy').format(deal.endDate.getOrNull!),
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                      ]),
                      maxLines: 1,
                      softWrap: true,
                      fontSize: 15.sp,
                      maxFontSize: 17,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.left,
                    ),
                  ),
                //
                if (deal.product?.shippingInformation != null && deal.product?.regions.isValid == true)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 9),
                    child: AdaptiveText.rich(
                      TextSpan(children: [
                        const TextSpan(text: 'Regions: '),
                        TextSpan(
                          text: deal.product!.regions.join(', '),
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ]),
                      // maxLines: 1,
                      softWrap: true,
                      fontSize: 16.sp,
                      maxFontSize: 17,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.left,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    ).addPadding(EdgeInsets.only(top: 0.01.h), pad: deal.product == null || deal.product!.photos.isEmpty());
  }
}
