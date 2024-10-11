library product_bloc.dart;

import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/product/product_dto.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/seller_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:path/path.dart' as p;

part 'image_picker_mixin.dart';
part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends HiveBloc<ProductEvent, ProductState> with BaseSearchBloc<ProductEvent, ProductState>, _ImagePickerMixin {
  static const String _indexKey = 'sell-page-index';
  static const String _productKey = 'sell-page-product';

  final CloudinaryPublic _cloudinary;
  final SellerRepository _sellerRepository;
  final DealRepository _dealRepository;

  PageController get controller => state.controller!;

  ProductBloc(this._dealRepository, this._sellerRepository, this._cloudinary) : super(ProductState.initial()) {
    on<ProductEmiiterEvent>((event, emit) {
      if (!isClosed) emitter(emit, event.state(state));
      event.callback?.call(true);
    }, transformer: sequential());
    //
    on<ProductSyncEvent>((event, emit) async {
      await event.mapOrNull(
        init: (e) async => emitter(emit, state.copyWith(product: e.product ?? state.product)),
        validate: (e) async => _validateFormInputs(e, emit),
        categoryChanged: (e) async => emitter(emit, state.copyWith.product(category: e.category)),
        countryChanged: (e) async => emitter(emit, state.copyWith.product(country: e.country)),
        dealTypeChanged: (e) async => emitter(
          emit,
          state.copyWith(
            product: state.product.copyWith(
              deal: e.type != null ? state.product.deal?.copyWith(type: e.type!) : state.product.deal,
            ),
          ),
        ),
        dealPlanChanged: (e) async => emitter(
          emit,
          state.copyWith(
            selectedPlan: e.plan ?? state.selectedPlan,
            product: state.product.copyWith(deal: state.product.deal?.copyWith(dealPlan: e.plan ?? state.selectedPlan)),
          ),
        ),
        itemNameChanged: (e) async => emitter(emit, state.copyWith.product(name: BasicTextField(state.itemNameTextController.text))),
        stateChanged: (e) async => emitter(emit, state.copyWith.product(state: BasicTextField(state.stateTextController.text))),
        townChanged: (e) async => emitter(emit, state.copyWith.product(lga: BasicTextField(state.townTextController.text))),
        itemDescriptionChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            brandInformation: state.product.brandInformation?.copyWith(description: BasicTextField(state.descriptionTextController.text)),
          ),
        ),
        brandChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            brandInformation: state.product.brandInformation?.copyWith(brand: BasicTextField(state.brandTextController.text)),
          ),
        ),
        brandModelChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            brandInformation: state.product.brandInformation?.copyWith(brandModel: BasicTextField(state.brandModelTextController.text)),
          ),
        ),
        deliveryModeChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            shippingInformation: state.product.shippingInformation?.copyWith(
              isPickup: e.value ?? (state.product.shippingInformation?.isPickup == true),
            ),
          ),
        ),
        shippingDescChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            shippingInformation: state.product.shippingInformation?.copyWith(
              description: BasicTextField(state.shippingDescTextController.text),
            ),
          ),
        ),
        basePriceChanged: (_) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(
              basePrice: Deal.setBasePrice(state.basePriceController.numberValue),
              reservedPrice: Deal.setReservedPrice(
                state.reservedPriceController.numberValue,
                basePrice: state.basePriceController.numberValue,
                orEqualTo: true,
              ),
            ),
          ),
        ),
        reservedPriceChanged: (_) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(
              reservedPrice: Deal.setReservedPrice(
                state.reservedPriceController.numberValue,
                basePrice: state.basePriceController.numberValue,
                orEqualTo: (state.reservedPriceController.numberValue ?? 0) > 0,
              ),
            ),
          ),
        ),
        conditionChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            brandInformation: state.product.brandInformation?.copyWith(
              condition: e.value ?? state.product.brandInformation?.condition ?? defaultItemCondition,
            ),
          ),
        ),
        quantityTypeChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(quantity: e.value ?? state.product.deal?.quantity ?? defaultQuantityType),
          ),
        ),
        itemQuantityChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(availableItems: NumField(e.value)),
          ),
        ),
        biddingTypeChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(biddingType: e.value ?? state.product.deal?.biddingType ?? defaultBiddingType),
          ),
        ),
        offerTypeChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(offerType: e.value ?? state.product.deal?.offerType ?? defaultOfferType),
          ),
        ),
        startDateChanged: (e) async => emitter(
          emit,
          state.copyWith(
            startDateTextController: state.startDateTextController
              ..text = e.value == null ? state.startDateTextController.text : DateTimeUtils.dayOfMonth(e.value!, addTime: true),
            product: state.product.copyWith(deal: state.product.deal?.copyWith(startDate: DateTimeField(e.value))),
          ),
        ),
        endDateChanged: (e) async => emitter(
          emit,
          state.copyWith(
            endDateTextController: state.endDateTextController
              ..text = e.value == null ? state.endDateTextController.text : DateTimeUtils.dayOfMonth(e.value!, addTime: true),
            product: state.product.copyWith(deal: state.product.deal?.copyWith(endDate: DateTimeField(e.value))),
          ),
        ),
        offlineAddressChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            deal: state.product.deal?.copyWith(offlineAddress: BasicTextField(state.addressTextController.text)),
          ),
        ),
        deliveryPeriodChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            shippingInformation: state.product.shippingInformation?.copyWith(deliveryPeriod: BasicTextField(e.value)),
          ),
        ),
        repairHistoryChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            brandInformation: state.product.brandInformation?.copyWith(
              hasRepairHistory: e.value ?? state.product.brandInformation?.hasRepairHistory ?? false,
            ),
          ),
        ),
        warrantyPeriodChanged: (e) async => emitter(
          emit,
          state.copyWith.product(
            brandInformation: state.product.brandInformation?.copyWith(warranty: BasicTextField(e.value)),
          ),
        ),
        onTagSelected: (e) async => emitter(
          emit,
          state.copyWith.product(
            tags: ImmutableStrings(state.tagsEditingController.getTags?.toImmutableList()),
          ),
        ),
        onRegionSelected: (e) async => emitter(
          emit,
          state.copyWith.product(
            shippingInformation: state.product.shippingInformation?.copyWith(
              regions: ImmutableStrings(state.regionsEditingController.getTags?.toImmutableList()),
            ),
          ),
        ),
      );
    }, transformer: concurrent());
    //
    on<_ClearFormFieldsEvent>((_, __) async => _resetForm(), transformer: sequential());
    //
    on<ProductDebounceEvent>((event, emit) async {
      await event.map(
        onTypingTag: (e) async => _onTypingTag(e, emit),
        onTypingRegion: (e) async => _onTypingRegion(e, emit),
      );
    }, transformer: debounceRestartable(const Duration(milliseconds: 700)));
    //
    on<ProductGetEvent>((event, emit) async {
      await event.map(
        categories: (e) async => _asyncHandler(e, emit, before: (e) => e.copyWith(isLoading: false), runnable: _getCategories),
        getDealPlans: (e) async => _asyncHandler(e, emit, runnable: _getAvailableDealPlans),
      );
    });
    //
    on<ProductStructEvent>((event, emit) async {
      await event.map(
        store: (evt) async => _asyncHandler(
          evt,
          emit,
          before: (e) => e.copyWith(isLoading: false, isCreatingProduct: true, status: none()),
          after: (e) => e.copyWith(isLoading: false, isCreatingProduct: false),
          beforeRun: (_StoreNewProductEvent e, emit) {
            emitter(emit, state.copyWith(validate: true));
            return state.product.failure.isNone();
          },
          runnable: _storeProduct,
        ),
      );
    });
    //
    on<ProductPageControllerEvent>((event, emit) async {
      await event.map(
        attachListener: (_) async => _attachControllerListener(emit),
        animateTo: (e) async => _onAnimateToPage(e, emit),
        indexChanged: (e) async => _onPageIndexChanged(e, emit),
        next: (e) async => _next(e, emit),
        prev: (_) async => _prev(emit),
      );
    }, transformer: sequential());
    //
    on<ProductMediaEvents>((event, emit) async {
      await event.map(
        uploadMedia: (e) async => _uploadMedia(e, emit),
        pickCamera: (e) async => _pickCamera(e, emit),
        pickGallery: (e) async => _pickGallery(e, emit),
        removeMedia: (e) async => _removeMedia(e, emit),
      );
    }, transformer: sequential());
  }

  @override
  Box<dynamic>? get box => HiveClient.settingsBox;

  @override
  Future<void> close() {
    controller.removeListener(() => _pageControllerListener());
    controller.dispose();
    return super.close();
  }

  void _onTypingTag(_ProductTypingTagEvent evt, Emitter<ProductState> emit) {}
  void _onTypingRegion(_ProductTypingRegionEvent evt, Emitter<ProductState> emit) {}

  @override
  ProductState? fromJson(Map<String, dynamic> json) {
    final _state = state;
    final productJson = json.containsKey(_productKey) ? json[_productKey] as Map<String, dynamic>? : null;
    final pageIndex = json.containsKey(_indexKey) ? cast<int?>(json[_indexKey])! : _state.currentIndex;

    final newController = PageController(initialPage: pageIndex, keepPage: true);

    if (productJson != null) {
      final product = ProductDTOData.fromJson(productJson).domain;

      final startDate = product.deal?.startDate.getOrNull;
      final endDate = product.deal?.endDate.getOrNull;

      final newState = _state.copyWith(
        controller: newController,
        currentIndex: pageIndex,
        categories: _state.categories,
        product: product.copyWith(country: product.country ?? Country.defaultCountry),
        itemNameTextController: _state.itemNameTextController..text = product.name.getOrEmpty,
        stateTextController: _state.stateTextController..text = product.state.getOrEmpty,
        townTextController: _state.townTextController..text = product.lga.getOrEmpty,
        descriptionTextController: _state.descriptionTextController..text = product.brandInformation!.description.getOrEmpty,
        brandTextController: _state.brandTextController..text = product.brandInformation!.brand.getOrEmpty,
        brandModelTextController: _state.brandModelTextController..text = product.brandInformation!.brandModel.getOrEmpty,
        shippingDescTextController: _state.shippingDescTextController..text = product.shippingInformation!.description.getOrEmpty,
        basePriceController: product.deal?.basePrice.getOrNull != null && product.deal!.basePrice.isValid
            ? (_state.basePriceController..text = product.deal!.basePrice.getExact().toInt().toString())
            : _state.basePriceController,
        reservedPriceController: product.deal?.reservedPrice.getOrNull != null && product.deal!.reservedPrice.isValid
            ? (_state.reservedPriceController..text = product.deal!.reservedPrice.getExact().toInt().toString())
            : _state.reservedPriceController,
        addressTextController: product.deal?.offlineAddress.getOrNull != null && product.deal!.offlineAddress.isValid
            ? (_state.addressTextController..text = product.deal!.offlineAddress.getOrNull!)
            : _state.addressTextController,
        startDateTextController: _state.startDateTextController
          ..text = startDate != null ? DateTimeUtils.dayOfMonth(startDate, addTime: true) : '',
        endDateTextController: _state.endDateTextController..text = endDate != null ? DateTimeUtils.dayOfMonth(endDate, addTime: true) : '',
      );

      return newState;
    }

    return _state.copyWith(controller: newController, currentIndex: pageIndex);
  }

  @override
  Map<String, dynamic>? toJson(ProductState state) {
    final json = <String, dynamic>{};
    final _state = state;

    if (!_state.product.isSellBlank) {
      json[_productKey] = ProductDTOData.fromDomain(_state.product).toJson();
      json[_indexKey] = _state.currentIndex;

      return json;
    }

    return null;
  }

  Future<void> _asyncHandler<Evt>(
    Evt event,
    Emitter<ProductState> emit, {
    bool clearStatus = true,
    ProductState Function(ProductState)? before,
    ProductState Function(ProductState)? after,
    bool Function(Evt, Emitter<ProductState>)? beforeRun,
    FutureOr<void> Function(Evt, Emitter<ProductState>)? runnable,
    void Function(Evt, Emitter<ProductState>)? afterRun,
  }) async {
    final _res = beforeRun?.call(event, emit) ?? true;

    if (_res) {
      if (before != null)
        emitter(emit, before.call(state.copyWith(isLoading: true, status: clearStatus ? none() : state.status)));
      else
        emitter(emit, state.copyWith(isLoading: true, status: clearStatus ? none() : state.status));

      if (runnable != null) await runnable.call(event, emit);

      if (after != null)
        emitter(emit, after.call(state.copyWith(isLoading: false)));
      else
        emitter(emit, state.copyWith(isLoading: false));

      afterRun?.call(event, emit);
    }
  }

  void _attachControllerListener(Emitter<ProductState> emit) {
    if (state.controller == null) {
      final newController = PageController(initialPage: state.currentIndex);
      emitter(emit, state.copyWith(controller: newController));
    }

    controller.addListener(() => _pageControllerListener());
  }

  void _getAvailableDealPlans(_GetDealPlansEvent evt, Emitter<ProductState> emit) async {
    final response = await _sellerRepository.availablePlans();

    if (!isClosed)
      emitter(
        emit,
        response.fold(
          (e) => state.copyWith(status: optionOf(e), isLoading: false),
          (list) {
            final recommended = list.find((it) => it.isRecommended) ?? state.selectedPlan;

            return state.copyWith(
              dealPlans: list,
              selectedPlan: state.selectedPlan.isValid ? state.selectedPlan : recommended,
              product: state.product.copyWith(deal: state.product.deal?.copyWith(dealPlan: recommended)),
              isLoading: false,
            );
          },
        ),
      );
  }

  void _getCategories(_GetCategoriesEvent evt, Emitter<ProductState> emit) async {
    emitter(emit, state.copyWith(isFetchingCategories: true, status: none()));

    final response = await _dealRepository.categories();

    if (!isClosed)
      emitter(
        emit,
        response.fold(
          (e) => state.copyWith(status: optionOf(e), isFetchingCategories: false),
          (list) => state.copyWith(
            categories: list,
            isFetchingCategories: false,
            product: state.product.copyWith(category: state.product.category),
          ),
        ),
      );
  }

  void _next(_OnNextPage e, Emitter<ProductState> emit) async {
    if (controller.page != e.items.length - 1) {
      await controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      if (!isClosed) emitter(emit, state.copyWith(controller: state.controller));
    }
  }

  void _animateToPage(int page, {Duration? duration, Curve? curve}) async {
    if (controller.hasClients == true) {
      await controller.animateToPage(
        page,
        duration: duration ?? const Duration(milliseconds: 500),
        curve: curve ?? Curves.easeOut,
      );
    }
  }

  void _onAnimateToPage(_OnAnimateToPage evt, Emitter<ProductState> emit) async {
    _animateToPage(evt.page, duration: evt.duration, curve: evt.curve);
    emitter(emit, state.copyWith(controller: state.controller, currentIndex: evt.page));
  }

  void _onPageIndexChanged(_PageIndexChangedEvent evt, Emitter<ProductState> emit) async =>
      emitter(emit, state.copyWith(currentIndex: evt.index));

  void _pageControllerListener() {
    // add(ProductEmiiterEvent.state((s) => s.copyWith(controllerHasClients: state.controller.hasClients)));

    if (controller.page != null && controller.page?.round() != state.currentIndex) {
      if (!isClosed) {
        add(ProductEmiiterEvent.state((s) => s.copyWith(currentIndex: state.controller!.page!.round())));
      }
    }
  }

  void _prev(Emitter<ProductState> emit) async {
    if (state.currentIndex != 0) {
      await controller.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      if (!isClosed) emitter(emit, state.copyWith(controller: state.controller));
    }
  }

  void _resetForm() async {
    state.itemNameTextController.clear();
    state.stateTextController.clear();
    state.townTextController.clear();
    state.descriptionTextController.clear();
    state.brandTextController.clear();
    state.brandModelTextController.clear();
    state.transmissionTextController.clear();
    state.shippingDescTextController.clear();
    state.weightTextController.clear();
    state.widthTextController.clear();
    state.heightTextController.clear();
    state.lengthTextController.clear();
    state.basePriceController.clear();
    state.addressTextController.clear();
    state.termsInfoTextController.clear();
    state.startDateTextController.clear();
    state.endDateTextController.clear();
    state.basePriceController.clear();
    state.reservedPriceController.clear();
    //
    state.tagsEditingController.clearTags();
    state.tagsEditingController.textEditingController?.clear();
    state.regionsEditingController.clearTags();
    state.regionsEditingController.textEditingController?.clear();

    if (state.controller != null) {
      add(const ProductPageControllerEvent.animateTo(ProductState.kInitialPage));
      add(const ProductPageControllerEvent.indexChanged(ProductState.kInitialPage));
    }

    add(ProductEmiiterEvent.state(
      (s) => s.copyWith(
        product: Product.sell(),
        selectedPlan: DealPlan.blank(),
        createdDeal: null,
        isLoading: false,
        isCreatingProduct: false,
        productCreated: false,
        isFetchingCategories: false,
        controllerHasClients: false,
        isSavingState: false,
        validate: false,
        isSearching: false,
        searchQuery: null,
        status: none(),
      ),
    ));

    await clear();
  }

  void _storeProduct(_StoreNewProductEvent evt, Emitter<ProductState> emit) async {
    final tuple2 = await _sellerRepository.createProduct(state.product);

    final response = tuple2.value1;
    final deal = tuple2.value2;

    response.maybeMap(
      error: (_) => emitter(emit, state.copyWith(status: optionOf(response), validate: false)),
      orElse: () {
        evt.callback?.call(true);

        if (!isClosed)
          emitter(
            emit,
            state.copyWith(
              productCreated: true,
              createdDeal: deal,
              status: some(AppHttpResponse.successful(response.message)),
            ),
          );
      },
    );
  }

  void _uploadMedia(_UploadMediaEvent evt, Emitter<ProductState> emit) async {
    if (!isClosed) emitter(emit, state.copyWith(status: none()));

    try {
      final media = MediaField.network(null);
      final _id = UniqueId<String>.v4().value;

      if (evt.index == null) {
        if (!isClosed)
          // Append to list
          emitter(emit, state.copyWith.product(photos: state.product.photos.addMedia(media, id: _id)));
      } else {
        if (!isClosed)
          // Replace at index
          emitter(emit, state.copyWith.product(photos: state.product.photos.replaceMedia(media, id: _id, index: evt.index)));
      }

      final index = state.product.photos.indexOfFirst((e) => e.id == _id);

      final conn = await connection();

      await conn.fold(
        () async {
          final response = await _cloudinary.uploadFile(
            CloudinaryFile.fromFile(evt.file.path, resourceType: CloudinaryResourceType.Image),
            uploadPreset: env.uploadPreset,
            onProgress: (count, total) {
              add(ProductEmiiterEvent.state(
                (s) => s.copyWith.product(
                  photos: state.product.photos.replaceMedia(media, index: index, progress: SendProgressCallback(count, total)),
                ),
              ));
            },
          );

          final _uploaded = media.copyWith(response.secureUrl);

          if (!isClosed) emitter(emit, state.copyWith.product(photos: state.product.photos.replaceMedia(_uploaded, index: index)));
        },
        (f) async => emitter(emit, state.copyWith(status: optionOf(f))),
      );
    } on CloudinaryException catch (e, tr) {
      if (!isClosed)
        emitter(
          emit,
          state.copyWith(
            status: optionOf(AppHttpResponse.failure('Error ${e.statusCode}: ${e.message ?? e.responseString}')),
          ),
        );
      unawaited(Utils.reportFlutterError(e, tr, reason: 'CloudinaryException'));
    } catch (e, tr) {
      unawaited(Utils.reportFlutterError(e, tr, reason: 'Unknown Exception in ProductBloc._uploadMedia'));
    }
  }

  void _validateFormInputs(_ValidateFormFieldEvent evt, Emitter<ProductState> emit) {
    emitter(emit, state.copyWith(status: none(), isLoading: false, isCreatingProduct: false));

    final bool hasErrors;

    final product = state.product;
    final deal = product.deal!;

    final isOfflineAuction = deal.biddingType.isOffline && deal.type.isAuction;
    final isOnlineAution = deal.biddingType.isOnline && deal.type.isAuction;
    final isRealEstateOrAutomatedAuction = product.category?.isRealEstate == true || product.category?.isAutomobileAuction == true;

    if (product.category == null || !product.category!.isValid) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('Please select a category to proceed.'))));

      _animateToPage(AboutPostPage.index);
    } else if (product.photos.isEmpty()) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('Please upload a photo!'))));

      _animateToPage(AboutPostPage.index);
    } else if (product.brandInformation == null && product.brandInformation?.failure.isSome() == true) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('There are problems with your input.'))));

      _animateToPage(ItemDetailsPage.index);
    } else if (product.deal!.failure.isSome()) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('There are problems with your input.'))));

      _animateToPage(PricingPage.index);
    } else if (isOnlineAution && (!deal.startDate.isValid || !deal.endDate.isValid)) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('Please select valid dates to proceed.'))));

      _animateToPage(PricingPage.index);

      evt.ctx.read<TabNavigationCubit>().animateTo(0);
    } else if (isOfflineAuction && (!deal.startDate.isValid || !deal.offlineAddress.isValid)) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('Please select a valid start date & address to proceed.'))));

      _animateToPage(PricingPage.index);

      evt.ctx.read<TabNavigationCubit>().animateTo(0);
    } else if (product.shippingInformation == null || product.shippingInformation?.failure.isSome() == true) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('There are problems with your input.'))));

      _animateToPage(ShippingDetailsPage.index);
    } else if (product.failure.isSome()) {
      hasErrors = true;
      emitter(emit, state.copyWith(status: some(AppHttpResponse.failure('Please fill all required fields!'))));

      _animateToPage(AboutPostPage.index);
    } else if (isOnlineAution && !deal.isWithinAuctionDuration && !isRealEstateOrAutomatedAuction) {
      hasErrors = true;

      final duration = '${Deal.auctionDurationInDays} ${'day'.pluralize(Deal.auctionDurationInDays)}';

      emitter(
        emit,
        state.copyWith(
          status: some(AppHttpResponse.failure(
            'A typical auction lasts only $duration, '
            'with the exception of Real Estate & Automobile Auctions categories, which can last as long as 30 days.'
            '\n\nPlease select a date range not exceeding $duration or consider using either of the above categories.',
          )),
        ),
      );

      _animateToPage(PricingPage.index);
      evt.ctx.read<TabNavigationCubit>().animateTo(0);
    } else if (isOnlineAution && !deal.isWithinSpecialAuctionDuration && isRealEstateOrAutomatedAuction) {
      hasErrors = true;

      emitter(
        emit,
        state.copyWith(
          status: some(AppHttpResponse.failure(
            'Real Estate & Automobile Auctions can last only '
            '${Deal.specialAuctionDurationInDays} ${'day'.pluralize(Deal.specialAuctionDurationInDays)}.',
          )),
        ),
      );

      _animateToPage(PricingPage.index);
      evt.ctx.read<TabNavigationCubit>().animateTo(0);
    } else {
      hasErrors = false;
      emitter(emit, state.copyWith(status: none()));
    }

    emitter(emit, state.copyWith(validate: evt.validate ?? !state.validate));

    evt.callback?.call(hasErrors);
  }

  bool isFirst(int index) => index == 0;

  bool isLast<T>(List<T> items, int index) => index == items.length - 1;
}
