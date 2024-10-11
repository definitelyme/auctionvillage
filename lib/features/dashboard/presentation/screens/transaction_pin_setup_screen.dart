library transaction_pin_setup_screen.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

part 'pin_setup_screens/pin_setup_screen.dart';
part 'pin_setup_screens/security_question_screen.dart';

enum PinSetupScreenType {
  create('create'),
  confirm('confirm');

  final String name;

  const PinSetupScreenType(this.name);

  String get title {
    switch (this) {
      case PinSetupScreenType.create:
        return 'Create Transaction Pin';
      case PinSetupScreenType.confirm:
        return 'Confirm Transaction Pin';
    }
  }

  T when<T>({
    required T Function() create,
    required T Function() confirm,
  }) {
    switch (this) {
      case PinSetupScreenType.create:
        return create();
      case PinSetupScreenType.confirm:
        return confirm();
    }
  }
}

extension PinSetupScreenTypeStringX on String {
  PinSetupScreenType get pinSetupScreenType {
    switch (this) {
      case 'create':
        return PinSetupScreenType.create;
      case 'confirm':
        return PinSetupScreenType.confirm;
      default:
        return PinSetupScreenType.create;
    }
  }
}

/// A stateless widget to render TransactionPinSetupScreen.
class TransactionPinSetupScreen extends StatefulWidget with AutoRouteWrapper {
  final Duration duration;
  final void Function(String?)? onSuccess;
  final String type;

  const TransactionPinSetupScreen({
    Key? key,
    @pathParam required this.type,
    this.duration = const Duration(minutes: 2),
    this.onSuccess,
  }) : super(key: key);

  @override
  State<TransactionPinSetupScreen> createState() => _TransactionPinSetupScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<WithdrawCubit>(),
      child: BlocListener<WithdrawCubit, WithdrawState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _TransactionPinSetupScreenState extends State<TransactionPinSetupScreen>
    with AutomaticKeepAliveClientMixin<TransactionPinSetupScreen> {
  late WithdrawCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<WithdrawCubit>();
    super.initState();

    _cubit.initPinSetup();
    enqueue(_cubit.fetchSecurityQuestions);
  }

  @override
  bool get wantKeepAlive => true;

  TabsRouter? get _router => navigator.innerRouterOf<TabsRouter>(TransactionPinSetupRoute.name);
  List<PageRouteInfo<dynamic>> get routes =>
      [PinSetupRoute(onSuccess: widget.onSuccess), SecurityQuestionRoute(onSuccess: widget.onSuccess)];

  PinSetupScreenType get type => widget.type.pinSetupScreenType;

  Widget _maybePop({required Widget child}) {
    if (App.platform.isIOS) return child;

    return WillPopScope(
      onWillPop: () async {
        _prevPage();
        return _router?.activeIndex == PinSetupScreen.index;
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AutoTabsRouter.builder(
      homeIndex: PinSetupScreen.index,
      routes: routes,
      inheritNavigatorObservers: true,
      navigatorObservers: () => <NavigatorObserver>[AutoRouteObserver()],
      builder: (c, children, _) => _maybePop(
        child: WidgetFocus(
          unfocus: false,
          child: LazyIndexedStack(index: c.watchTabsRouter.activeIndex, children: children),
        ),
      ),
    );
  }
}

void _prevPage() {
  try {
    navigator.navigatorKey.currentContext?.let((it) => FocusScope.of(it).unfocus());
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  } catch (_) {
    if (kDebugMode) rethrow;
  }

  final router = navigator.innerRouterOf<TabsRouter>(TransactionPinSetupRoute.name);

  switch (router?.activeIndex) {
    case SecurityQuestionScreen.index:
      router?.setActiveIndex(PinSetupScreen.index);
      break;
    case PinSetupScreen.index:
    default:
      router?.current.name == TransactionPinSetupRoute.name ? router?.pop() : null;
  }
}

void _nextPage() {
  try {
    navigator.navigatorKey.currentContext?.let((it) => FocusScope.of(it).unfocus());
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  } catch (_) {
    if (kDebugMode) rethrow;
  }

  final router = navigator.innerRouterOf<TabsRouter>(TransactionPinSetupRoute.name);

  switch (router?.activeIndex) {
    case PinSetupScreen.index:
      router?.setActiveIndex(SecurityQuestionScreen.index);
      break;
    case SecurityQuestionScreen.index:
    default:
      break;
  }
}
