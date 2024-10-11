// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of product_bloc.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSyncEvent {
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSyncEventCopyWith<$Res> {
  factory $ProductSyncEventCopyWith(
          ProductSyncEvent value, $Res Function(ProductSyncEvent) then) =
      _$ProductSyncEventCopyWithImpl<$Res, ProductSyncEvent>;
}

/// @nodoc
class _$ProductSyncEventCopyWithImpl<$Res, $Val extends ProductSyncEvent>
    implements $ProductSyncEventCopyWith<$Res> {
  _$ProductSyncEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeProductBlocEventCopyWith<$Res> {
  factory _$$_InitializeProductBlocEventCopyWith(
          _$_InitializeProductBlocEvent value,
          $Res Function(_$_InitializeProductBlocEvent) then) =
      __$$_InitializeProductBlocEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_InitializeProductBlocEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_InitializeProductBlocEvent>
    implements _$$_InitializeProductBlocEventCopyWith<$Res> {
  __$$_InitializeProductBlocEventCopyWithImpl(
      _$_InitializeProductBlocEvent _value,
      $Res Function(_$_InitializeProductBlocEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_InitializeProductBlocEvent(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_InitializeProductBlocEvent implements _InitializeProductBlocEvent {
  const _$_InitializeProductBlocEvent({this.product});

  @override
  final Product? product;

  @override
  String toString() {
    return 'ProductSyncEvent.init(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializeProductBlocEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeProductBlocEventCopyWith<_$_InitializeProductBlocEvent>
      get copyWith => __$$_InitializeProductBlocEventCopyWithImpl<
          _$_InitializeProductBlocEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return init?.call(this);
  }
}

abstract class _InitializeProductBlocEvent implements ProductSyncEvent {
  const factory _InitializeProductBlocEvent({final Product? product}) =
      _$_InitializeProductBlocEvent;

  Product? get product;
  @JsonKey(ignore: true)
  _$$_InitializeProductBlocEventCopyWith<_$_InitializeProductBlocEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryChangedEventCopyWith<$Res> {
  factory _$$_CategoryChangedEventCopyWith(_$_CategoryChangedEvent value,
          $Res Function(_$_CategoryChangedEvent) then) =
      __$$_CategoryChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DealCategory? category});

  $DealCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_CategoryChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_CategoryChangedEvent>
    implements _$$_CategoryChangedEventCopyWith<$Res> {
  __$$_CategoryChangedEventCopyWithImpl(_$_CategoryChangedEvent _value,
      $Res Function(_$_CategoryChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_CategoryChangedEvent(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $DealCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_CategoryChangedEvent implements _CategoryChangedEvent {
  const _$_CategoryChangedEvent(this.category);

  @override
  final DealCategory? category;

  @override
  String toString() {
    return 'ProductSyncEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryChangedEvent &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryChangedEventCopyWith<_$_CategoryChangedEvent> get copyWith =>
      __$$_CategoryChangedEventCopyWithImpl<_$_CategoryChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return categoryChanged?.call(this);
  }
}

abstract class _CategoryChangedEvent implements ProductSyncEvent {
  const factory _CategoryChangedEvent(final DealCategory? category) =
      _$_CategoryChangedEvent;

  DealCategory? get category;
  @JsonKey(ignore: true)
  _$$_CategoryChangedEventCopyWith<_$_CategoryChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CountryChangedEventCopyWith<$Res> {
  factory _$$_CountryChangedEventCopyWith(_$_CountryChangedEvent value,
          $Res Function(_$_CountryChangedEvent) then) =
      __$$_CountryChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Country? country});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_CountryChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_CountryChangedEvent>
    implements _$$_CountryChangedEventCopyWith<$Res> {
  __$$_CountryChangedEventCopyWithImpl(_$_CountryChangedEvent _value,
      $Res Function(_$_CountryChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$_CountryChangedEvent(
      freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_CountryChangedEvent implements _CountryChangedEvent {
  const _$_CountryChangedEvent(this.country);

  @override
  final Country? country;

  @override
  String toString() {
    return 'ProductSyncEvent.countryChanged(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryChangedEvent &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryChangedEventCopyWith<_$_CountryChangedEvent> get copyWith =>
      __$$_CountryChangedEventCopyWithImpl<_$_CountryChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return countryChanged?.call(this);
  }
}

abstract class _CountryChangedEvent implements ProductSyncEvent {
  const factory _CountryChangedEvent(final Country? country) =
      _$_CountryChangedEvent;

  Country? get country;
  @JsonKey(ignore: true)
  _$$_CountryChangedEventCopyWith<_$_CountryChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealPlanChangedEventCopyWith<$Res> {
  factory _$$_DealPlanChangedEventCopyWith(_$_DealPlanChangedEvent value,
          $Res Function(_$_DealPlanChangedEvent) then) =
      __$$_DealPlanChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DealPlan? plan});

  $DealPlanCopyWith<$Res>? get plan;
}

/// @nodoc
class __$$_DealPlanChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_DealPlanChangedEvent>
    implements _$$_DealPlanChangedEventCopyWith<$Res> {
  __$$_DealPlanChangedEventCopyWithImpl(_$_DealPlanChangedEvent _value,
      $Res Function(_$_DealPlanChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = freezed,
  }) {
    return _then(_$_DealPlanChangedEvent(
      freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DealPlanCopyWith<$Res>? get plan {
    if (_value.plan == null) {
      return null;
    }

    return $DealPlanCopyWith<$Res>(_value.plan!, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc

class _$_DealPlanChangedEvent implements _DealPlanChangedEvent {
  const _$_DealPlanChangedEvent(this.plan);

  @override
  final DealPlan? plan;

  @override
  String toString() {
    return 'ProductSyncEvent.dealPlanChanged(plan: $plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealPlanChangedEvent &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealPlanChangedEventCopyWith<_$_DealPlanChangedEvent> get copyWith =>
      __$$_DealPlanChangedEventCopyWithImpl<_$_DealPlanChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return dealPlanChanged?.call(this);
  }
}

abstract class _DealPlanChangedEvent implements ProductSyncEvent {
  const factory _DealPlanChangedEvent(final DealPlan? plan) =
      _$_DealPlanChangedEvent;

  DealPlan? get plan;
  @JsonKey(ignore: true)
  _$$_DealPlanChangedEventCopyWith<_$_DealPlanChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealTypeChangedEventCopyWith<$Res> {
  factory _$$_DealTypeChangedEventCopyWith(_$_DealTypeChangedEvent value,
          $Res Function(_$_DealTypeChangedEvent) then) =
      __$$_DealTypeChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DealType? type});
}

/// @nodoc
class __$$_DealTypeChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_DealTypeChangedEvent>
    implements _$$_DealTypeChangedEventCopyWith<$Res> {
  __$$_DealTypeChangedEventCopyWithImpl(_$_DealTypeChangedEvent _value,
      $Res Function(_$_DealTypeChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_DealTypeChangedEvent(
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType?,
    ));
  }
}

/// @nodoc

class _$_DealTypeChangedEvent implements _DealTypeChangedEvent {
  const _$_DealTypeChangedEvent(this.type);

  @override
  final DealType? type;

  @override
  String toString() {
    return 'ProductSyncEvent.dealTypeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealTypeChangedEvent &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealTypeChangedEventCopyWith<_$_DealTypeChangedEvent> get copyWith =>
      __$$_DealTypeChangedEventCopyWithImpl<_$_DealTypeChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return dealTypeChanged?.call(this);
  }
}

abstract class _DealTypeChangedEvent implements ProductSyncEvent {
  const factory _DealTypeChangedEvent(final DealType? type) =
      _$_DealTypeChangedEvent;

  DealType? get type;
  @JsonKey(ignore: true)
  _$$_DealTypeChangedEventCopyWith<_$_DealTypeChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductNameChangedEventCopyWith<$Res> {
  factory _$$_ProductNameChangedEventCopyWith(_$_ProductNameChangedEvent value,
          $Res Function(_$_ProductNameChangedEvent) then) =
      __$$_ProductNameChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductNameChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductNameChangedEvent>
    implements _$$_ProductNameChangedEventCopyWith<$Res> {
  __$$_ProductNameChangedEventCopyWithImpl(_$_ProductNameChangedEvent _value,
      $Res Function(_$_ProductNameChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductNameChangedEvent implements _ProductNameChangedEvent {
  const _$_ProductNameChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.itemNameChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductNameChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return itemNameChanged?.call(this);
  }
}

abstract class _ProductNameChangedEvent implements ProductSyncEvent {
  const factory _ProductNameChangedEvent() = _$_ProductNameChangedEvent;
}

/// @nodoc
abstract class _$$_ProductStateChangedEventCopyWith<$Res> {
  factory _$$_ProductStateChangedEventCopyWith(
          _$_ProductStateChangedEvent value,
          $Res Function(_$_ProductStateChangedEvent) then) =
      __$$_ProductStateChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductStateChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductStateChangedEvent>
    implements _$$_ProductStateChangedEventCopyWith<$Res> {
  __$$_ProductStateChangedEventCopyWithImpl(_$_ProductStateChangedEvent _value,
      $Res Function(_$_ProductStateChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductStateChangedEvent implements _ProductStateChangedEvent {
  const _$_ProductStateChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.stateChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductStateChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return stateChanged?.call(this);
  }
}

abstract class _ProductStateChangedEvent implements ProductSyncEvent {
  const factory _ProductStateChangedEvent() = _$_ProductStateChangedEvent;
}

/// @nodoc
abstract class _$$_ProductTownChangedEventCopyWith<$Res> {
  factory _$$_ProductTownChangedEventCopyWith(_$_ProductTownChangedEvent value,
          $Res Function(_$_ProductTownChangedEvent) then) =
      __$$_ProductTownChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductTownChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductTownChangedEvent>
    implements _$$_ProductTownChangedEventCopyWith<$Res> {
  __$$_ProductTownChangedEventCopyWithImpl(_$_ProductTownChangedEvent _value,
      $Res Function(_$_ProductTownChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductTownChangedEvent implements _ProductTownChangedEvent {
  const _$_ProductTownChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.townChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTownChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return townChanged?.call(this);
  }
}

abstract class _ProductTownChangedEvent implements ProductSyncEvent {
  const factory _ProductTownChangedEvent() = _$_ProductTownChangedEvent;
}

/// @nodoc
abstract class _$$_ProductTagSelectedEventCopyWith<$Res> {
  factory _$$_ProductTagSelectedEventCopyWith(_$_ProductTagSelectedEvent value,
          $Res Function(_$_ProductTagSelectedEvent) then) =
      __$$_ProductTagSelectedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductTagSelectedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductTagSelectedEvent>
    implements _$$_ProductTagSelectedEventCopyWith<$Res> {
  __$$_ProductTagSelectedEventCopyWithImpl(_$_ProductTagSelectedEvent _value,
      $Res Function(_$_ProductTagSelectedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductTagSelectedEvent implements _ProductTagSelectedEvent {
  const _$_ProductTagSelectedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.onTagSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTagSelectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return onTagSelected?.call(this);
  }
}

abstract class _ProductTagSelectedEvent implements ProductSyncEvent {
  const factory _ProductTagSelectedEvent() = _$_ProductTagSelectedEvent;
}

/// @nodoc
abstract class _$$_ProductDescriptionChangedEventCopyWith<$Res> {
  factory _$$_ProductDescriptionChangedEventCopyWith(
          _$_ProductDescriptionChangedEvent value,
          $Res Function(_$_ProductDescriptionChangedEvent) then) =
      __$$_ProductDescriptionChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductDescriptionChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductDescriptionChangedEvent>
    implements _$$_ProductDescriptionChangedEventCopyWith<$Res> {
  __$$_ProductDescriptionChangedEventCopyWithImpl(
      _$_ProductDescriptionChangedEvent _value,
      $Res Function(_$_ProductDescriptionChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductDescriptionChangedEvent
    implements _ProductDescriptionChangedEvent {
  const _$_ProductDescriptionChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.itemDescriptionChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDescriptionChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return itemDescriptionChanged?.call(this);
  }
}

abstract class _ProductDescriptionChangedEvent implements ProductSyncEvent {
  const factory _ProductDescriptionChangedEvent() =
      _$_ProductDescriptionChangedEvent;
}

/// @nodoc
abstract class _$$_ProductBrandChangedEventCopyWith<$Res> {
  factory _$$_ProductBrandChangedEventCopyWith(
          _$_ProductBrandChangedEvent value,
          $Res Function(_$_ProductBrandChangedEvent) then) =
      __$$_ProductBrandChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductBrandChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductBrandChangedEvent>
    implements _$$_ProductBrandChangedEventCopyWith<$Res> {
  __$$_ProductBrandChangedEventCopyWithImpl(_$_ProductBrandChangedEvent _value,
      $Res Function(_$_ProductBrandChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductBrandChangedEvent implements _ProductBrandChangedEvent {
  const _$_ProductBrandChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.brandChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBrandChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return brandChanged?.call(this);
  }
}

abstract class _ProductBrandChangedEvent implements ProductSyncEvent {
  const factory _ProductBrandChangedEvent() = _$_ProductBrandChangedEvent;
}

/// @nodoc
abstract class _$$_ProductBrandModelChangedEventCopyWith<$Res> {
  factory _$$_ProductBrandModelChangedEventCopyWith(
          _$_ProductBrandModelChangedEvent value,
          $Res Function(_$_ProductBrandModelChangedEvent) then) =
      __$$_ProductBrandModelChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductBrandModelChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductBrandModelChangedEvent>
    implements _$$_ProductBrandModelChangedEventCopyWith<$Res> {
  __$$_ProductBrandModelChangedEventCopyWithImpl(
      _$_ProductBrandModelChangedEvent _value,
      $Res Function(_$_ProductBrandModelChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductBrandModelChangedEvent
    implements _ProductBrandModelChangedEvent {
  const _$_ProductBrandModelChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.brandModelChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBrandModelChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return brandModelChanged?.call(this);
  }
}

abstract class _ProductBrandModelChangedEvent implements ProductSyncEvent {
  const factory _ProductBrandModelChangedEvent() =
      _$_ProductBrandModelChangedEvent;
}

/// @nodoc
abstract class _$$_ProductTransmissionChangedEventCopyWith<$Res> {
  factory _$$_ProductTransmissionChangedEventCopyWith(
          _$_ProductTransmissionChangedEvent value,
          $Res Function(_$_ProductTransmissionChangedEvent) then) =
      __$$_ProductTransmissionChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductTransmissionChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductTransmissionChangedEvent>
    implements _$$_ProductTransmissionChangedEventCopyWith<$Res> {
  __$$_ProductTransmissionChangedEventCopyWithImpl(
      _$_ProductTransmissionChangedEvent _value,
      $Res Function(_$_ProductTransmissionChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductTransmissionChangedEvent
    implements _ProductTransmissionChangedEvent {
  const _$_ProductTransmissionChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.transmissionChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTransmissionChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return transmissionChanged?.call(this);
  }
}

abstract class _ProductTransmissionChangedEvent implements ProductSyncEvent {
  const factory _ProductTransmissionChangedEvent() =
      _$_ProductTransmissionChangedEvent;
}

/// @nodoc
abstract class _$$_ProductWeightChangedEventCopyWith<$Res> {
  factory _$$_ProductWeightChangedEventCopyWith(
          _$_ProductWeightChangedEvent value,
          $Res Function(_$_ProductWeightChangedEvent) then) =
      __$$_ProductWeightChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductWeightChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductWeightChangedEvent>
    implements _$$_ProductWeightChangedEventCopyWith<$Res> {
  __$$_ProductWeightChangedEventCopyWithImpl(
      _$_ProductWeightChangedEvent _value,
      $Res Function(_$_ProductWeightChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductWeightChangedEvent implements _ProductWeightChangedEvent {
  const _$_ProductWeightChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.weightChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductWeightChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return weightChanged?.call(this);
  }
}

abstract class _ProductWeightChangedEvent implements ProductSyncEvent {
  const factory _ProductWeightChangedEvent() = _$_ProductWeightChangedEvent;
}

/// @nodoc
abstract class _$$_ProductBasePriceChangedEventCopyWith<$Res> {
  factory _$$_ProductBasePriceChangedEventCopyWith(
          _$_ProductBasePriceChangedEvent value,
          $Res Function(_$_ProductBasePriceChangedEvent) then) =
      __$$_ProductBasePriceChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductBasePriceChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductBasePriceChangedEvent>
    implements _$$_ProductBasePriceChangedEventCopyWith<$Res> {
  __$$_ProductBasePriceChangedEventCopyWithImpl(
      _$_ProductBasePriceChangedEvent _value,
      $Res Function(_$_ProductBasePriceChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductBasePriceChangedEvent implements _ProductBasePriceChangedEvent {
  const _$_ProductBasePriceChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.basePriceChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBasePriceChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return basePriceChanged?.call(this);
  }
}

abstract class _ProductBasePriceChangedEvent implements ProductSyncEvent {
  const factory _ProductBasePriceChangedEvent() =
      _$_ProductBasePriceChangedEvent;
}

/// @nodoc
abstract class _$$_ProductReservedPriceChangedEventCopyWith<$Res> {
  factory _$$_ProductReservedPriceChangedEventCopyWith(
          _$_ProductReservedPriceChangedEvent value,
          $Res Function(_$_ProductReservedPriceChangedEvent) then) =
      __$$_ProductReservedPriceChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductReservedPriceChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductReservedPriceChangedEvent>
    implements _$$_ProductReservedPriceChangedEventCopyWith<$Res> {
  __$$_ProductReservedPriceChangedEventCopyWithImpl(
      _$_ProductReservedPriceChangedEvent _value,
      $Res Function(_$_ProductReservedPriceChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductReservedPriceChangedEvent
    implements _ProductReservedPriceChangedEvent {
  const _$_ProductReservedPriceChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.reservedPriceChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductReservedPriceChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return reservedPriceChanged?.call(this);
  }
}

abstract class _ProductReservedPriceChangedEvent implements ProductSyncEvent {
  const factory _ProductReservedPriceChangedEvent() =
      _$_ProductReservedPriceChangedEvent;
}

/// @nodoc
abstract class _$$_ProductLengthChangedEventCopyWith<$Res> {
  factory _$$_ProductLengthChangedEventCopyWith(
          _$_ProductLengthChangedEvent value,
          $Res Function(_$_ProductLengthChangedEvent) then) =
      __$$_ProductLengthChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductLengthChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductLengthChangedEvent>
    implements _$$_ProductLengthChangedEventCopyWith<$Res> {
  __$$_ProductLengthChangedEventCopyWithImpl(
      _$_ProductLengthChangedEvent _value,
      $Res Function(_$_ProductLengthChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductLengthChangedEvent implements _ProductLengthChangedEvent {
  const _$_ProductLengthChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.lengthChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductLengthChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return lengthChanged?.call(this);
  }
}

abstract class _ProductLengthChangedEvent implements ProductSyncEvent {
  const factory _ProductLengthChangedEvent() = _$_ProductLengthChangedEvent;
}

/// @nodoc
abstract class _$$_ProductWidthChangedEventCopyWith<$Res> {
  factory _$$_ProductWidthChangedEventCopyWith(
          _$_ProductWidthChangedEvent value,
          $Res Function(_$_ProductWidthChangedEvent) then) =
      __$$_ProductWidthChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductWidthChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductWidthChangedEvent>
    implements _$$_ProductWidthChangedEventCopyWith<$Res> {
  __$$_ProductWidthChangedEventCopyWithImpl(_$_ProductWidthChangedEvent _value,
      $Res Function(_$_ProductWidthChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductWidthChangedEvent implements _ProductWidthChangedEvent {
  const _$_ProductWidthChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.widthChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductWidthChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return widthChanged?.call(this);
  }
}

abstract class _ProductWidthChangedEvent implements ProductSyncEvent {
  const factory _ProductWidthChangedEvent() = _$_ProductWidthChangedEvent;
}

/// @nodoc
abstract class _$$_ProductHeightChangedEventCopyWith<$Res> {
  factory _$$_ProductHeightChangedEventCopyWith(
          _$_ProductHeightChangedEvent value,
          $Res Function(_$_ProductHeightChangedEvent) then) =
      __$$_ProductHeightChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductHeightChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductHeightChangedEvent>
    implements _$$_ProductHeightChangedEventCopyWith<$Res> {
  __$$_ProductHeightChangedEventCopyWithImpl(
      _$_ProductHeightChangedEvent _value,
      $Res Function(_$_ProductHeightChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductHeightChangedEvent implements _ProductHeightChangedEvent {
  const _$_ProductHeightChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.heightChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductHeightChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return heightChanged?.call(this);
  }
}

abstract class _ProductHeightChangedEvent implements ProductSyncEvent {
  const factory _ProductHeightChangedEvent() = _$_ProductHeightChangedEvent;
}

/// @nodoc
abstract class _$$_ProductDeliveryModeChangedEventCopyWith<$Res> {
  factory _$$_ProductDeliveryModeChangedEventCopyWith(
          _$_ProductDeliveryModeChangedEvent value,
          $Res Function(_$_ProductDeliveryModeChangedEvent) then) =
      __$$_ProductDeliveryModeChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? value});
}

/// @nodoc
class __$$_ProductDeliveryModeChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductDeliveryModeChangedEvent>
    implements _$$_ProductDeliveryModeChangedEventCopyWith<$Res> {
  __$$_ProductDeliveryModeChangedEventCopyWithImpl(
      _$_ProductDeliveryModeChangedEvent _value,
      $Res Function(_$_ProductDeliveryModeChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductDeliveryModeChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ProductDeliveryModeChangedEvent
    implements _ProductDeliveryModeChangedEvent {
  const _$_ProductDeliveryModeChangedEvent(this.value);

  @override
  final bool? value;

  @override
  String toString() {
    return 'ProductSyncEvent.deliveryModeChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDeliveryModeChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDeliveryModeChangedEventCopyWith<
          _$_ProductDeliveryModeChangedEvent>
      get copyWith => __$$_ProductDeliveryModeChangedEventCopyWithImpl<
          _$_ProductDeliveryModeChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return deliveryModeChanged?.call(this);
  }
}

abstract class _ProductDeliveryModeChangedEvent implements ProductSyncEvent {
  const factory _ProductDeliveryModeChangedEvent(final bool? value) =
      _$_ProductDeliveryModeChangedEvent;

  bool? get value;
  @JsonKey(ignore: true)
  _$$_ProductDeliveryModeChangedEventCopyWith<
          _$_ProductDeliveryModeChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductShippingDescChangedEventCopyWith<$Res> {
  factory _$$_ProductShippingDescChangedEventCopyWith(
          _$_ProductShippingDescChangedEvent value,
          $Res Function(_$_ProductShippingDescChangedEvent) then) =
      __$$_ProductShippingDescChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductShippingDescChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductShippingDescChangedEvent>
    implements _$$_ProductShippingDescChangedEventCopyWith<$Res> {
  __$$_ProductShippingDescChangedEventCopyWithImpl(
      _$_ProductShippingDescChangedEvent _value,
      $Res Function(_$_ProductShippingDescChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductShippingDescChangedEvent
    implements _ProductShippingDescChangedEvent {
  const _$_ProductShippingDescChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.shippingDescChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductShippingDescChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return shippingDescChanged?.call(this);
  }
}

abstract class _ProductShippingDescChangedEvent implements ProductSyncEvent {
  const factory _ProductShippingDescChangedEvent() =
      _$_ProductShippingDescChangedEvent;
}

/// @nodoc
abstract class _$$_ProductConditionChangedEventCopyWith<$Res> {
  factory _$$_ProductConditionChangedEventCopyWith(
          _$_ProductConditionChangedEvent value,
          $Res Function(_$_ProductConditionChangedEvent) then) =
      __$$_ProductConditionChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemCondition? value});
}

/// @nodoc
class __$$_ProductConditionChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductConditionChangedEvent>
    implements _$$_ProductConditionChangedEventCopyWith<$Res> {
  __$$_ProductConditionChangedEventCopyWithImpl(
      _$_ProductConditionChangedEvent _value,
      $Res Function(_$_ProductConditionChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductConditionChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ItemCondition?,
    ));
  }
}

/// @nodoc

class _$_ProductConditionChangedEvent implements _ProductConditionChangedEvent {
  const _$_ProductConditionChangedEvent(this.value);

  @override
  final ItemCondition? value;

  @override
  String toString() {
    return 'ProductSyncEvent.conditionChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductConditionChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductConditionChangedEventCopyWith<_$_ProductConditionChangedEvent>
      get copyWith => __$$_ProductConditionChangedEventCopyWithImpl<
          _$_ProductConditionChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return conditionChanged?.call(this);
  }
}

abstract class _ProductConditionChangedEvent implements ProductSyncEvent {
  const factory _ProductConditionChangedEvent(final ItemCondition? value) =
      _$_ProductConditionChangedEvent;

  ItemCondition? get value;
  @JsonKey(ignore: true)
  _$$_ProductConditionChangedEventCopyWith<_$_ProductConditionChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealQuantityTypeChangedEventCopyWith<$Res> {
  factory _$$_DealQuantityTypeChangedEventCopyWith(
          _$_DealQuantityTypeChangedEvent value,
          $Res Function(_$_DealQuantityTypeChangedEvent) then) =
      __$$_DealQuantityTypeChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({QuantityType? value});
}

/// @nodoc
class __$$_DealQuantityTypeChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_DealQuantityTypeChangedEvent>
    implements _$$_DealQuantityTypeChangedEventCopyWith<$Res> {
  __$$_DealQuantityTypeChangedEventCopyWithImpl(
      _$_DealQuantityTypeChangedEvent _value,
      $Res Function(_$_DealQuantityTypeChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_DealQuantityTypeChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as QuantityType?,
    ));
  }
}

/// @nodoc

class _$_DealQuantityTypeChangedEvent implements _DealQuantityTypeChangedEvent {
  const _$_DealQuantityTypeChangedEvent(this.value);

  @override
  final QuantityType? value;

  @override
  String toString() {
    return 'ProductSyncEvent.quantityTypeChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealQuantityTypeChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealQuantityTypeChangedEventCopyWith<_$_DealQuantityTypeChangedEvent>
      get copyWith => __$$_DealQuantityTypeChangedEventCopyWithImpl<
          _$_DealQuantityTypeChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return quantityTypeChanged?.call(this);
  }
}

abstract class _DealQuantityTypeChangedEvent implements ProductSyncEvent {
  const factory _DealQuantityTypeChangedEvent(final QuantityType? value) =
      _$_DealQuantityTypeChangedEvent;

  QuantityType? get value;
  @JsonKey(ignore: true)
  _$$_DealQuantityTypeChangedEventCopyWith<_$_DealQuantityTypeChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealItemQuantityChangedEventCopyWith<$Res> {
  factory _$$_DealItemQuantityChangedEventCopyWith(
          _$_DealItemQuantityChangedEvent value,
          $Res Function(_$_DealItemQuantityChangedEvent) then) =
      __$$_DealItemQuantityChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_DealItemQuantityChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_DealItemQuantityChangedEvent>
    implements _$$_DealItemQuantityChangedEventCopyWith<$Res> {
  __$$_DealItemQuantityChangedEventCopyWithImpl(
      _$_DealItemQuantityChangedEvent _value,
      $Res Function(_$_DealItemQuantityChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DealItemQuantityChangedEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DealItemQuantityChangedEvent implements _DealItemQuantityChangedEvent {
  const _$_DealItemQuantityChangedEvent(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'ProductSyncEvent.itemQuantityChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealItemQuantityChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealItemQuantityChangedEventCopyWith<_$_DealItemQuantityChangedEvent>
      get copyWith => __$$_DealItemQuantityChangedEventCopyWithImpl<
          _$_DealItemQuantityChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return itemQuantityChanged?.call(this);
  }
}

abstract class _DealItemQuantityChangedEvent implements ProductSyncEvent {
  const factory _DealItemQuantityChangedEvent(final int value) =
      _$_DealItemQuantityChangedEvent;

  int get value;
  @JsonKey(ignore: true)
  _$$_DealItemQuantityChangedEventCopyWith<_$_DealItemQuantityChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealBiddingTypeChangedEventCopyWith<$Res> {
  factory _$$_DealBiddingTypeChangedEventCopyWith(
          _$_DealBiddingTypeChangedEvent value,
          $Res Function(_$_DealBiddingTypeChangedEvent) then) =
      __$$_DealBiddingTypeChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BiddingType? value});
}

/// @nodoc
class __$$_DealBiddingTypeChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_DealBiddingTypeChangedEvent>
    implements _$$_DealBiddingTypeChangedEventCopyWith<$Res> {
  __$$_DealBiddingTypeChangedEventCopyWithImpl(
      _$_DealBiddingTypeChangedEvent _value,
      $Res Function(_$_DealBiddingTypeChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_DealBiddingTypeChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
    ));
  }
}

/// @nodoc

class _$_DealBiddingTypeChangedEvent implements _DealBiddingTypeChangedEvent {
  const _$_DealBiddingTypeChangedEvent(this.value);

  @override
  final BiddingType? value;

  @override
  String toString() {
    return 'ProductSyncEvent.biddingTypeChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealBiddingTypeChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealBiddingTypeChangedEventCopyWith<_$_DealBiddingTypeChangedEvent>
      get copyWith => __$$_DealBiddingTypeChangedEventCopyWithImpl<
          _$_DealBiddingTypeChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return biddingTypeChanged?.call(this);
  }
}

abstract class _DealBiddingTypeChangedEvent implements ProductSyncEvent {
  const factory _DealBiddingTypeChangedEvent(final BiddingType? value) =
      _$_DealBiddingTypeChangedEvent;

  BiddingType? get value;
  @JsonKey(ignore: true)
  _$$_DealBiddingTypeChangedEventCopyWith<_$_DealBiddingTypeChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealOfferTypeChangedEventCopyWith<$Res> {
  factory _$$_DealOfferTypeChangedEventCopyWith(
          _$_DealOfferTypeChangedEvent value,
          $Res Function(_$_DealOfferTypeChangedEvent) then) =
      __$$_DealOfferTypeChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({OfferType? value});
}

/// @nodoc
class __$$_DealOfferTypeChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_DealOfferTypeChangedEvent>
    implements _$$_DealOfferTypeChangedEventCopyWith<$Res> {
  __$$_DealOfferTypeChangedEventCopyWithImpl(
      _$_DealOfferTypeChangedEvent _value,
      $Res Function(_$_DealOfferTypeChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_DealOfferTypeChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as OfferType?,
    ));
  }
}

/// @nodoc

class _$_DealOfferTypeChangedEvent implements _DealOfferTypeChangedEvent {
  const _$_DealOfferTypeChangedEvent(this.value);

  @override
  final OfferType? value;

  @override
  String toString() {
    return 'ProductSyncEvent.offerTypeChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealOfferTypeChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealOfferTypeChangedEventCopyWith<_$_DealOfferTypeChangedEvent>
      get copyWith => __$$_DealOfferTypeChangedEventCopyWithImpl<
          _$_DealOfferTypeChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return offerTypeChanged?.call(this);
  }
}

abstract class _DealOfferTypeChangedEvent implements ProductSyncEvent {
  const factory _DealOfferTypeChangedEvent(final OfferType? value) =
      _$_DealOfferTypeChangedEvent;

  OfferType? get value;
  @JsonKey(ignore: true)
  _$$_DealOfferTypeChangedEventCopyWith<_$_DealOfferTypeChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealStartDateChangedEventCopyWith<$Res> {
  factory _$$_DealStartDateChangedEventCopyWith(
          _$_DealStartDateChangedEvent value,
          $Res Function(_$_DealStartDateChangedEvent) then) =
      __$$_DealStartDateChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? value});
}

/// @nodoc
class __$$_DealStartDateChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_DealStartDateChangedEvent>
    implements _$$_DealStartDateChangedEventCopyWith<$Res> {
  __$$_DealStartDateChangedEventCopyWithImpl(
      _$_DealStartDateChangedEvent _value,
      $Res Function(_$_DealStartDateChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_DealStartDateChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DealStartDateChangedEvent implements _DealStartDateChangedEvent {
  const _$_DealStartDateChangedEvent(this.value);

  @override
  final DateTime? value;

  @override
  String toString() {
    return 'ProductSyncEvent.startDateChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealStartDateChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealStartDateChangedEventCopyWith<_$_DealStartDateChangedEvent>
      get copyWith => __$$_DealStartDateChangedEventCopyWithImpl<
          _$_DealStartDateChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return startDateChanged?.call(this);
  }
}

abstract class _DealStartDateChangedEvent implements ProductSyncEvent {
  const factory _DealStartDateChangedEvent(final DateTime? value) =
      _$_DealStartDateChangedEvent;

  DateTime? get value;
  @JsonKey(ignore: true)
  _$$_DealStartDateChangedEventCopyWith<_$_DealStartDateChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealEndDateChangedEventCopyWith<$Res> {
  factory _$$_DealEndDateChangedEventCopyWith(_$_DealEndDateChangedEvent value,
          $Res Function(_$_DealEndDateChangedEvent) then) =
      __$$_DealEndDateChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? value});
}

/// @nodoc
class __$$_DealEndDateChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_DealEndDateChangedEvent>
    implements _$$_DealEndDateChangedEventCopyWith<$Res> {
  __$$_DealEndDateChangedEventCopyWithImpl(_$_DealEndDateChangedEvent _value,
      $Res Function(_$_DealEndDateChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_DealEndDateChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DealEndDateChangedEvent implements _DealEndDateChangedEvent {
  const _$_DealEndDateChangedEvent(this.value);

  @override
  final DateTime? value;

  @override
  String toString() {
    return 'ProductSyncEvent.endDateChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealEndDateChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealEndDateChangedEventCopyWith<_$_DealEndDateChangedEvent>
      get copyWith =>
          __$$_DealEndDateChangedEventCopyWithImpl<_$_DealEndDateChangedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return endDateChanged?.call(this);
  }
}

abstract class _DealEndDateChangedEvent implements ProductSyncEvent {
  const factory _DealEndDateChangedEvent(final DateTime? value) =
      _$_DealEndDateChangedEvent;

  DateTime? get value;
  @JsonKey(ignore: true)
  _$$_DealEndDateChangedEventCopyWith<_$_DealEndDateChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DealOfflineAddressChangedEventCopyWith<$Res> {
  factory _$$_DealOfflineAddressChangedEventCopyWith(
          _$_DealOfflineAddressChangedEvent value,
          $Res Function(_$_DealOfflineAddressChangedEvent) then) =
      __$$_DealOfflineAddressChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DealOfflineAddressChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_DealOfflineAddressChangedEvent>
    implements _$$_DealOfflineAddressChangedEventCopyWith<$Res> {
  __$$_DealOfflineAddressChangedEventCopyWithImpl(
      _$_DealOfflineAddressChangedEvent _value,
      $Res Function(_$_DealOfflineAddressChangedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DealOfflineAddressChangedEvent
    implements _DealOfflineAddressChangedEvent {
  const _$_DealOfflineAddressChangedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.offlineAddressChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealOfflineAddressChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return offlineAddressChanged?.call(this);
  }
}

abstract class _DealOfflineAddressChangedEvent implements ProductSyncEvent {
  const factory _DealOfflineAddressChangedEvent() =
      _$_DealOfflineAddressChangedEvent;
}

/// @nodoc
abstract class _$$_ProductColorChangedEventCopyWith<$Res> {
  factory _$$_ProductColorChangedEventCopyWith(
          _$_ProductColorChangedEvent value,
          $Res Function(_$_ProductColorChangedEvent) then) =
      __$$_ProductColorChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Color? value});
}

/// @nodoc
class __$$_ProductColorChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductColorChangedEvent>
    implements _$$_ProductColorChangedEventCopyWith<$Res> {
  __$$_ProductColorChangedEventCopyWithImpl(_$_ProductColorChangedEvent _value,
      $Res Function(_$_ProductColorChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductColorChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_ProductColorChangedEvent implements _ProductColorChangedEvent {
  const _$_ProductColorChangedEvent(this.value);

  @override
  final Color? value;

  @override
  String toString() {
    return 'ProductSyncEvent.colorChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductColorChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductColorChangedEventCopyWith<_$_ProductColorChangedEvent>
      get copyWith => __$$_ProductColorChangedEventCopyWithImpl<
          _$_ProductColorChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return colorChanged?.call(this);
  }
}

abstract class _ProductColorChangedEvent implements ProductSyncEvent {
  const factory _ProductColorChangedEvent(final Color? value) =
      _$_ProductColorChangedEvent;

  Color? get value;
  @JsonKey(ignore: true)
  _$$_ProductColorChangedEventCopyWith<_$_ProductColorChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductDeliveryPeriodChangedEventCopyWith<$Res> {
  factory _$$_ProductDeliveryPeriodChangedEventCopyWith(
          _$_ProductDeliveryPeriodChangedEvent value,
          $Res Function(_$_ProductDeliveryPeriodChangedEvent) then) =
      __$$_ProductDeliveryPeriodChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$_ProductDeliveryPeriodChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductDeliveryPeriodChangedEvent>
    implements _$$_ProductDeliveryPeriodChangedEventCopyWith<$Res> {
  __$$_ProductDeliveryPeriodChangedEventCopyWithImpl(
      _$_ProductDeliveryPeriodChangedEvent _value,
      $Res Function(_$_ProductDeliveryPeriodChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductDeliveryPeriodChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductDeliveryPeriodChangedEvent
    implements _ProductDeliveryPeriodChangedEvent {
  const _$_ProductDeliveryPeriodChangedEvent(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'ProductSyncEvent.deliveryPeriodChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDeliveryPeriodChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDeliveryPeriodChangedEventCopyWith<
          _$_ProductDeliveryPeriodChangedEvent>
      get copyWith => __$$_ProductDeliveryPeriodChangedEventCopyWithImpl<
          _$_ProductDeliveryPeriodChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return deliveryPeriodChanged?.call(this);
  }
}

abstract class _ProductDeliveryPeriodChangedEvent implements ProductSyncEvent {
  const factory _ProductDeliveryPeriodChangedEvent(final String? value) =
      _$_ProductDeliveryPeriodChangedEvent;

  String? get value;
  @JsonKey(ignore: true)
  _$$_ProductDeliveryPeriodChangedEventCopyWith<
          _$_ProductDeliveryPeriodChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductRegionSelectedEventCopyWith<$Res> {
  factory _$$_ProductRegionSelectedEventCopyWith(
          _$_ProductRegionSelectedEvent value,
          $Res Function(_$_ProductRegionSelectedEvent) then) =
      __$$_ProductRegionSelectedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductRegionSelectedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ProductRegionSelectedEvent>
    implements _$$_ProductRegionSelectedEventCopyWith<$Res> {
  __$$_ProductRegionSelectedEventCopyWithImpl(
      _$_ProductRegionSelectedEvent _value,
      $Res Function(_$_ProductRegionSelectedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductRegionSelectedEvent implements _ProductRegionSelectedEvent {
  const _$_ProductRegionSelectedEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.onRegionSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRegionSelectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return onRegionSelected?.call(this);
  }
}

abstract class _ProductRegionSelectedEvent implements ProductSyncEvent {
  const factory _ProductRegionSelectedEvent() = _$_ProductRegionSelectedEvent;
}

/// @nodoc
abstract class _$$_ProductWarrantyPeriodChangedEventCopyWith<$Res> {
  factory _$$_ProductWarrantyPeriodChangedEventCopyWith(
          _$_ProductWarrantyPeriodChangedEvent value,
          $Res Function(_$_ProductWarrantyPeriodChangedEvent) then) =
      __$$_ProductWarrantyPeriodChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$_ProductWarrantyPeriodChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductWarrantyPeriodChangedEvent>
    implements _$$_ProductWarrantyPeriodChangedEventCopyWith<$Res> {
  __$$_ProductWarrantyPeriodChangedEventCopyWithImpl(
      _$_ProductWarrantyPeriodChangedEvent _value,
      $Res Function(_$_ProductWarrantyPeriodChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductWarrantyPeriodChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductWarrantyPeriodChangedEvent
    implements _ProductWarrantyPeriodChangedEvent {
  const _$_ProductWarrantyPeriodChangedEvent(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'ProductSyncEvent.warrantyPeriodChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductWarrantyPeriodChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductWarrantyPeriodChangedEventCopyWith<
          _$_ProductWarrantyPeriodChangedEvent>
      get copyWith => __$$_ProductWarrantyPeriodChangedEventCopyWithImpl<
          _$_ProductWarrantyPeriodChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return warrantyPeriodChanged?.call(this);
  }
}

abstract class _ProductWarrantyPeriodChangedEvent implements ProductSyncEvent {
  const factory _ProductWarrantyPeriodChangedEvent(final String? value) =
      _$_ProductWarrantyPeriodChangedEvent;

  String? get value;
  @JsonKey(ignore: true)
  _$$_ProductWarrantyPeriodChangedEventCopyWith<
          _$_ProductWarrantyPeriodChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductYearOfPurchaseChangedEventCopyWith<$Res> {
  factory _$$_ProductYearOfPurchaseChangedEventCopyWith(
          _$_ProductYearOfPurchaseChangedEvent value,
          $Res Function(_$_ProductYearOfPurchaseChangedEvent) then) =
      __$$_ProductYearOfPurchaseChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$_ProductYearOfPurchaseChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductYearOfPurchaseChangedEvent>
    implements _$$_ProductYearOfPurchaseChangedEventCopyWith<$Res> {
  __$$_ProductYearOfPurchaseChangedEventCopyWithImpl(
      _$_ProductYearOfPurchaseChangedEvent _value,
      $Res Function(_$_ProductYearOfPurchaseChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductYearOfPurchaseChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductYearOfPurchaseChangedEvent
    implements _ProductYearOfPurchaseChangedEvent {
  const _$_ProductYearOfPurchaseChangedEvent(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'ProductSyncEvent.yearOfPurchaseChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductYearOfPurchaseChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductYearOfPurchaseChangedEventCopyWith<
          _$_ProductYearOfPurchaseChangedEvent>
      get copyWith => __$$_ProductYearOfPurchaseChangedEventCopyWithImpl<
          _$_ProductYearOfPurchaseChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return yearOfPurchaseChanged?.call(this);
  }
}

abstract class _ProductYearOfPurchaseChangedEvent implements ProductSyncEvent {
  const factory _ProductYearOfPurchaseChangedEvent(final String? value) =
      _$_ProductYearOfPurchaseChangedEvent;

  String? get value;
  @JsonKey(ignore: true)
  _$$_ProductYearOfPurchaseChangedEventCopyWith<
          _$_ProductYearOfPurchaseChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductYearOfManufactureChangedEventCopyWith<$Res> {
  factory _$$_ProductYearOfManufactureChangedEventCopyWith(
          _$_ProductYearOfManufactureChangedEvent value,
          $Res Function(_$_ProductYearOfManufactureChangedEvent) then) =
      __$$_ProductYearOfManufactureChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$_ProductYearOfManufactureChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductYearOfManufactureChangedEvent>
    implements _$$_ProductYearOfManufactureChangedEventCopyWith<$Res> {
  __$$_ProductYearOfManufactureChangedEventCopyWithImpl(
      _$_ProductYearOfManufactureChangedEvent _value,
      $Res Function(_$_ProductYearOfManufactureChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductYearOfManufactureChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductYearOfManufactureChangedEvent
    implements _ProductYearOfManufactureChangedEvent {
  const _$_ProductYearOfManufactureChangedEvent(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'ProductSyncEvent.yearOfManufactureChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductYearOfManufactureChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductYearOfManufactureChangedEventCopyWith<
          _$_ProductYearOfManufactureChangedEvent>
      get copyWith => __$$_ProductYearOfManufactureChangedEventCopyWithImpl<
          _$_ProductYearOfManufactureChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return yearOfManufactureChanged?.call(this);
  }
}

abstract class _ProductYearOfManufactureChangedEvent
    implements ProductSyncEvent {
  const factory _ProductYearOfManufactureChangedEvent(final String? value) =
      _$_ProductYearOfManufactureChangedEvent;

  String? get value;
  @JsonKey(ignore: true)
  _$$_ProductYearOfManufactureChangedEventCopyWith<
          _$_ProductYearOfManufactureChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductRepairHistoryChangedEventCopyWith<$Res> {
  factory _$$_ProductRepairHistoryChangedEventCopyWith(
          _$_ProductRepairHistoryChangedEvent value,
          $Res Function(_$_ProductRepairHistoryChangedEvent) then) =
      __$$_ProductRepairHistoryChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? value});
}

/// @nodoc
class __$$_ProductRepairHistoryChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductRepairHistoryChangedEvent>
    implements _$$_ProductRepairHistoryChangedEventCopyWith<$Res> {
  __$$_ProductRepairHistoryChangedEventCopyWithImpl(
      _$_ProductRepairHistoryChangedEvent _value,
      $Res Function(_$_ProductRepairHistoryChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductRepairHistoryChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ProductRepairHistoryChangedEvent
    implements _ProductRepairHistoryChangedEvent {
  const _$_ProductRepairHistoryChangedEvent(this.value);

  @override
  final bool? value;

  @override
  String toString() {
    return 'ProductSyncEvent.repairHistoryChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRepairHistoryChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductRepairHistoryChangedEventCopyWith<
          _$_ProductRepairHistoryChangedEvent>
      get copyWith => __$$_ProductRepairHistoryChangedEventCopyWithImpl<
          _$_ProductRepairHistoryChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return repairHistoryChanged?.call(this);
  }
}

abstract class _ProductRepairHistoryChangedEvent implements ProductSyncEvent {
  const factory _ProductRepairHistoryChangedEvent(final bool? value) =
      _$_ProductRepairHistoryChangedEvent;

  bool? get value;
  @JsonKey(ignore: true)
  _$$_ProductRepairHistoryChangedEventCopyWith<
          _$_ProductRepairHistoryChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductRefundPolicyChangedEventCopyWith<$Res> {
  factory _$$_ProductRefundPolicyChangedEventCopyWith(
          _$_ProductRefundPolicyChangedEvent value,
          $Res Function(_$_ProductRefundPolicyChangedEvent) then) =
      __$$_ProductRefundPolicyChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? value});
}

/// @nodoc
class __$$_ProductRefundPolicyChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductRefundPolicyChangedEvent>
    implements _$$_ProductRefundPolicyChangedEventCopyWith<$Res> {
  __$$_ProductRefundPolicyChangedEventCopyWithImpl(
      _$_ProductRefundPolicyChangedEvent _value,
      $Res Function(_$_ProductRefundPolicyChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductRefundPolicyChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ProductRefundPolicyChangedEvent
    implements _ProductRefundPolicyChangedEvent {
  const _$_ProductRefundPolicyChangedEvent(this.value);

  @override
  final bool? value;

  @override
  String toString() {
    return 'ProductSyncEvent.refundPolicyChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRefundPolicyChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductRefundPolicyChangedEventCopyWith<
          _$_ProductRefundPolicyChangedEvent>
      get copyWith => __$$_ProductRefundPolicyChangedEventCopyWithImpl<
          _$_ProductRefundPolicyChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return refundPolicyChanged?.call(this);
  }
}

abstract class _ProductRefundPolicyChangedEvent implements ProductSyncEvent {
  const factory _ProductRefundPolicyChangedEvent(final bool? value) =
      _$_ProductRefundPolicyChangedEvent;

  bool? get value;
  @JsonKey(ignore: true)
  _$$_ProductRefundPolicyChangedEventCopyWith<
          _$_ProductRefundPolicyChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductTermsInfoChangedEventCopyWith<$Res> {
  factory _$$_ProductTermsInfoChangedEventCopyWith(
          _$_ProductTermsInfoChangedEvent value,
          $Res Function(_$_ProductTermsInfoChangedEvent) then) =
      __$$_ProductTermsInfoChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$_ProductTermsInfoChangedEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res,
        _$_ProductTermsInfoChangedEvent>
    implements _$$_ProductTermsInfoChangedEventCopyWith<$Res> {
  __$$_ProductTermsInfoChangedEventCopyWithImpl(
      _$_ProductTermsInfoChangedEvent _value,
      $Res Function(_$_ProductTermsInfoChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ProductTermsInfoChangedEvent(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductTermsInfoChangedEvent implements _ProductTermsInfoChangedEvent {
  const _$_ProductTermsInfoChangedEvent(this.value);

  @override
  final String? value;

  @override
  String toString() {
    return 'ProductSyncEvent.termsInfoChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTermsInfoChangedEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductTermsInfoChangedEventCopyWith<_$_ProductTermsInfoChangedEvent>
      get copyWith => __$$_ProductTermsInfoChangedEventCopyWithImpl<
          _$_ProductTermsInfoChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return termsInfoChanged?.call(this);
  }
}

abstract class _ProductTermsInfoChangedEvent implements ProductSyncEvent {
  const factory _ProductTermsInfoChangedEvent(final String? value) =
      _$_ProductTermsInfoChangedEvent;

  String? get value;
  @JsonKey(ignore: true)
  _$$_ProductTermsInfoChangedEventCopyWith<_$_ProductTermsInfoChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateFormFieldEventCopyWith<$Res> {
  factory _$$_ValidateFormFieldEventCopyWith(_$_ValidateFormFieldEvent value,
          $Res Function(_$_ValidateFormFieldEvent) then) =
      __$$_ValidateFormFieldEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext ctx, bool? validate, AwaitCallback? callback});
}

/// @nodoc
class __$$_ValidateFormFieldEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ValidateFormFieldEvent>
    implements _$$_ValidateFormFieldEventCopyWith<$Res> {
  __$$_ValidateFormFieldEventCopyWithImpl(_$_ValidateFormFieldEvent _value,
      $Res Function(_$_ValidateFormFieldEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ctx = null,
    Object? validate = freezed,
    Object? callback = freezed,
  }) {
    return _then(_$_ValidateFormFieldEvent(
      null == ctx
          ? _value.ctx
          : ctx // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool?,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as AwaitCallback?,
    ));
  }
}

/// @nodoc

class _$_ValidateFormFieldEvent implements _ValidateFormFieldEvent {
  const _$_ValidateFormFieldEvent(this.ctx, {this.validate, this.callback});

  @override
  final BuildContext ctx;
  @override
  final bool? validate;
  @override
  final AwaitCallback? callback;

  @override
  String toString() {
    return 'ProductSyncEvent.validate(ctx: $ctx, validate: $validate, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateFormFieldEvent &&
            (identical(other.ctx, ctx) || other.ctx == ctx) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ctx, validate, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateFormFieldEventCopyWith<_$_ValidateFormFieldEvent> get copyWith =>
      __$$_ValidateFormFieldEventCopyWithImpl<_$_ValidateFormFieldEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return validate?.call(this);
  }
}

abstract class _ValidateFormFieldEvent implements ProductSyncEvent {
  const factory _ValidateFormFieldEvent(final BuildContext ctx,
      {final bool? validate,
      final AwaitCallback? callback}) = _$_ValidateFormFieldEvent;

  BuildContext get ctx;
  bool? get validate;
  AwaitCallback? get callback;
  @JsonKey(ignore: true)
  _$$_ValidateFormFieldEventCopyWith<_$_ValidateFormFieldEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearFormFieldsEventCopyWith<$Res> {
  factory _$$_ClearFormFieldsEventCopyWith(_$_ClearFormFieldsEvent value,
          $Res Function(_$_ClearFormFieldsEvent) then) =
      __$$_ClearFormFieldsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearFormFieldsEventCopyWithImpl<$Res>
    extends _$ProductSyncEventCopyWithImpl<$Res, _$_ClearFormFieldsEvent>
    implements _$$_ClearFormFieldsEventCopyWith<$Res> {
  __$$_ClearFormFieldsEventCopyWithImpl(_$_ClearFormFieldsEvent _value,
      $Res Function(_$_ClearFormFieldsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearFormFieldsEvent implements _ClearFormFieldsEvent {
  const _$_ClearFormFieldsEvent();

  @override
  String toString() {
    return 'ProductSyncEvent.clearForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearFormFieldsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeProductBlocEvent value)? init,
    TResult? Function(_CategoryChangedEvent value)? categoryChanged,
    TResult? Function(_CountryChangedEvent value)? countryChanged,
    TResult? Function(_DealPlanChangedEvent value)? dealPlanChanged,
    TResult? Function(_DealTypeChangedEvent value)? dealTypeChanged,
    TResult? Function(_ProductNameChangedEvent value)? itemNameChanged,
    TResult? Function(_ProductStateChangedEvent value)? stateChanged,
    TResult? Function(_ProductTownChangedEvent value)? townChanged,
    TResult? Function(_ProductTagSelectedEvent value)? onTagSelected,
    TResult? Function(_ProductDescriptionChangedEvent value)?
        itemDescriptionChanged,
    TResult? Function(_ProductBrandChangedEvent value)? brandChanged,
    TResult? Function(_ProductBrandModelChangedEvent value)? brandModelChanged,
    TResult? Function(_ProductTransmissionChangedEvent value)?
        transmissionChanged,
    TResult? Function(_ProductWeightChangedEvent value)? weightChanged,
    TResult? Function(_ProductBasePriceChangedEvent value)? basePriceChanged,
    TResult? Function(_ProductReservedPriceChangedEvent value)?
        reservedPriceChanged,
    TResult? Function(_ProductLengthChangedEvent value)? lengthChanged,
    TResult? Function(_ProductWidthChangedEvent value)? widthChanged,
    TResult? Function(_ProductHeightChangedEvent value)? heightChanged,
    TResult? Function(_ProductDeliveryModeChangedEvent value)?
        deliveryModeChanged,
    TResult? Function(_ProductShippingDescChangedEvent value)?
        shippingDescChanged,
    TResult? Function(_ProductConditionChangedEvent value)? conditionChanged,
    TResult? Function(_DealQuantityTypeChangedEvent value)? quantityTypeChanged,
    TResult? Function(_DealItemQuantityChangedEvent value)? itemQuantityChanged,
    TResult? Function(_DealBiddingTypeChangedEvent value)? biddingTypeChanged,
    TResult? Function(_DealOfferTypeChangedEvent value)? offerTypeChanged,
    TResult? Function(_DealStartDateChangedEvent value)? startDateChanged,
    TResult? Function(_DealEndDateChangedEvent value)? endDateChanged,
    TResult? Function(_DealOfflineAddressChangedEvent value)?
        offlineAddressChanged,
    TResult? Function(_ProductColorChangedEvent value)? colorChanged,
    TResult? Function(_ProductDeliveryPeriodChangedEvent value)?
        deliveryPeriodChanged,
    TResult? Function(_ProductRegionSelectedEvent value)? onRegionSelected,
    TResult? Function(_ProductWarrantyPeriodChangedEvent value)?
        warrantyPeriodChanged,
    TResult? Function(_ProductYearOfPurchaseChangedEvent value)?
        yearOfPurchaseChanged,
    TResult? Function(_ProductYearOfManufactureChangedEvent value)?
        yearOfManufactureChanged,
    TResult? Function(_ProductRepairHistoryChangedEvent value)?
        repairHistoryChanged,
    TResult? Function(_ProductRefundPolicyChangedEvent value)?
        refundPolicyChanged,
    TResult? Function(_ProductTermsInfoChangedEvent value)? termsInfoChanged,
    TResult? Function(_ValidateFormFieldEvent value)? validate,
    TResult? Function(_ClearFormFieldsEvent value)? clearForm,
  }) {
    return clearForm?.call(this);
  }
}

abstract class _ClearFormFieldsEvent implements ProductSyncEvent {
  const factory _ClearFormFieldsEvent() = _$_ClearFormFieldsEvent;
}

/// @nodoc
mixin _$ProductDebounceEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductTypingTagEvent value) onTypingTag,
    required TResult Function(_ProductTypingRegionEvent value) onTypingRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductTypingTagEvent value)? onTypingTag,
    TResult? Function(_ProductTypingRegionEvent value)? onTypingRegion,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDebounceEventCopyWith<$Res> {
  factory $ProductDebounceEventCopyWith(ProductDebounceEvent value,
          $Res Function(ProductDebounceEvent) then) =
      _$ProductDebounceEventCopyWithImpl<$Res, ProductDebounceEvent>;
}

/// @nodoc
class _$ProductDebounceEventCopyWithImpl<$Res,
        $Val extends ProductDebounceEvent>
    implements $ProductDebounceEventCopyWith<$Res> {
  _$ProductDebounceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProductTypingTagEventCopyWith<$Res> {
  factory _$$_ProductTypingTagEventCopyWith(_$_ProductTypingTagEvent value,
          $Res Function(_$_ProductTypingTagEvent) then) =
      __$$_ProductTypingTagEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductTypingTagEventCopyWithImpl<$Res>
    extends _$ProductDebounceEventCopyWithImpl<$Res, _$_ProductTypingTagEvent>
    implements _$$_ProductTypingTagEventCopyWith<$Res> {
  __$$_ProductTypingTagEventCopyWithImpl(_$_ProductTypingTagEvent _value,
      $Res Function(_$_ProductTypingTagEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductTypingTagEvent implements _ProductTypingTagEvent {
  const _$_ProductTypingTagEvent();

  @override
  String toString() {
    return 'ProductDebounceEvent.onTypingTag()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductTypingTagEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductTypingTagEvent value) onTypingTag,
    required TResult Function(_ProductTypingRegionEvent value) onTypingRegion,
  }) {
    return onTypingTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductTypingTagEvent value)? onTypingTag,
    TResult? Function(_ProductTypingRegionEvent value)? onTypingRegion,
  }) {
    return onTypingTag?.call(this);
  }
}

abstract class _ProductTypingTagEvent implements ProductDebounceEvent {
  const factory _ProductTypingTagEvent() = _$_ProductTypingTagEvent;
}

/// @nodoc
abstract class _$$_ProductTypingRegionEventCopyWith<$Res> {
  factory _$$_ProductTypingRegionEventCopyWith(
          _$_ProductTypingRegionEvent value,
          $Res Function(_$_ProductTypingRegionEvent) then) =
      __$$_ProductTypingRegionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductTypingRegionEventCopyWithImpl<$Res>
    extends _$ProductDebounceEventCopyWithImpl<$Res,
        _$_ProductTypingRegionEvent>
    implements _$$_ProductTypingRegionEventCopyWith<$Res> {
  __$$_ProductTypingRegionEventCopyWithImpl(_$_ProductTypingRegionEvent _value,
      $Res Function(_$_ProductTypingRegionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductTypingRegionEvent implements _ProductTypingRegionEvent {
  const _$_ProductTypingRegionEvent();

  @override
  String toString() {
    return 'ProductDebounceEvent.onTypingRegion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductTypingRegionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductTypingTagEvent value) onTypingTag,
    required TResult Function(_ProductTypingRegionEvent value) onTypingRegion,
  }) {
    return onTypingRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductTypingTagEvent value)? onTypingTag,
    TResult? Function(_ProductTypingRegionEvent value)? onTypingRegion,
  }) {
    return onTypingRegion?.call(this);
  }
}

abstract class _ProductTypingRegionEvent implements ProductDebounceEvent {
  const factory _ProductTypingRegionEvent() = _$_ProductTypingRegionEvent;
}

/// @nodoc
mixin _$ProductStructEvent {
  User? get user => throw _privateConstructorUsedError;
  AwaitCallback? get callback => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreNewProductEvent value) store,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreNewProductEvent value)? store,
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStructEventCopyWith<ProductStructEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStructEventCopyWith<$Res> {
  factory $ProductStructEventCopyWith(
          ProductStructEvent value, $Res Function(ProductStructEvent) then) =
      _$ProductStructEventCopyWithImpl<$Res, ProductStructEvent>;
  @useResult
  $Res call({User? user, AwaitCallback? callback});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProductStructEventCopyWithImpl<$Res, $Val extends ProductStructEvent>
    implements $ProductStructEventCopyWith<$Res> {
  _$ProductStructEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? callback = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as AwaitCallback?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoreNewProductEventCopyWith<$Res>
    implements $ProductStructEventCopyWith<$Res> {
  factory _$$_StoreNewProductEventCopyWith(_$_StoreNewProductEvent value,
          $Res Function(_$_StoreNewProductEvent) then) =
      __$$_StoreNewProductEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, AwaitCallback? callback});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_StoreNewProductEventCopyWithImpl<$Res>
    extends _$ProductStructEventCopyWithImpl<$Res, _$_StoreNewProductEvent>
    implements _$$_StoreNewProductEventCopyWith<$Res> {
  __$$_StoreNewProductEventCopyWithImpl(_$_StoreNewProductEvent _value,
      $Res Function(_$_StoreNewProductEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? callback = freezed,
  }) {
    return _then(_$_StoreNewProductEvent(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as AwaitCallback?,
    ));
  }
}

/// @nodoc

class _$_StoreNewProductEvent implements _StoreNewProductEvent {
  const _$_StoreNewProductEvent(this.user, {this.callback});

  @override
  final User? user;
  @override
  final AwaitCallback? callback;

  @override
  String toString() {
    return 'ProductStructEvent.store(user: $user, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreNewProductEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreNewProductEventCopyWith<_$_StoreNewProductEvent> get copyWith =>
      __$$_StoreNewProductEventCopyWithImpl<_$_StoreNewProductEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoreNewProductEvent value) store,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoreNewProductEvent value)? store,
  }) {
    return store?.call(this);
  }
}

abstract class _StoreNewProductEvent implements ProductStructEvent {
  const factory _StoreNewProductEvent(final User? user,
      {final AwaitCallback? callback}) = _$_StoreNewProductEvent;

  @override
  User? get user;
  @override
  AwaitCallback? get callback;
  @override
  @JsonKey(ignore: true)
  _$$_StoreNewProductEventCopyWith<_$_StoreNewProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductGetEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoriesEvent value) categories,
    required TResult Function(_GetDealPlansEvent value) getDealPlans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoriesEvent value)? categories,
    TResult? Function(_GetDealPlansEvent value)? getDealPlans,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductGetEventCopyWith<$Res> {
  factory $ProductGetEventCopyWith(
          ProductGetEvent value, $Res Function(ProductGetEvent) then) =
      _$ProductGetEventCopyWithImpl<$Res, ProductGetEvent>;
}

/// @nodoc
class _$ProductGetEventCopyWithImpl<$Res, $Val extends ProductGetEvent>
    implements $ProductGetEventCopyWith<$Res> {
  _$ProductGetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCategoriesEventCopyWith<$Res> {
  factory _$$_GetCategoriesEventCopyWith(_$_GetCategoriesEvent value,
          $Res Function(_$_GetCategoriesEvent) then) =
      __$$_GetCategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCategoriesEventCopyWithImpl<$Res>
    extends _$ProductGetEventCopyWithImpl<$Res, _$_GetCategoriesEvent>
    implements _$$_GetCategoriesEventCopyWith<$Res> {
  __$$_GetCategoriesEventCopyWithImpl(
      _$_GetCategoriesEvent _value, $Res Function(_$_GetCategoriesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCategoriesEvent implements _GetCategoriesEvent {
  const _$_GetCategoriesEvent();

  @override
  String toString() {
    return 'ProductGetEvent.categories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoriesEvent value) categories,
    required TResult Function(_GetDealPlansEvent value) getDealPlans,
  }) {
    return categories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoriesEvent value)? categories,
    TResult? Function(_GetDealPlansEvent value)? getDealPlans,
  }) {
    return categories?.call(this);
  }
}

abstract class _GetCategoriesEvent implements ProductGetEvent {
  const factory _GetCategoriesEvent() = _$_GetCategoriesEvent;
}

/// @nodoc
abstract class _$$_GetDealPlansEventCopyWith<$Res> {
  factory _$$_GetDealPlansEventCopyWith(_$_GetDealPlansEvent value,
          $Res Function(_$_GetDealPlansEvent) then) =
      __$$_GetDealPlansEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int? perPage, bool nextPage});
}

/// @nodoc
class __$$_GetDealPlansEventCopyWithImpl<$Res>
    extends _$ProductGetEventCopyWithImpl<$Res, _$_GetDealPlansEvent>
    implements _$$_GetDealPlansEventCopyWith<$Res> {
  __$$_GetDealPlansEventCopyWithImpl(
      _$_GetDealPlansEvent _value, $Res Function(_$_GetDealPlansEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = freezed,
    Object? nextPage = null,
  }) {
    return _then(_$_GetDealPlansEvent(
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetDealPlansEvent implements _GetDealPlansEvent {
  const _$_GetDealPlansEvent({this.perPage, this.nextPage = false});

  @override
  final int? perPage;
  @override
  @JsonKey()
  final bool nextPage;

  @override
  String toString() {
    return 'ProductGetEvent.getDealPlans(perPage: $perPage, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDealPlansEvent &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, perPage, nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDealPlansEventCopyWith<_$_GetDealPlansEvent> get copyWith =>
      __$$_GetDealPlansEventCopyWithImpl<_$_GetDealPlansEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoriesEvent value) categories,
    required TResult Function(_GetDealPlansEvent value) getDealPlans,
  }) {
    return getDealPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoriesEvent value)? categories,
    TResult? Function(_GetDealPlansEvent value)? getDealPlans,
  }) {
    return getDealPlans?.call(this);
  }
}

abstract class _GetDealPlansEvent implements ProductGetEvent {
  const factory _GetDealPlansEvent({final int? perPage, final bool nextPage}) =
      _$_GetDealPlansEvent;

  int? get perPage;
  bool get nextPage;
  @JsonKey(ignore: true)
  _$$_GetDealPlansEventCopyWith<_$_GetDealPlansEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductPageControllerEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_PageIndexChangedEvent value) indexChanged,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
    required TResult Function(_OnAnimateToPage value) animateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttachPageControllerListener value)? attachListener,
    TResult? Function(_PageIndexChangedEvent value)? indexChanged,
    TResult? Function(_OnNextPage value)? next,
    TResult? Function(_OnPreviousPage value)? prev,
    TResult? Function(_OnAnimateToPage value)? animateTo,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageControllerEventCopyWith<$Res> {
  factory $ProductPageControllerEventCopyWith(ProductPageControllerEvent value,
          $Res Function(ProductPageControllerEvent) then) =
      _$ProductPageControllerEventCopyWithImpl<$Res,
          ProductPageControllerEvent>;
}

/// @nodoc
class _$ProductPageControllerEventCopyWithImpl<$Res,
        $Val extends ProductPageControllerEvent>
    implements $ProductPageControllerEventCopyWith<$Res> {
  _$ProductPageControllerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AttachPageControllerListenerCopyWith<$Res> {
  factory _$$_AttachPageControllerListenerCopyWith(
          _$_AttachPageControllerListener value,
          $Res Function(_$_AttachPageControllerListener) then) =
      __$$_AttachPageControllerListenerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AttachPageControllerListenerCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res,
        _$_AttachPageControllerListener>
    implements _$$_AttachPageControllerListenerCopyWith<$Res> {
  __$$_AttachPageControllerListenerCopyWithImpl(
      _$_AttachPageControllerListener _value,
      $Res Function(_$_AttachPageControllerListener) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AttachPageControllerListener implements _AttachPageControllerListener {
  const _$_AttachPageControllerListener();

  @override
  String toString() {
    return 'ProductPageControllerEvent.attachListener()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachPageControllerListener);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_PageIndexChangedEvent value) indexChanged,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
    required TResult Function(_OnAnimateToPage value) animateTo,
  }) {
    return attachListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttachPageControllerListener value)? attachListener,
    TResult? Function(_PageIndexChangedEvent value)? indexChanged,
    TResult? Function(_OnNextPage value)? next,
    TResult? Function(_OnPreviousPage value)? prev,
    TResult? Function(_OnAnimateToPage value)? animateTo,
  }) {
    return attachListener?.call(this);
  }
}

abstract class _AttachPageControllerListener
    implements ProductPageControllerEvent {
  const factory _AttachPageControllerListener() =
      _$_AttachPageControllerListener;
}

/// @nodoc
abstract class _$$_PageIndexChangedEventCopyWith<$Res> {
  factory _$$_PageIndexChangedEventCopyWith(_$_PageIndexChangedEvent value,
          $Res Function(_$_PageIndexChangedEvent) then) =
      __$$_PageIndexChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_PageIndexChangedEventCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res,
        _$_PageIndexChangedEvent>
    implements _$$_PageIndexChangedEventCopyWith<$Res> {
  __$$_PageIndexChangedEventCopyWithImpl(_$_PageIndexChangedEvent _value,
      $Res Function(_$_PageIndexChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_PageIndexChangedEvent(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageIndexChangedEvent implements _PageIndexChangedEvent {
  const _$_PageIndexChangedEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ProductPageControllerEvent.indexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageIndexChangedEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageIndexChangedEventCopyWith<_$_PageIndexChangedEvent> get copyWith =>
      __$$_PageIndexChangedEventCopyWithImpl<_$_PageIndexChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_PageIndexChangedEvent value) indexChanged,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
    required TResult Function(_OnAnimateToPage value) animateTo,
  }) {
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttachPageControllerListener value)? attachListener,
    TResult? Function(_PageIndexChangedEvent value)? indexChanged,
    TResult? Function(_OnNextPage value)? next,
    TResult? Function(_OnPreviousPage value)? prev,
    TResult? Function(_OnAnimateToPage value)? animateTo,
  }) {
    return indexChanged?.call(this);
  }
}

abstract class _PageIndexChangedEvent implements ProductPageControllerEvent {
  const factory _PageIndexChangedEvent(final int index) =
      _$_PageIndexChangedEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$_PageIndexChangedEventCopyWith<_$_PageIndexChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnNextPageCopyWith<$Res> {
  factory _$$_OnNextPageCopyWith(
          _$_OnNextPage value, $Res Function(_$_OnNextPage) then) =
      __$$_OnNextPageCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> items, int index});
}

/// @nodoc
class __$$_OnNextPageCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res, _$_OnNextPage>
    implements _$$_OnNextPageCopyWith<$Res> {
  __$$_OnNextPageCopyWithImpl(
      _$_OnNextPage _value, $Res Function(_$_OnNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? index = null,
  }) {
    return _then(_$_OnNextPage(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnNextPage implements _OnNextPage {
  const _$_OnNextPage(final List<dynamic> items, this.index) : _items = items;

  final List<dynamic> _items;
  @override
  List<dynamic> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'ProductPageControllerEvent.next(items: $items, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnNextPage &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnNextPageCopyWith<_$_OnNextPage> get copyWith =>
      __$$_OnNextPageCopyWithImpl<_$_OnNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_PageIndexChangedEvent value) indexChanged,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
    required TResult Function(_OnAnimateToPage value) animateTo,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttachPageControllerListener value)? attachListener,
    TResult? Function(_PageIndexChangedEvent value)? indexChanged,
    TResult? Function(_OnNextPage value)? next,
    TResult? Function(_OnPreviousPage value)? prev,
    TResult? Function(_OnAnimateToPage value)? animateTo,
  }) {
    return next?.call(this);
  }
}

abstract class _OnNextPage implements ProductPageControllerEvent {
  const factory _OnNextPage(final List<dynamic> items, final int index) =
      _$_OnNextPage;

  List<dynamic> get items;
  int get index;
  @JsonKey(ignore: true)
  _$$_OnNextPageCopyWith<_$_OnNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPreviousPageCopyWith<$Res> {
  factory _$$_OnPreviousPageCopyWith(
          _$_OnPreviousPage value, $Res Function(_$_OnPreviousPage) then) =
      __$$_OnPreviousPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnPreviousPageCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res, _$_OnPreviousPage>
    implements _$$_OnPreviousPageCopyWith<$Res> {
  __$$_OnPreviousPageCopyWithImpl(
      _$_OnPreviousPage _value, $Res Function(_$_OnPreviousPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnPreviousPage implements _OnPreviousPage {
  const _$_OnPreviousPage();

  @override
  String toString() {
    return 'ProductPageControllerEvent.prev()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnPreviousPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_PageIndexChangedEvent value) indexChanged,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
    required TResult Function(_OnAnimateToPage value) animateTo,
  }) {
    return prev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttachPageControllerListener value)? attachListener,
    TResult? Function(_PageIndexChangedEvent value)? indexChanged,
    TResult? Function(_OnNextPage value)? next,
    TResult? Function(_OnPreviousPage value)? prev,
    TResult? Function(_OnAnimateToPage value)? animateTo,
  }) {
    return prev?.call(this);
  }
}

abstract class _OnPreviousPage implements ProductPageControllerEvent {
  const factory _OnPreviousPage() = _$_OnPreviousPage;
}

/// @nodoc
abstract class _$$_OnAnimateToPageCopyWith<$Res> {
  factory _$$_OnAnimateToPageCopyWith(
          _$_OnAnimateToPage value, $Res Function(_$_OnAnimateToPage) then) =
      __$$_OnAnimateToPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, Duration? duration, Curve? curve});
}

/// @nodoc
class __$$_OnAnimateToPageCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res, _$_OnAnimateToPage>
    implements _$$_OnAnimateToPageCopyWith<$Res> {
  __$$_OnAnimateToPageCopyWithImpl(
      _$_OnAnimateToPage _value, $Res Function(_$_OnAnimateToPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? duration = freezed,
    Object? curve = freezed,
  }) {
    return _then(_$_OnAnimateToPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: freezed == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve?,
    ));
  }
}

/// @nodoc

class _$_OnAnimateToPage implements _OnAnimateToPage {
  const _$_OnAnimateToPage(this.page, {this.duration, this.curve});

  @override
  final int page;
  @override
  final Duration? duration;
  @override
  final Curve? curve;

  @override
  String toString() {
    return 'ProductPageControllerEvent.animateTo(page: $page, duration: $duration, curve: $curve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnAnimateToPage &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, duration, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnAnimateToPageCopyWith<_$_OnAnimateToPage> get copyWith =>
      __$$_OnAnimateToPageCopyWithImpl<_$_OnAnimateToPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_PageIndexChangedEvent value) indexChanged,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
    required TResult Function(_OnAnimateToPage value) animateTo,
  }) {
    return animateTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttachPageControllerListener value)? attachListener,
    TResult? Function(_PageIndexChangedEvent value)? indexChanged,
    TResult? Function(_OnNextPage value)? next,
    TResult? Function(_OnPreviousPage value)? prev,
    TResult? Function(_OnAnimateToPage value)? animateTo,
  }) {
    return animateTo?.call(this);
  }
}

abstract class _OnAnimateToPage implements ProductPageControllerEvent {
  const factory _OnAnimateToPage(final int page,
      {final Duration? duration, final Curve? curve}) = _$_OnAnimateToPage;

  int get page;
  Duration? get duration;
  Curve? get curve;
  @JsonKey(ignore: true)
  _$$_OnAnimateToPageCopyWith<_$_OnAnimateToPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductMediaEvents {
  int? get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_PickCameraEvent value) pickCamera,
    required TResult Function(_PickGalleryEvent value) pickGallery,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadMediaEvent value)? uploadMedia,
    TResult? Function(_PickCameraEvent value)? pickCamera,
    TResult? Function(_PickGalleryEvent value)? pickGallery,
    TResult? Function(_RemoveMediaEvent value)? removeMedia,
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductMediaEventsCopyWith<ProductMediaEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMediaEventsCopyWith<$Res> {
  factory $ProductMediaEventsCopyWith(
          ProductMediaEvents value, $Res Function(ProductMediaEvents) then) =
      _$ProductMediaEventsCopyWithImpl<$Res, ProductMediaEvents>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class _$ProductMediaEventsCopyWithImpl<$Res, $Val extends ProductMediaEvents>
    implements $ProductMediaEventsCopyWith<$Res> {
  _$ProductMediaEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadMediaEventCopyWith<$Res>
    implements $ProductMediaEventsCopyWith<$Res> {
  factory _$$_UploadMediaEventCopyWith(
          _$_UploadMediaEvent value, $Res Function(_$_UploadMediaEvent) then) =
      __$$_UploadMediaEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File file, int? index});
}

/// @nodoc
class __$$_UploadMediaEventCopyWithImpl<$Res>
    extends _$ProductMediaEventsCopyWithImpl<$Res, _$_UploadMediaEvent>
    implements _$$_UploadMediaEventCopyWith<$Res> {
  __$$_UploadMediaEventCopyWithImpl(
      _$_UploadMediaEvent _value, $Res Function(_$_UploadMediaEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? index = freezed,
  }) {
    return _then(_$_UploadMediaEvent(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@protected
class _$_UploadMediaEvent implements _UploadMediaEvent {
  const _$_UploadMediaEvent(this.file, [this.index]);

  @override
  final File file;
  @override
  final int? index;

  @override
  String toString() {
    return 'ProductMediaEvents.uploadMedia(file: $file, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadMediaEvent &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadMediaEventCopyWith<_$_UploadMediaEvent> get copyWith =>
      __$$_UploadMediaEventCopyWithImpl<_$_UploadMediaEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_PickCameraEvent value) pickCamera,
    required TResult Function(_PickGalleryEvent value) pickGallery,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
  }) {
    return uploadMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadMediaEvent value)? uploadMedia,
    TResult? Function(_PickCameraEvent value)? pickCamera,
    TResult? Function(_PickGalleryEvent value)? pickGallery,
    TResult? Function(_RemoveMediaEvent value)? removeMedia,
  }) {
    return uploadMedia?.call(this);
  }
}

abstract class _UploadMediaEvent implements ProductMediaEvents {
  const factory _UploadMediaEvent(final File file, [final int? index]) =
      _$_UploadMediaEvent;

  File get file;
  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$_UploadMediaEventCopyWith<_$_UploadMediaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickCameraEventCopyWith<$Res>
    implements $ProductMediaEventsCopyWith<$Res> {
  factory _$$_PickCameraEventCopyWith(
          _$_PickCameraEvent value, $Res Function(_$_PickCameraEvent) then) =
      __$$_PickCameraEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$_PickCameraEventCopyWithImpl<$Res>
    extends _$ProductMediaEventsCopyWithImpl<$Res, _$_PickCameraEvent>
    implements _$$_PickCameraEventCopyWith<$Res> {
  __$$_PickCameraEventCopyWithImpl(
      _$_PickCameraEvent _value, $Res Function(_$_PickCameraEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_PickCameraEvent(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PickCameraEvent implements _PickCameraEvent {
  const _$_PickCameraEvent([this.index]);

  @override
  final int? index;

  @override
  String toString() {
    return 'ProductMediaEvents.pickCamera(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickCameraEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickCameraEventCopyWith<_$_PickCameraEvent> get copyWith =>
      __$$_PickCameraEventCopyWithImpl<_$_PickCameraEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_PickCameraEvent value) pickCamera,
    required TResult Function(_PickGalleryEvent value) pickGallery,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
  }) {
    return pickCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadMediaEvent value)? uploadMedia,
    TResult? Function(_PickCameraEvent value)? pickCamera,
    TResult? Function(_PickGalleryEvent value)? pickGallery,
    TResult? Function(_RemoveMediaEvent value)? removeMedia,
  }) {
    return pickCamera?.call(this);
  }
}

abstract class _PickCameraEvent implements ProductMediaEvents {
  const factory _PickCameraEvent([final int? index]) = _$_PickCameraEvent;

  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$_PickCameraEventCopyWith<_$_PickCameraEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickGalleryEventCopyWith<$Res>
    implements $ProductMediaEventsCopyWith<$Res> {
  factory _$$_PickGalleryEventCopyWith(
          _$_PickGalleryEvent value, $Res Function(_$_PickGalleryEvent) then) =
      __$$_PickGalleryEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$_PickGalleryEventCopyWithImpl<$Res>
    extends _$ProductMediaEventsCopyWithImpl<$Res, _$_PickGalleryEvent>
    implements _$$_PickGalleryEventCopyWith<$Res> {
  __$$_PickGalleryEventCopyWithImpl(
      _$_PickGalleryEvent _value, $Res Function(_$_PickGalleryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_PickGalleryEvent(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PickGalleryEvent implements _PickGalleryEvent {
  const _$_PickGalleryEvent([this.index]);

  @override
  final int? index;

  @override
  String toString() {
    return 'ProductMediaEvents.pickGallery(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickGalleryEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickGalleryEventCopyWith<_$_PickGalleryEvent> get copyWith =>
      __$$_PickGalleryEventCopyWithImpl<_$_PickGalleryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_PickCameraEvent value) pickCamera,
    required TResult Function(_PickGalleryEvent value) pickGallery,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
  }) {
    return pickGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadMediaEvent value)? uploadMedia,
    TResult? Function(_PickCameraEvent value)? pickCamera,
    TResult? Function(_PickGalleryEvent value)? pickGallery,
    TResult? Function(_RemoveMediaEvent value)? removeMedia,
  }) {
    return pickGallery?.call(this);
  }
}

abstract class _PickGalleryEvent implements ProductMediaEvents {
  const factory _PickGalleryEvent([final int? index]) = _$_PickGalleryEvent;

  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$_PickGalleryEventCopyWith<_$_PickGalleryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveMediaEventCopyWith<$Res>
    implements $ProductMediaEventsCopyWith<$Res> {
  factory _$$_RemoveMediaEventCopyWith(
          _$_RemoveMediaEvent value, $Res Function(_$_RemoveMediaEvent) then) =
      __$$_RemoveMediaEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$_RemoveMediaEventCopyWithImpl<$Res>
    extends _$ProductMediaEventsCopyWithImpl<$Res, _$_RemoveMediaEvent>
    implements _$$_RemoveMediaEventCopyWith<$Res> {
  __$$_RemoveMediaEventCopyWithImpl(
      _$_RemoveMediaEvent _value, $Res Function(_$_RemoveMediaEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_RemoveMediaEvent(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RemoveMediaEvent implements _RemoveMediaEvent {
  const _$_RemoveMediaEvent([this.index]);

  @override
  final int? index;

  @override
  String toString() {
    return 'ProductMediaEvents.removeMedia(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveMediaEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveMediaEventCopyWith<_$_RemoveMediaEvent> get copyWith =>
      __$$_RemoveMediaEventCopyWithImpl<_$_RemoveMediaEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadMediaEvent value) uploadMedia,
    required TResult Function(_PickCameraEvent value) pickCamera,
    required TResult Function(_PickGalleryEvent value) pickGallery,
    required TResult Function(_RemoveMediaEvent value) removeMedia,
  }) {
    return removeMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadMediaEvent value)? uploadMedia,
    TResult? Function(_PickCameraEvent value)? pickCamera,
    TResult? Function(_PickGalleryEvent value)? pickGallery,
    TResult? Function(_RemoveMediaEvent value)? removeMedia,
  }) {
    return removeMedia?.call(this);
  }
}

abstract class _RemoveMediaEvent implements ProductMediaEvents {
  const factory _RemoveMediaEvent([final int? index]) = _$_RemoveMediaEvent;

  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveMediaEventCopyWith<_$_RemoveMediaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate =>
      throw _privateConstructorUsedError; // @Default(false) bool hasErrors,
  bool get isFetchingCategories => throw _privateConstructorUsedError;
  bool get isSavingState => throw _privateConstructorUsedError;
  bool get isCreatingProduct => throw _privateConstructorUsedError;
  bool get productCreated => throw _privateConstructorUsedError;
  @visibleForTesting
  @protected
  bool get controllerHasClients => throw _privateConstructorUsedError; //
  bool get isSearching => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  SearchModel get model => throw _privateConstructorUsedError; //
  MoneyMaskedTextController get basePriceController =>
      throw _privateConstructorUsedError;
  MoneyMaskedTextController get reservedPriceController =>
      throw _privateConstructorUsedError;
  TextEditingController get itemNameTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get stateTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get townTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get descriptionTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get brandTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get brandModelTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get transmissionTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get shippingDescTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get addressTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get weightTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get widthTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get heightTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get lengthTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get termsInfoTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get startDateTextController =>
      throw _privateConstructorUsedError;
  TextEditingController get endDateTextController =>
      throw _privateConstructorUsedError;
  TagsEditingController get tagsEditingController =>
      throw _privateConstructorUsedError;
  TagsEditingController get regionsEditingController =>
      throw _privateConstructorUsedError; //
  Deal? get createdDeal => throw _privateConstructorUsedError;
  DealPlan get selectedPlan => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  PageController? get controller => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  KtList<DealCategory> get categories => throw _privateConstructorUsedError;
  KtList<DealPlan> get dealPlans => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool validate,
      bool isFetchingCategories,
      bool isSavingState,
      bool isCreatingProduct,
      bool productCreated,
      @visibleForTesting @protected bool controllerHasClients,
      bool isSearching,
      String? searchQuery,
      SearchModel model,
      MoneyMaskedTextController basePriceController,
      MoneyMaskedTextController reservedPriceController,
      TextEditingController itemNameTextController,
      TextEditingController stateTextController,
      TextEditingController townTextController,
      TextEditingController descriptionTextController,
      TextEditingController brandTextController,
      TextEditingController brandModelTextController,
      TextEditingController transmissionTextController,
      TextEditingController shippingDescTextController,
      TextEditingController addressTextController,
      TextEditingController weightTextController,
      TextEditingController widthTextController,
      TextEditingController heightTextController,
      TextEditingController lengthTextController,
      TextEditingController termsInfoTextController,
      TextEditingController startDateTextController,
      TextEditingController endDateTextController,
      TagsEditingController tagsEditingController,
      TagsEditingController regionsEditingController,
      Deal? createdDeal,
      DealPlan selectedPlan,
      Product product,
      PageController? controller,
      int currentIndex,
      KtList<DealCategory> categories,
      KtList<DealPlan> dealPlans,
      Option<AppHttpResponse?> status});

  $DealCopyWith<$Res>? get createdDeal;
  $DealPlanCopyWith<$Res> get selectedPlan;
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? validate = null,
    Object? isFetchingCategories = null,
    Object? isSavingState = null,
    Object? isCreatingProduct = null,
    Object? productCreated = null,
    Object? controllerHasClients = null,
    Object? isSearching = null,
    Object? searchQuery = freezed,
    Object? model = null,
    Object? basePriceController = null,
    Object? reservedPriceController = null,
    Object? itemNameTextController = null,
    Object? stateTextController = null,
    Object? townTextController = null,
    Object? descriptionTextController = null,
    Object? brandTextController = null,
    Object? brandModelTextController = null,
    Object? transmissionTextController = null,
    Object? shippingDescTextController = null,
    Object? addressTextController = null,
    Object? weightTextController = null,
    Object? widthTextController = null,
    Object? heightTextController = null,
    Object? lengthTextController = null,
    Object? termsInfoTextController = null,
    Object? startDateTextController = null,
    Object? endDateTextController = null,
    Object? tagsEditingController = null,
    Object? regionsEditingController = null,
    Object? createdDeal = freezed,
    Object? selectedPlan = null,
    Object? product = null,
    Object? controller = freezed,
    Object? currentIndex = null,
    Object? categories = null,
    Object? dealPlans = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingCategories: null == isFetchingCategories
          ? _value.isFetchingCategories
          : isFetchingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isSavingState: null == isSavingState
          ? _value.isSavingState
          : isSavingState // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreatingProduct: null == isCreatingProduct
          ? _value.isCreatingProduct
          : isCreatingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productCreated: null == productCreated
          ? _value.productCreated
          : productCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      controllerHasClients: null == controllerHasClients
          ? _value.controllerHasClients
          : controllerHasClients // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      basePriceController: null == basePriceController
          ? _value.basePriceController
          : basePriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      reservedPriceController: null == reservedPriceController
          ? _value.reservedPriceController
          : reservedPriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      itemNameTextController: null == itemNameTextController
          ? _value.itemNameTextController
          : itemNameTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      stateTextController: null == stateTextController
          ? _value.stateTextController
          : stateTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      townTextController: null == townTextController
          ? _value.townTextController
          : townTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionTextController: null == descriptionTextController
          ? _value.descriptionTextController
          : descriptionTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      brandTextController: null == brandTextController
          ? _value.brandTextController
          : brandTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      brandModelTextController: null == brandModelTextController
          ? _value.brandModelTextController
          : brandModelTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      transmissionTextController: null == transmissionTextController
          ? _value.transmissionTextController
          : transmissionTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      shippingDescTextController: null == shippingDescTextController
          ? _value.shippingDescTextController
          : shippingDescTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      addressTextController: null == addressTextController
          ? _value.addressTextController
          : addressTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      weightTextController: null == weightTextController
          ? _value.weightTextController
          : weightTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      widthTextController: null == widthTextController
          ? _value.widthTextController
          : widthTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      heightTextController: null == heightTextController
          ? _value.heightTextController
          : heightTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lengthTextController: null == lengthTextController
          ? _value.lengthTextController
          : lengthTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      termsInfoTextController: null == termsInfoTextController
          ? _value.termsInfoTextController
          : termsInfoTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      startDateTextController: null == startDateTextController
          ? _value.startDateTextController
          : startDateTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      endDateTextController: null == endDateTextController
          ? _value.endDateTextController
          : endDateTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      tagsEditingController: null == tagsEditingController
          ? _value.tagsEditingController
          : tagsEditingController // ignore: cast_nullable_to_non_nullable
              as TagsEditingController,
      regionsEditingController: null == regionsEditingController
          ? _value.regionsEditingController
          : regionsEditingController // ignore: cast_nullable_to_non_nullable
              as TagsEditingController,
      createdDeal: freezed == createdDeal
          ? _value.createdDeal
          : createdDeal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      selectedPlan: null == selectedPlan
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<DealCategory>,
      dealPlans: null == dealPlans
          ? _value.dealPlans
          : dealPlans // ignore: cast_nullable_to_non_nullable
              as KtList<DealPlan>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res>? get createdDeal {
    if (_value.createdDeal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_value.createdDeal!, (value) {
      return _then(_value.copyWith(createdDeal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DealPlanCopyWith<$Res> get selectedPlan {
    return $DealPlanCopyWith<$Res>(_value.selectedPlan, (value) {
      return _then(_value.copyWith(selectedPlan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool validate,
      bool isFetchingCategories,
      bool isSavingState,
      bool isCreatingProduct,
      bool productCreated,
      @visibleForTesting @protected bool controllerHasClients,
      bool isSearching,
      String? searchQuery,
      SearchModel model,
      MoneyMaskedTextController basePriceController,
      MoneyMaskedTextController reservedPriceController,
      TextEditingController itemNameTextController,
      TextEditingController stateTextController,
      TextEditingController townTextController,
      TextEditingController descriptionTextController,
      TextEditingController brandTextController,
      TextEditingController brandModelTextController,
      TextEditingController transmissionTextController,
      TextEditingController shippingDescTextController,
      TextEditingController addressTextController,
      TextEditingController weightTextController,
      TextEditingController widthTextController,
      TextEditingController heightTextController,
      TextEditingController lengthTextController,
      TextEditingController termsInfoTextController,
      TextEditingController startDateTextController,
      TextEditingController endDateTextController,
      TagsEditingController tagsEditingController,
      TagsEditingController regionsEditingController,
      Deal? createdDeal,
      DealPlan selectedPlan,
      Product product,
      PageController? controller,
      int currentIndex,
      KtList<DealCategory> categories,
      KtList<DealPlan> dealPlans,
      Option<AppHttpResponse?> status});

  @override
  $DealCopyWith<$Res>? get createdDeal;
  @override
  $DealPlanCopyWith<$Res> get selectedPlan;
  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? validate = null,
    Object? isFetchingCategories = null,
    Object? isSavingState = null,
    Object? isCreatingProduct = null,
    Object? productCreated = null,
    Object? controllerHasClients = null,
    Object? isSearching = null,
    Object? searchQuery = freezed,
    Object? model = null,
    Object? basePriceController = null,
    Object? reservedPriceController = null,
    Object? itemNameTextController = null,
    Object? stateTextController = null,
    Object? townTextController = null,
    Object? descriptionTextController = null,
    Object? brandTextController = null,
    Object? brandModelTextController = null,
    Object? transmissionTextController = null,
    Object? shippingDescTextController = null,
    Object? addressTextController = null,
    Object? weightTextController = null,
    Object? widthTextController = null,
    Object? heightTextController = null,
    Object? lengthTextController = null,
    Object? termsInfoTextController = null,
    Object? startDateTextController = null,
    Object? endDateTextController = null,
    Object? tagsEditingController = null,
    Object? regionsEditingController = null,
    Object? createdDeal = freezed,
    Object? selectedPlan = null,
    Object? product = null,
    Object? controller = freezed,
    Object? currentIndex = null,
    Object? categories = null,
    Object? dealPlans = null,
    Object? status = null,
  }) {
    return _then(_$_ProductState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: null == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingCategories: null == isFetchingCategories
          ? _value.isFetchingCategories
          : isFetchingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isSavingState: null == isSavingState
          ? _value.isSavingState
          : isSavingState // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreatingProduct: null == isCreatingProduct
          ? _value.isCreatingProduct
          : isCreatingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productCreated: null == productCreated
          ? _value.productCreated
          : productCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      controllerHasClients: null == controllerHasClients
          ? _value.controllerHasClients
          : controllerHasClients // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      basePriceController: null == basePriceController
          ? _value.basePriceController
          : basePriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      reservedPriceController: null == reservedPriceController
          ? _value.reservedPriceController
          : reservedPriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      itemNameTextController: null == itemNameTextController
          ? _value.itemNameTextController
          : itemNameTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      stateTextController: null == stateTextController
          ? _value.stateTextController
          : stateTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      townTextController: null == townTextController
          ? _value.townTextController
          : townTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionTextController: null == descriptionTextController
          ? _value.descriptionTextController
          : descriptionTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      brandTextController: null == brandTextController
          ? _value.brandTextController
          : brandTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      brandModelTextController: null == brandModelTextController
          ? _value.brandModelTextController
          : brandModelTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      transmissionTextController: null == transmissionTextController
          ? _value.transmissionTextController
          : transmissionTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      shippingDescTextController: null == shippingDescTextController
          ? _value.shippingDescTextController
          : shippingDescTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      addressTextController: null == addressTextController
          ? _value.addressTextController
          : addressTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      weightTextController: null == weightTextController
          ? _value.weightTextController
          : weightTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      widthTextController: null == widthTextController
          ? _value.widthTextController
          : widthTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      heightTextController: null == heightTextController
          ? _value.heightTextController
          : heightTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lengthTextController: null == lengthTextController
          ? _value.lengthTextController
          : lengthTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      termsInfoTextController: null == termsInfoTextController
          ? _value.termsInfoTextController
          : termsInfoTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      startDateTextController: null == startDateTextController
          ? _value.startDateTextController
          : startDateTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      endDateTextController: null == endDateTextController
          ? _value.endDateTextController
          : endDateTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      tagsEditingController: null == tagsEditingController
          ? _value.tagsEditingController
          : tagsEditingController // ignore: cast_nullable_to_non_nullable
              as TagsEditingController,
      regionsEditingController: null == regionsEditingController
          ? _value.regionsEditingController
          : regionsEditingController // ignore: cast_nullable_to_non_nullable
              as TagsEditingController,
      createdDeal: freezed == createdDeal
          ? _value.createdDeal
          : createdDeal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      selectedPlan: null == selectedPlan
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<DealCategory>,
      dealPlans: null == dealPlans
          ? _value.dealPlans
          : dealPlans // ignore: cast_nullable_to_non_nullable
              as KtList<DealPlan>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {this.isLoading = false,
      this.validate = false,
      this.isFetchingCategories = false,
      this.isSavingState = false,
      this.isCreatingProduct = false,
      this.productCreated = false,
      @visibleForTesting @protected this.controllerHasClients = false,
      this.isSearching = false,
      this.searchQuery,
      this.model = SearchModel.deal,
      required this.basePriceController,
      required this.reservedPriceController,
      required this.itemNameTextController,
      required this.stateTextController,
      required this.townTextController,
      required this.descriptionTextController,
      required this.brandTextController,
      required this.brandModelTextController,
      required this.transmissionTextController,
      required this.shippingDescTextController,
      required this.addressTextController,
      required this.weightTextController,
      required this.widthTextController,
      required this.heightTextController,
      required this.lengthTextController,
      required this.termsInfoTextController,
      required this.startDateTextController,
      required this.endDateTextController,
      required this.tagsEditingController,
      required this.regionsEditingController,
      this.createdDeal,
      required this.selectedPlan,
      required this.product,
      this.controller,
      this.currentIndex = ProductState.kInitialPage,
      this.categories = const KtList.empty(),
      this.dealPlans = const KtList.empty(),
      this.status = const None()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool validate;
// @Default(false) bool hasErrors,
  @override
  @JsonKey()
  final bool isFetchingCategories;
  @override
  @JsonKey()
  final bool isSavingState;
  @override
  @JsonKey()
  final bool isCreatingProduct;
  @override
  @JsonKey()
  final bool productCreated;
  @override
  @JsonKey()
  @visibleForTesting
  @protected
  final bool controllerHasClients;
//
  @override
  @JsonKey()
  final bool isSearching;
  @override
  final String? searchQuery;
  @override
  @JsonKey()
  final SearchModel model;
//
  @override
  final MoneyMaskedTextController basePriceController;
  @override
  final MoneyMaskedTextController reservedPriceController;
  @override
  final TextEditingController itemNameTextController;
  @override
  final TextEditingController stateTextController;
  @override
  final TextEditingController townTextController;
  @override
  final TextEditingController descriptionTextController;
  @override
  final TextEditingController brandTextController;
  @override
  final TextEditingController brandModelTextController;
  @override
  final TextEditingController transmissionTextController;
  @override
  final TextEditingController shippingDescTextController;
  @override
  final TextEditingController addressTextController;
  @override
  final TextEditingController weightTextController;
  @override
  final TextEditingController widthTextController;
  @override
  final TextEditingController heightTextController;
  @override
  final TextEditingController lengthTextController;
  @override
  final TextEditingController termsInfoTextController;
  @override
  final TextEditingController startDateTextController;
  @override
  final TextEditingController endDateTextController;
  @override
  final TagsEditingController tagsEditingController;
  @override
  final TagsEditingController regionsEditingController;
//
  @override
  final Deal? createdDeal;
  @override
  final DealPlan selectedPlan;
  @override
  final Product product;
  @override
  final PageController? controller;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final KtList<DealCategory> categories;
  @override
  @JsonKey()
  final KtList<DealPlan> dealPlans;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, validate: $validate, isFetchingCategories: $isFetchingCategories, isSavingState: $isSavingState, isCreatingProduct: $isCreatingProduct, productCreated: $productCreated, controllerHasClients: $controllerHasClients, isSearching: $isSearching, searchQuery: $searchQuery, model: $model, basePriceController: $basePriceController, reservedPriceController: $reservedPriceController, itemNameTextController: $itemNameTextController, stateTextController: $stateTextController, townTextController: $townTextController, descriptionTextController: $descriptionTextController, brandTextController: $brandTextController, brandModelTextController: $brandModelTextController, transmissionTextController: $transmissionTextController, shippingDescTextController: $shippingDescTextController, addressTextController: $addressTextController, weightTextController: $weightTextController, widthTextController: $widthTextController, heightTextController: $heightTextController, lengthTextController: $lengthTextController, termsInfoTextController: $termsInfoTextController, startDateTextController: $startDateTextController, endDateTextController: $endDateTextController, tagsEditingController: $tagsEditingController, regionsEditingController: $regionsEditingController, createdDeal: $createdDeal, selectedPlan: $selectedPlan, product: $product, controller: $controller, currentIndex: $currentIndex, categories: $categories, dealPlans: $dealPlans, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validate, validate) ||
                other.validate == validate) &&
            (identical(other.isFetchingCategories, isFetchingCategories) ||
                other.isFetchingCategories == isFetchingCategories) &&
            (identical(other.isSavingState, isSavingState) ||
                other.isSavingState == isSavingState) &&
            (identical(other.isCreatingProduct, isCreatingProduct) ||
                other.isCreatingProduct == isCreatingProduct) &&
            (identical(other.productCreated, productCreated) ||
                other.productCreated == productCreated) &&
            (identical(other.controllerHasClients, controllerHasClients) ||
                other.controllerHasClients == controllerHasClients) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.basePriceController, basePriceController) ||
                other.basePriceController == basePriceController) &&
            (identical(other.reservedPriceController, reservedPriceController) ||
                other.reservedPriceController == reservedPriceController) &&
            (identical(other.itemNameTextController, itemNameTextController) ||
                other.itemNameTextController == itemNameTextController) &&
            (identical(other.stateTextController, stateTextController) ||
                other.stateTextController == stateTextController) &&
            (identical(other.townTextController, townTextController) ||
                other.townTextController == townTextController) &&
            (identical(other.descriptionTextController, descriptionTextController) ||
                other.descriptionTextController == descriptionTextController) &&
            (identical(other.brandTextController, brandTextController) ||
                other.brandTextController == brandTextController) &&
            (identical(other.brandModelTextController, brandModelTextController) ||
                other.brandModelTextController == brandModelTextController) &&
            (identical(other.transmissionTextController, transmissionTextController) ||
                other.transmissionTextController ==
                    transmissionTextController) &&
            (identical(other.shippingDescTextController, shippingDescTextController) ||
                other.shippingDescTextController ==
                    shippingDescTextController) &&
            (identical(other.addressTextController, addressTextController) ||
                other.addressTextController == addressTextController) &&
            (identical(other.weightTextController, weightTextController) ||
                other.weightTextController == weightTextController) &&
            (identical(other.widthTextController, widthTextController) ||
                other.widthTextController == widthTextController) &&
            (identical(other.heightTextController, heightTextController) ||
                other.heightTextController == heightTextController) &&
            (identical(other.lengthTextController, lengthTextController) ||
                other.lengthTextController == lengthTextController) &&
            (identical(other.termsInfoTextController, termsInfoTextController) ||
                other.termsInfoTextController == termsInfoTextController) &&
            (identical(other.startDateTextController, startDateTextController) ||
                other.startDateTextController == startDateTextController) &&
            (identical(other.endDateTextController, endDateTextController) ||
                other.endDateTextController == endDateTextController) &&
            (identical(other.tagsEditingController, tagsEditingController) ||
                other.tagsEditingController == tagsEditingController) &&
            (identical(other.regionsEditingController, regionsEditingController) || other.regionsEditingController == regionsEditingController) &&
            (identical(other.createdDeal, createdDeal) || other.createdDeal == createdDeal) &&
            (identical(other.selectedPlan, selectedPlan) || other.selectedPlan == selectedPlan) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.controller, controller) || other.controller == controller) &&
            (identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex) &&
            (identical(other.categories, categories) || other.categories == categories) &&
            (identical(other.dealPlans, dealPlans) || other.dealPlans == dealPlans) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        validate,
        isFetchingCategories,
        isSavingState,
        isCreatingProduct,
        productCreated,
        controllerHasClients,
        isSearching,
        searchQuery,
        model,
        basePriceController,
        reservedPriceController,
        itemNameTextController,
        stateTextController,
        townTextController,
        descriptionTextController,
        brandTextController,
        brandModelTextController,
        transmissionTextController,
        shippingDescTextController,
        addressTextController,
        weightTextController,
        widthTextController,
        heightTextController,
        lengthTextController,
        termsInfoTextController,
        startDateTextController,
        endDateTextController,
        tagsEditingController,
        regionsEditingController,
        createdDeal,
        selectedPlan,
        product,
        controller,
        currentIndex,
        categories,
        dealPlans,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final bool isLoading,
      final bool validate,
      final bool isFetchingCategories,
      final bool isSavingState,
      final bool isCreatingProduct,
      final bool productCreated,
      @visibleForTesting @protected final bool controllerHasClients,
      final bool isSearching,
      final String? searchQuery,
      final SearchModel model,
      required final MoneyMaskedTextController basePriceController,
      required final MoneyMaskedTextController reservedPriceController,
      required final TextEditingController itemNameTextController,
      required final TextEditingController stateTextController,
      required final TextEditingController townTextController,
      required final TextEditingController descriptionTextController,
      required final TextEditingController brandTextController,
      required final TextEditingController brandModelTextController,
      required final TextEditingController transmissionTextController,
      required final TextEditingController shippingDescTextController,
      required final TextEditingController addressTextController,
      required final TextEditingController weightTextController,
      required final TextEditingController widthTextController,
      required final TextEditingController heightTextController,
      required final TextEditingController lengthTextController,
      required final TextEditingController termsInfoTextController,
      required final TextEditingController startDateTextController,
      required final TextEditingController endDateTextController,
      required final TagsEditingController tagsEditingController,
      required final TagsEditingController regionsEditingController,
      final Deal? createdDeal,
      required final DealPlan selectedPlan,
      required final Product product,
      final PageController? controller,
      final int currentIndex,
      final KtList<DealCategory> categories,
      final KtList<DealPlan> dealPlans,
      final Option<AppHttpResponse?> status}) = _$_ProductState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override // @Default(false) bool hasErrors,
  bool get isFetchingCategories;
  @override
  bool get isSavingState;
  @override
  bool get isCreatingProduct;
  @override
  bool get productCreated;
  @override
  @visibleForTesting
  @protected
  bool get controllerHasClients;
  @override //
  bool get isSearching;
  @override
  String? get searchQuery;
  @override
  SearchModel get model;
  @override //
  MoneyMaskedTextController get basePriceController;
  @override
  MoneyMaskedTextController get reservedPriceController;
  @override
  TextEditingController get itemNameTextController;
  @override
  TextEditingController get stateTextController;
  @override
  TextEditingController get townTextController;
  @override
  TextEditingController get descriptionTextController;
  @override
  TextEditingController get brandTextController;
  @override
  TextEditingController get brandModelTextController;
  @override
  TextEditingController get transmissionTextController;
  @override
  TextEditingController get shippingDescTextController;
  @override
  TextEditingController get addressTextController;
  @override
  TextEditingController get weightTextController;
  @override
  TextEditingController get widthTextController;
  @override
  TextEditingController get heightTextController;
  @override
  TextEditingController get lengthTextController;
  @override
  TextEditingController get termsInfoTextController;
  @override
  TextEditingController get startDateTextController;
  @override
  TextEditingController get endDateTextController;
  @override
  TagsEditingController get tagsEditingController;
  @override
  TagsEditingController get regionsEditingController;
  @override //
  Deal? get createdDeal;
  @override
  DealPlan get selectedPlan;
  @override
  Product get product;
  @override
  PageController? get controller;
  @override
  int get currentIndex;
  @override
  KtList<DealCategory> get categories;
  @override
  KtList<DealPlan> get dealPlans;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
