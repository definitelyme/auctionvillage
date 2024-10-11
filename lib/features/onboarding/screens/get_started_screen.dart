library get_started_screen.dart;

import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// A stateless widget to render GetStartedScreen.
class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  late PageController _controller;
  int _currentPage = 0;

  static final List<Onboarding> onboarding = Onboarding.list;

  @override
  void initState() {
    _controller = PageController(initialPage: _currentPage);
    super.initState();
  }

  void nextPage() {
    if (_currentPage < onboarding.length - 1) {
      _controller.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    } else {
      navigator.pushAndPopUntil(LoginRoute(), predicate: (_) => false);
    }
  }

  void previousPage() {
    if (_currentPage != onboarding.length - 1) {
      _controller.previousPage(duration: 300.milliseconds, curve: Curves.ease);
    } else {
      navigator.pushAndPopUntil(const DashboardRoute(), predicate: (_) => false);
    }
  }

  void skip() => _controller.jumpToPage(onboarding.length - 1);

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      overlayStyle: App.customSystemOverlay(ctx: context, android: context.androidOverlay, ios: context.iosOverlay),
      body: AdaptiveScaffoldBody(
        body: Column(
          children: [
            SizedBox(
              width: 1.w,
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _currentPage,
                  count: onboarding.length,
                  onDotClicked: (index) {},
                  effect: WormEffect(
                    dotHeight: 4,
                    dotWidth: 98,
                    radius: 100,
                    spacing: 22,
                    activeDotColor: Palette.primaryColor,
                    dotColor: Palette.grey1,
                  ),
                ).addPadding(EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.01.h)).safeTop,
              ),
            ),
            //
            Expanded(
              child: PageView.custom(
                pageSnapping: true,
                physics: PageScrollPhysics(parent: Utils.physics),
                controller: _controller,
                onPageChanged: (index) => setState(() => _currentPage = index),
                childrenDelegate: SliverChildBuilderDelegate(
                  (_, i) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.09.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        0.06.verticalh,
                        //
                        AdaptiveText(
                          onboarding.elementAt(i).title,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                        ),
                        //
                        0.04.verticalh,
                        //
                        AdaptiveText(
                          onboarding.elementAt(i).description,
                          fontSize: 15,
                          textAlign: TextAlign.center,
                          textColor: Palette.subtitle,
                        ),
                        //
                        0.06.verticalh,
                        //
                        Flexible(
                          child: SizedBox.square(
                            dimension: 0.6.w,
                            child: ImageBox.asset(
                              photo: onboarding.elementAt(i).image,
                              borderRadius: BorderRadius.zero,
                              cacheHeight: onboarding.elementAt(i).cacheHeight,
                              cacheWidth: onboarding.elementAt(i).cacheWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  childCount: onboarding.length,
                ),
              ),
            ),
            //
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: AdaptiveButton(
                    text: _currentPage != onboarding.length - 1 ? 'Next' : 'Login',
                    expand: true,
                    onPressed: nextPage,
                  ),
                ),
                //
                if (_currentPage == onboarding.length - 1) ...[
                  0.01.verticalh,
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    child: AppOutlinedButton(
                      text: 'Create Account',
                      expand: true,
                      onPressed: () => navigator.pushAndPopUntil(const SignupRoute(), predicate: (_) => false),
                    ),
                  ),
                ],
                //
                0.01.verticalh,
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: AdaptiveButton(
                    text: _currentPage == 0 ? 'Skip' : (_currentPage == onboarding.length - 1 ? 'Continue as Guest' : 'Previous'),
                    expand: true,
                    backgroundColor: Palette.transparent,
                    textColor: Palette.onSurface100,
                    onPressed: _currentPage == 0 ? skip : previousPage,
                  ),
                ),
              ],
            ),
            //
            0.03.verticalh.safeBottom,
          ],
        ),
      ),
    );
  }
}
