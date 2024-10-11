part of product_bloc.dart;

typedef _StateUpdate = ProductState Function(ProductState);

abstract class ProductEvent {
  const ProductEvent();
}

class ProductEmiiterEvent extends ProductEvent {
  final AwaitCallback? callback;
  final _StateUpdate state;

  const ProductEmiiterEvent._(this.state, this.callback);

  factory ProductEmiiterEvent.state(_StateUpdate state, {AwaitCallback? callback}) => ProductEmiiterEvent._(state, callback);
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions(map: false, maybeMap: false))
class ProductSyncEvent extends ProductEvent with _$ProductSyncEvent {
  const factory ProductSyncEvent.init({Product? product}) = _InitializeProductBlocEvent;
  const factory ProductSyncEvent.categoryChanged(DealCategory? category) = _CategoryChangedEvent;
  const factory ProductSyncEvent.countryChanged(Country? country) = _CountryChangedEvent;
  const factory ProductSyncEvent.dealPlanChanged(DealPlan? plan) = _DealPlanChangedEvent;
  const factory ProductSyncEvent.dealTypeChanged(DealType? type) = _DealTypeChangedEvent;
  const factory ProductSyncEvent.itemNameChanged() = _ProductNameChangedEvent;
  const factory ProductSyncEvent.stateChanged() = _ProductStateChangedEvent;
  const factory ProductSyncEvent.townChanged() = _ProductTownChangedEvent;
  const factory ProductSyncEvent.onTagSelected() = _ProductTagSelectedEvent;
  const factory ProductSyncEvent.itemDescriptionChanged() = _ProductDescriptionChangedEvent;
  const factory ProductSyncEvent.brandChanged() = _ProductBrandChangedEvent;
  const factory ProductSyncEvent.brandModelChanged() = _ProductBrandModelChangedEvent;
  const factory ProductSyncEvent.transmissionChanged() = _ProductTransmissionChangedEvent;
  const factory ProductSyncEvent.weightChanged() = _ProductWeightChangedEvent;
  const factory ProductSyncEvent.basePriceChanged() = _ProductBasePriceChangedEvent;
  const factory ProductSyncEvent.reservedPriceChanged() = _ProductReservedPriceChangedEvent;
  const factory ProductSyncEvent.lengthChanged() = _ProductLengthChangedEvent;
  const factory ProductSyncEvent.widthChanged() = _ProductWidthChangedEvent;
  const factory ProductSyncEvent.heightChanged() = _ProductHeightChangedEvent;
  const factory ProductSyncEvent.deliveryModeChanged(bool? value) = _ProductDeliveryModeChangedEvent;
  const factory ProductSyncEvent.shippingDescChanged() = _ProductShippingDescChangedEvent;
  const factory ProductSyncEvent.conditionChanged(ItemCondition? value) = _ProductConditionChangedEvent;
  const factory ProductSyncEvent.quantityTypeChanged(QuantityType? value) = _DealQuantityTypeChangedEvent;
  const factory ProductSyncEvent.itemQuantityChanged(int value) = _DealItemQuantityChangedEvent;
  const factory ProductSyncEvent.biddingTypeChanged(BiddingType? value) = _DealBiddingTypeChangedEvent;
  const factory ProductSyncEvent.offerTypeChanged(OfferType? value) = _DealOfferTypeChangedEvent;
  const factory ProductSyncEvent.startDateChanged(DateTime? value) = _DealStartDateChangedEvent;
  const factory ProductSyncEvent.endDateChanged(DateTime? value) = _DealEndDateChangedEvent;
  const factory ProductSyncEvent.offlineAddressChanged() = _DealOfflineAddressChangedEvent;
  const factory ProductSyncEvent.colorChanged(Color? value) = _ProductColorChangedEvent;
  const factory ProductSyncEvent.deliveryPeriodChanged(String? value) = _ProductDeliveryPeriodChangedEvent;
  const factory ProductSyncEvent.onRegionSelected() = _ProductRegionSelectedEvent;
  const factory ProductSyncEvent.warrantyPeriodChanged(String? value) = _ProductWarrantyPeriodChangedEvent;
  const factory ProductSyncEvent.yearOfPurchaseChanged(String? value) = _ProductYearOfPurchaseChangedEvent;
  const factory ProductSyncEvent.yearOfManufactureChanged(String? value) = _ProductYearOfManufactureChangedEvent;
  const factory ProductSyncEvent.repairHistoryChanged(bool? value) = _ProductRepairHistoryChangedEvent;
  const factory ProductSyncEvent.refundPolicyChanged(bool? value) = _ProductRefundPolicyChangedEvent;
  const factory ProductSyncEvent.termsInfoChanged(String? value) = _ProductTermsInfoChangedEvent;
  const factory ProductSyncEvent.validate(BuildContext ctx, {bool? validate, AwaitCallback? callback}) = _ValidateFormFieldEvent;
  const factory ProductSyncEvent.clearForm() = _ClearFormFieldsEvent;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions(maybeMap: false))
class ProductDebounceEvent extends ProductEvent with _$ProductDebounceEvent {
  const factory ProductDebounceEvent.onTypingTag() = _ProductTypingTagEvent;
  const factory ProductDebounceEvent.onTypingRegion() = _ProductTypingRegionEvent;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions(maybeMap: false))
class ProductStructEvent extends ProductEvent with _$ProductStructEvent {
  const factory ProductStructEvent.store(User? user, {AwaitCallback? callback}) = _StoreNewProductEvent;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions(maybeMap: false))
class ProductGetEvent extends ProductEvent with _$ProductGetEvent {
  const factory ProductGetEvent.categories() = _GetCategoriesEvent;
  const factory ProductGetEvent.getDealPlans({int? perPage, @Default(false) bool nextPage}) = _GetDealPlansEvent;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions(maybeMap: false))
class ProductPageControllerEvent extends ProductEvent with _$ProductPageControllerEvent {
  const factory ProductPageControllerEvent.attachListener() = _AttachPageControllerListener;

  const factory ProductPageControllerEvent.indexChanged(int index) = _PageIndexChangedEvent;

  const factory ProductPageControllerEvent.next(List<dynamic> items, int index) = _OnNextPage;

  const factory ProductPageControllerEvent.prev() = _OnPreviousPage;

  const factory ProductPageControllerEvent.animateTo(int page, {Duration? duration, Curve? curve}) = _OnAnimateToPage;
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions(maybeMap: false))
class ProductMediaEvents extends ProductEvent with _$ProductMediaEvents {
  @protected
  const factory ProductMediaEvents.uploadMedia(File file, [int? index]) = _UploadMediaEvent;

  const factory ProductMediaEvents.pickCamera([int? index]) = _PickCameraEvent;

  const factory ProductMediaEvents.pickGallery([int? index]) = _PickGalleryEvent;

  const factory ProductMediaEvents.removeMedia([int? index]) = _RemoveMediaEvent;
}
