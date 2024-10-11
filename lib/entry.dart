part of 'app.dart';

/// A stateless widget to render Entry.
class Entry extends StatefulWidget {
  final AppRouter router;
  final Widget child;

  const Entry(this.router, {Key? key, required this.child}) : super(key: key);

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  void initState() {
    super.initState();
    //
    context.read<ThemeCubit>().watch((_) => App.forceAppUpdate());
    context.read<NetworkInternetBloc>().add(const NetworkEvent.watchConnectivity());
    context.read<NetworkInternetBloc>().add(const NetworkEvent.watchInternet());
    context.read<RootCubit>().fetchSupportedPaymentMethods();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<BottomNavigationCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthWatcherCubit, AuthWatcherState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
            listener: (c, s) => s.status.fold(
              () {},
              (it) => it?.response.mapOrNull(
                info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty && f.code != 401).render(),
              ),
            ),
          ),
          //
          BlocListener<RootCubit, RootState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
            listener: (c, s) => s.status.fold(
              () {},
              (it) => it?.response.mapOrNull(
                info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
                success: (f) => PopupDialog.success(message: f.message, show: f.message.isNotEmpty).render(),
              ),
            ),
          ),
          //
          BlocListener<NetworkInternetBloc, NetworkInternetState>(
            listener: (c, s) => s.maybeMap(
              internet: (o) {
                context.read<NetworkInternetBloc>().add(const NetworkEvent.retry());
                navigator.popUntil((r) => r.settings.name != NotConnectedRoute.name);
                return null;
              },
              connected: (o) {
                context.read<NetworkInternetBloc>().add(const NetworkEvent.retry());
                navigator.popUntil((r) => r.settings.name != NotConnectedRoute.name);
                return null;
              },
              disconnected: (_) => PopupDialog.error(message: 'You\'re offline', duration: const Duration(seconds: 8)).render(),
              poorInternet: (e) =>
                  PopupDialog.info(message: 'Slow internet connection detected.', duration: const Duration(seconds: 8)).render(),
              error: (e) => PopupDialog.error(message: e.response.message).render(),
              orElse: () => null,
            ),
          ),
        ],
        child: ShowCaseWidget(
          blurValue: 3,
          enableAutoScroll: true,
          builder: Builder(builder: (_) => widget.child),
        ),
        // child: widget.child,
      ),
    );
  }
}
