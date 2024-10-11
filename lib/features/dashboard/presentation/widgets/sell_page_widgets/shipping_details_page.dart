library shipping_details_page.dart;

import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render ShippingDetailsPage.
class ShippingDetailsPage extends StatefulWidget {
  static const index = 3;

  const ShippingDetailsPage({Key? key}) : super(key: key);

  @override
  _ShippingDetailsPageState createState() => _ShippingDetailsPageState();
}

class _ShippingDetailsPageState extends State<ShippingDetailsPage> with AutomaticKeepAliveClientMixin<ShippingDetailsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextFormInputLabel(text: 'Shipping Region / Area'),
          //
          AutocompleteFormField<ProductBloc, ProductState>(
            controller: (s) => s.regionsEditingController,
            initial: (s) => s.product.shippingInformation?.regions.getOrNull?.asList(),
            suggesstions: (s) => _nigerianStates,
            enforceSuggestions: true,
            optionsTextBuilder: (str) => str,
            tagTextBuilder: (str) => str,
            tagTextFontWeight: FontWeight.bold,
            chipBgColor: App.resolveColor(Colors.grey.shade200, dark: Colors.black),
            tagTextColor: Palette.onBackground,
            tagTextColorDark: Palette.onBackground,
            hintText: (s) => 'Enter shipping regions separated by comma(,) or space',
            disabled: (s) => s.isLoading || s.isFetchingCategories || s.isSavingState || s.isCreatingProduct,
            textInputType: TextInputType.text,
            focusNode: (_) => ProductState.regionsFocus,
            field: (s) => s.product.shippingInformation?.regions,
            validate: (s) => s.validate,
            response: (s) => s.status,
            onChanged: (bloc, _) => bloc.add(const ProductDebounceEvent.onTypingRegion()),
            onTagsChanged: (bloc, tags) => bloc.add(const ProductSyncEvent.onRegionSelected()),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Delivery Period'),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<String?>(
              hint: '-- Select --',
              items: ProductState.periods,
              text: (it) => it,
              groupValue: s.product.shippingInformation?.deliveryPeriod.value.fold((_) => null, (r) => r),
              validate: s.validate,
              errorText: (value) => value == null || value.isEmpty ? 'Select a Delivery Period' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.deliveryPeriodChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Pickup Available'),
          //
          BlocSelector<ProductBloc, ProductState, bool?>(
            selector: (s) => s.product.shippingInformation?.isPickup,
            builder: (c, value) => AdaptiveDropdown<bool?>(
              hint: '-- Select --',
              items: const [true, false],
              text: (s) => s! ? 'Yes' : 'No',
              groupValue: value,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.deliveryModeChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Shipping Description'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            minLines: 4,
            hintText: (s) => 'Brief shipping description..',
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            validate: (s) => s.validate,
            response: (s) => s.status,
            field: (s) => s.product.shippingInformation?.description,
            controller: (s) => s.shippingDescTextController,
            autoDisposeController: false,
            keyboardType: TextInputType.multiline,
            action: TextInputAction.newline,
            capitalization: TextCapitalization.none,
            focus: ProductState.shippingDescFocus,
            onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.shippingDescChanged()),
          )
        ],
      ),
    );
  }
}

const _nigerianStates = [
  'Abia',
  'Adamawa',
  'Akwa Ibom',
  'Anambra',
  'Bauchi',
  'Bayelsa',
  'Benue',
  'Borno',
  'Cross River',
  'Delta',
  'Ebonyi',
  'Edo',
  'Ekiti',
  'Enugu',
  'Gombe',
  'Imo',
  'Jigawa',
  'Kaduna',
  'Kano',
  'Katsina',
  'Kebbi',
  'Kogi',
  'Kwara',
  'Lagos',
  'Nassarawa',
  'Niger',
  'Ogun',
  'Ondo',
  'Osun',
  'Oyo',
  'Plateau',
  'Rivers',
  'Sokoto',
  'Taraba',
  'Yobe',
  'Zamfara',
  'FCT - Abuja',
  'Nationwide',
];
