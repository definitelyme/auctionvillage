library not_connected_screen.dart;

import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_settings/open_settings.dart';

/// A stateless widget to render NotConnectedScreen.
class NotConnectedScreen extends StatefulWidget {
  final String? title;
  final Widget? description;

  const NotConnectedScreen({super.key, this.title, this.description});

  @override
  State<NotConnectedScreen> createState() => _NotConnectedScreenState();
}

class _NotConnectedScreenState extends State<NotConnectedScreen> {
  late NetworkInternetBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<NetworkInternetBloc>();
    super.initState();
  }

  Widget _willPopScope({required Widget child}) {
    return Utils.platform_(
      cupertino: child,
      material: WillPopScope(
        child: child,
        onWillPop: () {
          _bloc.state.mapOrNull(notLoading: (_) => _bloc.add(const NetworkEvent.retry()));
          return Future.value(true);
        },
      ),
    )!;
  }

  @override
  Widget build(BuildContext context) {
    return _willPopScope(
      child: AdaptiveScaffold(
        body: BlocBuilder<NetworkInternetBloc, NetworkInternetState>(
          builder: (c, s) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppAssets.noConnectivity(context, Size.square(0.3.w)),
                          //
                          VerticalSpace(height: 0.05.sw),
                          //
                          AdaptiveText(
                            widget.title ?? 'No internet Connection',
                            maxLines: 2,
                            maxFontSize: 21,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          if (widget.description == null)
                            Padding(
                              padding: EdgeInsets.only(top: 0.02.h, bottom: 0.01.h),
                              child: AdaptiveText.rich(
                                TextSpan(children: [
                                  const TextSpan(text: 'Please check your network '),
                                  TextSpan(
                                    text: 'settings.',
                                    recognizer: TapGestureRecognizer()..onTap = () => OpenSettings.openWifiAddNetworksSetting(),
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Palette.primary,
                                    ),
                                  ),
                                ]),
                                maxLines: 2,
                                minFontSize: 13,
                                maxFontSize: 18,
                                fontSize: 17.sp,
                                height: 1.5,
                                letterSpacing: Utils.letterSpacing,
                              ),
                            ),
                          //
                          if (widget.description != null) widget.description!,
                          //
                          VerticalSpace(height: 0.06.sw),
                          //
                          AppButton(
                            text: 'Retry',
                            isLoading: s.maybeMap(orElse: () => false, loading: (_) => true),
                            loaderColor: Palette.primary,
                            onPressed: () => _bloc.add(const NetworkEvent.retry()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //
                Center(
                  child: s.maybeMap(
                    loading: (_) => Utils.nothing,
                    connected: (_) => Padding(
                      padding: EdgeInsets.only(bottom: App.sidePadding),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // textBaseline: TextBaseline.ideographic,
                        children: [
                          const Center(child: Icon(Icons.check_circle, color: Colors.green)),
                          //
                          0.02.horizontalw,
                          //
                          const Center(child: AdaptiveText('Connected!', maxFontSize: 16)),
                        ],
                      ).safeAll,
                    ),
                    orElse: () => Padding(
                      padding: EdgeInsets.only(bottom: App.sidePadding),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // textBaseline: TextBaseline.ideographic,
                        children: [
                          const Center(
                            child: CircularProgressBar.adaptive(width: 20, height: 20, strokeWidth: 1.5, colorDark: Colors.white70),
                          ),
                          //
                          0.02.horizontalw,
                          //
                          const Center(child: AdaptiveText('Waiting for connection...', maxFontSize: 16)),
                        ],
                      ).safeAll,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
