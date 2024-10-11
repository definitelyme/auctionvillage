library transaction_pin_bottomsheet.dart;

import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/screens/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

/// A stateless widget to render TransactionPinBottomsheet.
class TransactionPinBottomsheet extends StatefulWidget {
  final WithdrawCubit _withdrawcubit;
  final PinSetupScreenType type;
  final VoidCallback? onDone;
  final TextSpan description;
  final TextSpan? confirmationDescription;

  TransactionPinBottomsheet({
    super.key,
    required WithdrawCubit cubit,
    required this.onDone,
    this.type = PinSetupScreenType.create,
    this.description = const TextSpan(text: 'Enter the PIN used in authenticating transactions on this account'),
    this.confirmationDescription,
  }) : _withdrawcubit = cubit..validateForm(false);

  @override
  State<TransactionPinBottomsheet> createState() => _TransactionPinBottomsheetState();
}

class _TransactionPinBottomsheetState extends State<TransactionPinBottomsheet> {
  late PinSetupScreenType _type;
  late WithdrawCubit _cubit;

  @override
  void initState() {
    _cubit = widget._withdrawcubit;
    _type = PinSetupScreenType.create;
    super.initState();
  }

  static final Iterable<int> numbers = Iterable.generate(12);

  static Widget _buildKeyText(String val) => AdaptiveText(
        val,
        isDefault: true,
        maxLines: 1,
        fontSize: 21.sp,
        maxFontSize: 24,
        fontWeight: FontWeight.w600,
        textAlign: TextAlign.center,
      );

  void _onAppend(String value) {
    HapticFeedback.mediumImpact();
    _type
        .when(create: () => _cubit.state.pinController, confirm: () => _cubit.state.pinConfirmationController)
        .append(value, WithdrawState.maxPinLength);
  }

  void _onDelete() {
    HapticFeedback.mediumImpact();
    _type.when(create: () => _cubit.state.pinController, confirm: () => _cubit.state.pinConfirmationController).delete();
  }

  List<CustomKey> get customKeys => numbers.map((value) {
        final e = value + 1;
        if (e == 10) return const CustomKey(key: Utils.nothing);
        if (e == 11) return CustomKey(key: Center(child: _buildKeyText('0')), onPressed: () => _onAppend('0'));
        if (e == 12)
          return CustomKey(
            onPressed: () => _onDelete(),
            key: Center(
              child: Icon(Utils.platform_(material: Icons.backspace_outlined, cupertino: CupertinoIcons.delete_left)),
            ),
          );
        return CustomKey(key: Center(child: _buildKeyText('$e')), onPressed: () => _onAppend('$e'));
      }).toList(growable: false);

  void onDone() {
    navigator.pop();
    widget.onDone?.call();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<WithdrawCubit, WithdrawState>(
        builder: (c, s) => AdaptiveBottomSheet.column(
          showCloseButton: _type == PinSetupScreenType.create,
          gapBeforeBar: _type == PinSetupScreenType.create ? null : 0.02,
          gapBetweenBarAndContent: _type == PinSetupScreenType.create ? null : 0.01,
          children: [
            0.003.verticalh,
            //
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                child: Row(
                  children: [
                    Visibility(
                      visible: _type == PinSetupScreenType.confirm,
                      child: AdaptiveInkWell(
                        onTap: () => setState(() => _type = PinSetupScreenType.create),
                        borderRadius: 100.br,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                    //
                    Expanded(
                      child: Center(
                        child: AdaptiveText(
                          _type.when(create: () => 'Enter your PIN', confirm: () => 'Confirm your new PIN'),
                          maxLines: 1,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w700,
                          textColor: Palette.primaryColor,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    //
                    Visibility(
                      visible: false,
                      maintainSize: _type == PinSetupScreenType.confirm,
                      maintainState: _type == PinSetupScreenType.confirm,
                      maintainAnimation: _type == PinSetupScreenType.confirm,
                      child: AdaptiveInkWell(
                        borderRadius: 100.br,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            0.01.verticalh,
            //
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.15.w),
                child: AdaptiveText.rich(
                  _type.when(create: () => widget.description, confirm: () => widget.confirmationDescription ?? widget.description),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //
            0.03.verticalh,
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IgnorePointer(
                  ignoring: true,
                  child: _type.when(
                    create: () => PinInputFormField<WithdrawCubit, WithdrawState>(
                      length: WithdrawState.maxPinLength,
                      autofocus: false,
                      validate: (s) => s.validate,
                      disabled: (s) => s.isLoading,
                      controller: (s) => s.pinController,
                      obscureText: true,
                      obscuringWidget: Icon(Icons.circle, color: Palette.onSurface, size: 14.sp),
                      style: TextStyle(fontSize: 20.sp),
                      keyboardType: TextInputType.number,
                      response: (s) => s.status,
                      field: (s) => s.withdrawalPin,
                      errorField: (it) => it.errors?.messages?.transactionPin,
                      onChanged: (cubit, s) => cubit.pinChanged(s),
                      onCompleted: (cubit, s) =>
                          widget.type == PinSetupScreenType.create ? onDone() : setState(() => _type = PinSetupScreenType.confirm),
                    ),
                    confirm: () => PinInputFormField<WithdrawCubit, WithdrawState>(
                      length: WithdrawState.maxPinLength,
                      autofocus: false,
                      validate: (s) => s.validate,
                      disabled: (s) => s.isLoading,
                      controller: (s) => s.pinConfirmationController,
                      obscureText: true,
                      obscuringWidget: Icon(Icons.circle, color: Palette.onSurface, size: 14.sp),
                      style: TextStyle(fontSize: 20.sp),
                      keyboardType: TextInputType.number,
                      response: (s) => s.status,
                      field: (s) => s.confirmWithdrawalPin,
                      errorField: (it) => it.errors?.messages?.confirmTransactionPin,
                      onChanged: (cubit, s) => cubit.pinConfirmationChanged(s),
                      onCompleted: (cubit, s) =>
                          cubit.state.confirmWithdrawalPin.equals(cubit.state.withdrawalPin) ? onDone() : cubit.validateForm(),
                    ),
                  ),
                ),
              ],
            ),
            //
            0.03.verticalh,
            //
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 375),
                child: GridView.custom(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  physics: const NeverScrollableScrollPhysics(),
                  semanticChildCount: customKeys.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 0.07.h),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (_, i) => customKeys.elementAt(i).build(),
                    childCount: customKeys.length,
                  ),
                ),
              ),
            ),
            //
            0.02.verticalh.safeBottom,
          ],
        ),
      ),
    );
  }
}

class CustomKey {
  final Widget key;
  final VoidCallback? onPressed;

  const CustomKey({required this.key, this.onPressed});

  // Widget build() => AdaptiveInkWell(onTap: onPressed, child: key);
  Widget build() => InkWell(onTap: onPressed, child: key);
}
