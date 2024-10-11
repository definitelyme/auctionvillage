library currency_prefix_widget.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render CurrencyPrefixWidget.
class CurrencyPrefixWidget extends StatelessWidget {
  const CurrencyPrefixWidget({Key? key}) : super(key: key);

  Country? get currencyIcon {
    try {
      return navigator.navigatorKey.currentContext?.let((it) => it.read<AuthWatcherCubit>().state.user?.country);
    } catch (_) {
      if (kDebugMode) rethrow;
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      height: 35,
      child: Material(
        type: MaterialType.transparency,
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            children: [
              Expanded(
                child: AdaptiveText(
                  currencyIcon?.symbol ?? Const.defaultCurrencyIcon,
                  isDefault: true,
                  maxLines: 1,
                  wrapWords: false,
                  softWrap: false,
                  fontSize: 20.sp,
                  maxFontSize: 16,
                  textAlign: TextAlign.center,
                ),
              ),
              const VerticalDivider(indent: 8, endIndent: 8, width: 1, thickness: 1),
            ],
          ),
        ),
      ),
    );
  }
}
