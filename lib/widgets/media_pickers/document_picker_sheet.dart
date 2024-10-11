library document_picker_sheet.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

import 'package:flutter/material.dart';

class DocumentPickerSheet extends StatelessWidget {
  final List<DocumentPicker> pickers;
  final double height;

  const DocumentPickerSheet({Key? key, this.pickers = const [], this.height = 0.16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveBottomSheet.column(
      safeAreaTop: false,
      gapBeforeBar: 0.015,
      gapBetweenBarAndContent: 0.01,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      showCloseButton: false,
      children: [
        ...pickers.map(
          (p) => AdaptiveListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0.05.sw),
            minVerticalPadding: 0,
            onTap: () => navigator.pop().then((_) => p.onPressed.call()),
            noCupertinoBorder: true,
            leading: p.asset,
            trailing: Utils.nothing,
            title: AdaptiveText(p.name, fontSize: 17.sp),
          ),
        ),
        //
        0.022.verticalh,
      ],
    );
  }
}

class DocumentPicker {
  final String name;
  final Widget? asset;
  final VoidCallback onPressed;

  DocumentPicker({required this.name, this.asset, required this.onPressed});
}
