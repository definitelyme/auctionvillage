part of pricing_page.dart;

/// A stateless widget to render _BuyNowProductTab.
class _BuyNowProductTab extends StatelessWidget {
  const _BuyNowProductTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          0.01.verticalh,
          //
          const TextFormInputLabel(text: 'Price', fontWeight: FontWeight.w600),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            field: (s) => s.product.deal?.basePrice,
            validate: (s) => s.validate,
            response: (s) => s.status,
            controller: (s) => s.basePriceController,
            autoDisposeController: false,
            keyboardType: TextInputType.number,
            focus: ProductState.buyBasePriceFocus,
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
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Available Quantity'),
          //
          BlocSelector<ProductBloc, ProductState, int?>(
            selector: (s) => s.product.deal?.availableItems.getExact(Deal.DEFAULT_QUANTITY),
            builder: (c, amount) => AdaptiveDropdown<int?>(
              hint: '-- Select Quantity --',
              items: QuantityType.figures,
              text: (value) => value == 1 ? 'Single Item' : '$value',
              groupValue: amount,
              magnification: 1.2,
              errorText: (value) => value == null ? 'Field is required!' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.itemQuantityChanged(it ?? Deal.DEFAULT_QUANTITY)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Offer Type'),
          //
          BlocSelector<ProductBloc, ProductState, OfferType?>(
            selector: (s) => s.product.deal?.offerType,
            builder: (c, type) => AdaptiveDropdown<OfferType?>(
              hint: '-- Select --',
              items: OfferType.values.toList(),
              text: (value) => '$value',
              groupValue: type,
              errorText: (value) => value == null ? 'Select Offer Type' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.offerTypeChanged(it)),
            ),
          ),
        ],
      ),
    );
  }
}
