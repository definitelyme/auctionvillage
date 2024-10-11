library search_text_field.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

part 'filter_bottomsheet.dart';

typedef _OnFilterCallback = void Function(DealFilter);

class SearchTextField extends StatefulWidget {
  static const minQueryChars = 1;

  final void Function(String?)? onChanged;
  final bool autofocus;
  final DealFilter? filter;
  final ShowcaseKey? filterKey;
  final String? filterShowcaseDescription;
  final String? filterShowcaseTitle;
  final FocusNode focusNode;
  final String label;
  final VoidCallback? onTap;
  final bool readOnly;
  final ShowcaseKey? searchKey;
  final String? searchShowcaseDescription;
  final String? searchShowcaseTitle;

  const SearchTextField({
    super.key,
    this.onTap,
    this.onChanged,
    this.autofocus = false,
    required this.focusNode,
    this.label = 'Search for items...',
    this.readOnly = false,
    this.filter,
    this.filterKey,
    this.filterShowcaseDescription,
    this.filterShowcaseTitle,
    this.searchKey,
    this.searchShowcaseDescription,
    this.searchShowcaseTitle,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> with DealListScreenKeyMixin {
  late TextEditingController _controller;
  late DealCubit _dealCubit;
  late SearchBloc _searchBloc;

  @override
  void initState() {
    _controller = TextEditingController();
    settings.runAllTours(context, [_searchKey, _filterKey]);
    _searchBloc = context.read<SearchBloc>();
    if (_controller.text.length >= SearchTextField.minQueryChars) {
      enqueue(() => _searchBloc.add(SearchEvent.search(_controller.text)));
    }
    _dealCubit = context.read<DealCubit>();
    _dealCubit.applyFilter(widget.filter);
    super.initState();
  }

  void focusSearch() => widget.focusNode.requestFocus();

  ShowcaseKey get _filterKey => widget.filterKey ?? filterKey;

  ShowcaseKey get _searchKey => widget.searchKey ?? searchKey;

  void _onTapFilter({_OnFilterCallback? onApply, DealFilter? filter}) async {
    final searchHasFocus = widget.focusNode.hasFocus;

    await App.showAdaptiveBottomSheet(
      context,
      elevation: 0,
      enableDrag: false,
      bounce: false,
      builder: (_) => ReactiveAdaptiveAlertdialog<DealCubit, DealState>.value(
        bloc: _dealCubit,
        dialog: (_, __) => _FilterBottomsheet(filter: widget.filter, onFilter: onApply),
      ),
    );

    if (searchHasFocus) focusSearch();
  }

  @override
  Widget build(BuildContext context) {
    return MyHero(
      tag: 'search-text-field',
      type: MaterialType.transparency,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: TourGuide(
              key: _searchKey,
              title: widget.searchShowcaseTitle,
              description: widget.searchShowcaseDescription ?? 'Search for items by name, description, category, location, vendor, etc.',
              onTargetClick: () => settings.runTour(context, _searchKey, onTargetClick: focusSearch),
              child: AdaptiveTextFormInput.search(
                onTap: widget.onTap,
                borderRadius: Utils.inputBorderRadius.br,
                readOnly: widget.readOnly,
                controller: _controller,
                autoDisposeController: false,
                focus: widget.focusNode,
                autoFocus: widget.autofocus,
                keyboardType: TextInputType.text,
                cupertinoData: (d) => d.copyWith(
                  decoration: AdaptiveTextFormInput.defaultDecoration(fillColor: CupertinoColors.tertiarySystemFill),
                  textFieldType: TextFieldType.searchfield,
                  prefixMode: OverlayVisibilityMode.always,
                  prefix: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(CupertinoIcons.search, color: CupertinoColors.systemGrey, size: 20),
                  ),
                ),
                materialData: (d) => d.copyWith(
                  outerClipRadius: Utils.inputBorderRadius.br,
                  padding: (p) => p.copyWith(top: 9, bottom: 9, left: 10, right: 10),
                  prefixIconConstraints: const BoxConstraints(),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Palette.searchBgColor,
                      size: Utils.platform_(material: 20, cupertino: 28),
                    ),
                  ),
                ),
                style: const TextStyle(fontSize: 16),
                hintStyle: const TextStyle(fontSize: 15),
                hintText: widget.label,
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
                  borderSide: BorderSide(color: Palette.grey1, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
                  borderSide: BorderSide(color: Palette.grey1, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
                  borderSide: BorderSide(color: Palette.errorRed, width: 1),
                ),
                focusBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
                  borderSide: BorderSide(color: Palette.primaryColor, width: 1),
                ),
                onChanged: (query) {
                  if (query.isEmpty) return;
                  widget.onChanged?.call(query);
                  enqueue(() => _searchBloc.add(SearchEvent.search(query, filter: _dealCubit.state.filter)));
                },
                onSubmitted: (query) {
                  if (query.isEmpty) return;
                  enqueue(() => _searchBloc.add(SearchEvent.search(query, filter: _dealCubit.state.filter)));
                  focusSearch();
                },
              ),
            ),
          ),
          //
          0.02.horizontalw,
          //
          TourGuide(
            key: _filterKey,
            title: widget.filterShowcaseTitle,
            description: widget.filterShowcaseDescription ?? 'Apply filters to narrow down your search results.',
            disposeOnTap: true,
            // onTargetClick: () => settings.runTour(context, widget.filterKey, onTargetClick: onTapFilter),
            onTargetClick: () => settings.runTour(context, _filterKey),
            child: Material(
              type: MaterialType.transparency,
              shape: RoundedRectangleBorder(
                borderRadius: 4.br,
                side: BorderSide(color: Palette.onSurface, width: 0.6),
              ),
              child: AdaptiveInkWell(
                onTap: () => settings.runTour(context, _filterKey, onTargetClick: _onTapFilter),
                borderRadius: 4.br,
                child: Padding(padding: const EdgeInsets.all(4.5), child: AppAssets.icSortSVG(Palette.iconColor)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
