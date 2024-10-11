library chat_screen.dart;

import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render ChatScreen.
class ChatScreen extends StatefulWidget with AutoRouteWrapper {
  static const index = 3;

  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ChatScreenState extends State<ChatScreen> with AutomaticKeepAliveClientMixin<ChatScreen>, ChatScreenKeyMixin {
  @override
  void initState() {
    settings.runAllTours(context, keys);
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      backgroundColor: Palette.primary,
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Chats',
        titleStyle: App.titleStyle,
        elevation: 0,
        showCupertinoCustomLeading: false,
        showMaterialCustomLeading: false,
        implyLeading: false,
        centerTitle: true,
        backgroundColor: App.platform.cupertino(Palette.primary),
        cupertinoImplyLeading: false,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
        actions: [
          // ...Utils.platform_(
          //   cupertino: [Center(child: AdaptiveText('Chats', maxLines: 1, style: App.titleStyle))],
          //   material: [Utils.nothing],
          // )!,
        ],
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            //   child: SearchWidget(
            //     filterKey: filterKey,
            //     searchKey: searchKey,
            //     filterShowcaseTitle: 'Filter',
            //     filterShowcaseDescription: 'Choose from a variety of filters\nto narrow down your search results.',
            //     searchShowcaseTitle: 'Search',
            //     searchShowcaseDescription: 'Search for your favorite vendors.',
            //   ),
            // ),
            //
            0.02.verticalh,
            //
            Expanded(
              child: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                child: DragToRefresh(
                  initialRefresh: true,
                  enablePullUp: true,
                  // onRefresh: onRefresh,
                  // onLoading: onLoadMore,
                  child: CustomScrollView(
                    primary: false,
                    physics: Utils.physics,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate.fixed([
                          0.1.verticalh,
                          //
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppAssets.comingSoon,
                                //
                                AdaptiveText(
                                  'Coming soon!',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
