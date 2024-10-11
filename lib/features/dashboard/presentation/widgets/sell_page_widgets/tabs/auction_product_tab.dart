part of pricing_page.dart;

/// A stateless widget to render _AuctionProductTab.
class _AuctionProductTab extends StatelessWidget {
  const _AuctionProductTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          0.01.verticalh,
          //
          const TextFormInputLabel(text: 'Starting Price', fontWeight: FontWeight.w600),
          //
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReactiveTextFormField<ProductBloc, ProductState>(
                disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                field: (s) => s.product.deal?.basePrice,
                validate: (s) => s.validate,
                response: (s) => s.status,
                controller: (s) => s.basePriceController,
                autoDisposeController: false,
                errorField: (error) => error.errors?.messages?.basePrice,
                keyboardType: TextInputType.number,
                focus: ProductState.auctionBasePriceFocus,
                capitalization: TextCapitalization.none,
                onChanged: (bloc, _) => bloc.add(const ProductSyncEvent.basePriceChanged()),
                prefixIcon: (s) => const CurrencyPrefixWidget(),
                prefixMode: (s) => OverlayVisibilityMode.always,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              //
              0.004.verticalh,
              //
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Utils.platform_(material: Icons.info_outline, cupertino: CupertinoIcons.info),
                    size: 20.sp,
                    color: Palette.accentGreen3,
                  ),
                  //
                  0.02.horizontalw,
                  //
                  Expanded(
                    child: AdaptiveText(
                      '4% of the highest bid price will be charged as a platform fee for this item.',
                      fontSize: 14.sp,
                      textColor: Palette.fromHex('#4A4A4A'),
                      textColorDark: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Reserved Price', fontWeight: FontWeight.w600),
          //
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReactiveTextFormField<ProductBloc, ProductState>(
                disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                field: (s) => s.product.deal?.reservedPrice,
                validate: (s) => s.validate,
                response: (s) => s.status,
                controller: (s) => s.reservedPriceController,
                autoDisposeController: false,
                errorField: (error) => error.errors?.messages?.reservedPrice,
                keyboardType: TextInputType.number,
                focus: ProductState.reservedPriceFocus,
                capitalization: TextCapitalization.none,
                onChanged: (bloc, _) => bloc.add(const ProductSyncEvent.reservedPriceChanged()),
                prefixIcon: (s) => const CurrencyPrefixWidget(),
                prefixMode: (s) => OverlayVisibilityMode.always,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              //
              0.004.verticalh,
              //
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Utils.platform_(material: Icons.info_outline, cupertino: CupertinoIcons.info),
                    size: 20.sp,
                    color: Palette.accentGreen3,
                  ),
                  //
                  0.02.horizontalw,
                  //
                  Expanded(
                    child: AdaptiveText(
                      'This refers to the minimum price you can accept for your item.',
                      fontSize: 14.sp,
                      textColor: Palette.fromHex('#4A4A4A'),
                      textColorDark: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Quantity'),
          //
          BlocSelector<ProductBloc, ProductState, QuantityType?>(
            selector: (s) => s.product.deal?.quantity,
            builder: (c, condition) => AdaptiveDropdown<QuantityType?>(
              hint: '-- Select Quantity --',
              items: QuantityType.values.toList(),
              text: (value) => '$value',
              groupValue: condition,
              errorText: (value) => value == null ? 'Field is required!' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.quantityTypeChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Type'),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<BiddingType?>(
              hint: '-- Select --',
              items: BiddingType.values.toList(),
              text: (value) => '${value?.sentence}',
              validate: s.validate,
              disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
              groupValue: s.product.deal?.biddingType,
              errorText: (value) => value == null ? 'Select Bidding Type' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.biddingTypeChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          BlocSelector<ProductBloc, ProductState, BiddingType?>(
            selector: (s) => s.product.deal?.biddingType,
            builder: (_, type) =>
                type?.when(
                  online: () => Row(
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextFormInputLabel(text: 'Start Date'),
                            //
                            ReactiveTextFormField<ProductBloc, ProductState>(
                              maxLines: 1,
                              hintText: (s) => '-- Select Date & Time --',
                              controller: (s) => s.startDateTextController,
                              autoDisposeController: false,
                              disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                              readOnly: (s) => false,
                              field: (s) => s.product.deal?.startDate,
                              validate: (s) =>
                                  s.validate &&
                                  (s.product.deal != null && (s.product.deal!.biddingType.isOnline && s.product.deal!.type.isAuction)),
                              response: (s) => s.status,
                              style: TextStyle(fontSize: 14.sp),
                              materialPadding: (d) => d.copyWith(right: 0),
                              suffixMode: (s) => OverlayVisibilityMode.always,
                              suffixIcon: (s) => Material(
                                color: App.resolveColor(Colors.transparent),
                                borderRadius: Utils.buttonRadius.br,
                                child: IconButton(
                                  onPressed: () =>
                                      _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                                    context.read<ProductBloc>().add(ProductSyncEvent.startDateChanged(value));
                                  }),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: App.resolveColor(Palette.onSurface60, dark: Palette.onSurfaceDark),
                                  ),
                                ),
                              ),
                              onTap: (bloc, s) =>
                                  _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                                bloc.add(ProductSyncEvent.startDateChanged(value));
                              }),
                            ),
                          ],
                        ),
                      ),
                      //
                      0.04.horizontalw,
                      //
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextFormInputLabel(text: 'End Date'),
                            //
                            ReactiveTextFormField<ProductBloc, ProductState>(
                              maxLines: 1,
                              hintText: (s) => '-- Select Date & Time --',
                              controller: (s) => s.endDateTextController,
                              autoDisposeController: false,
                              disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                              readOnly: (s) => false,
                              field: (s) => s.product.deal?.endDate,
                              validate: (s) =>
                                  s.validate &&
                                  (s.product.deal != null && (s.product.deal!.biddingType.isOnline && s.product.deal!.type.isAuction)),
                              response: (s) => s.status,
                              style: TextStyle(fontSize: 14.sp),
                              materialPadding: (d) => d.copyWith(right: 0),
                              suffixMode: (s) => OverlayVisibilityMode.always,
                              suffixIcon: (s) => Material(
                                color: App.resolveColor(Colors.transparent),
                                borderRadius: Utils.buttonRadius.br,
                                child: IconButton(
                                  onPressed: () => _pickDate(context, selectedDate: s.product.deal?.endDate.getOrNull, onSelected: (value) {
                                    context.read<ProductBloc>().add(ProductSyncEvent.endDateChanged(value));
                                  }),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: App.resolveColor(Palette.onSurface60, dark: Palette.onSurfaceDark),
                                  ),
                                ),
                              ),
                              onTap: (bloc, s) => _pickDate(context, selectedDate: s.product.deal?.endDate.getOrNull, onSelected: (value) {
                                bloc.add(ProductSyncEvent.endDateChanged(value));
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  offline: () => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFormInputLabel(text: 'Start Date'),
                      //
                      ReactiveTextFormField<ProductBloc, ProductState>(
                        maxLines: 1,
                        hintText: (s) => '-- Select Date & Time --',
                        controller: (s) => s.startDateTextController,
                        autoDisposeController: false,
                        disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                        readOnly: (s) => false,
                        field: (s) => s.product.deal?.startDate,
                        validate: (s) =>
                            s.validate &&
                            (s.product.deal != null && (s.product.deal!.biddingType.isOffline && s.product.deal!.type.isAuction)),
                        response: (s) => s.status,
                        style: TextStyle(fontSize: 14.sp),
                        materialPadding: (d) => d.copyWith(right: 0),
                        suffixMode: (s) => OverlayVisibilityMode.always,
                        suffixIcon: (s) => Material(
                          color: App.resolveColor(Colors.transparent),
                          borderRadius: Utils.buttonRadius.br,
                          child: IconButton(
                            onPressed: () => _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                              context.read<ProductBloc>().add(ProductSyncEvent.startDateChanged(value));
                            }),
                            icon: Icon(
                              Icons.calendar_today,
                              color: App.resolveColor(Palette.onSurface60, dark: Palette.onSurfaceDark),
                            ),
                          ),
                        ),
                        onTap: (bloc, s) => _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                          bloc.add(ProductSyncEvent.startDateChanged(value));
                        }),
                      ),
                      //
                      0.008.verticalh,
                      //
                      const TextFormInputLabel(text: 'Auction Address'),
                      //
                      ReactiveTextFormField<ProductBloc, ProductState>(
                        minLines: 3,
                        hintText: (s) => 'No 1, Jalan Sri Semantan, 50200 Kuala ...',
                        disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                        validate: (s) =>
                            s.validate &&
                            (s.product.deal != null && (s.product.deal!.biddingType.isOffline && s.product.deal!.type.isAuction)),
                        field: (s) => s.product.deal?.offlineAddress,
                        response: (s) => s.status,
                        controller: (s) => s.addressTextController,
                        autoDisposeController: false,
                        keyboardType: TextInputType.multiline,
                        action: TextInputAction.newline,
                        capitalization: TextCapitalization.none,
                        focus: ProductState.addressFocus,
                        onChanged: (cubit, it) => cubit.add(const ProductSyncEvent.offlineAddressChanged()),
                      ),
                    ],
                  ),
                ) ??
                Utils.nothing,
          ),
          //
          0.02.verticalh,
          //
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: App.resolveColor(Palette.primary.withOpacity(0.4), dark: Palette.onSurface.withOpacity(0.7))!,
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: AdaptiveText.rich(
                  TextSpan(children: [
                    ...const [
                      TextSpan(text: 'NOTE: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' A typical auction lasts only ', style: TextStyle(fontStyle: FontStyle.italic)),
                    ],
                    TextSpan(
                      text: '${Deal.auctionDurationInDays} ${'day'.pluralize(Deal.auctionDurationInDays)}',
                      style: const TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
                    ),
                    ...const [
                      TextSpan(text: ', with the exception of ', style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(text: 'Real Estate', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' and ', style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(text: 'Automobile Auctions', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                    const TextSpan(
                      text: ' categories, which can last as long as ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: '${Deal.specialAuctionDurationInDays} ${'day'.pluralize(Deal.specialAuctionDurationInDays)}',
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ]),
                  fontSize: 15.sp,
                  textColor: App.resolveColor(Palette.primaryColor.shade800, dark: Colors.grey.shade400),
                  textColorDark: App.resolveColor(Palette.primaryColor.shade800, dark: Colors.grey.shade400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
