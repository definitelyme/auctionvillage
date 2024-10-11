library my_reviews_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

/// A stateless widget to render MyReviewsScreen.
class MyReviewsScreen extends StatefulWidget with AutoRouteWrapper {
  const MyReviewsScreen({Key? key}) : super(key: key);

  @override
  State<MyReviewsScreen> createState() => _MyReviewsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return InheritOrCreateBlocProvider(
      orElse: () => getIt<DealCubit>(),
      child: BlocListener<DealCubit, DealState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _MyReviewsScreenState extends State<MyReviewsScreen> {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<DealCubit>();
    super.initState();
  }

  void onLoadMore(DragToRefreshState refresh) {
    enqueue(
      () => _cubit.myRatings(
        nextPage: true,
        perPage: 10,
        endOfList: () => refresh.loadNoData(),
        callback: (_) => refresh.loadComplete(),
      ),
    );
  }

  void onRefresh(DragToRefreshState refresh) {
    enqueue(() => _cubit.myRatings(perPage: 10));
    refresh.refreshCompleted(resetFooterState: true);
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'My Reviews',
      useSafeArea: true,
      initialRefresh: true,
      isPaginated: true,
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: onRefresh,
      onLoading: onLoadMore,
      slivers: [
        BlocSelector<DealCubit, DealState, Rating?>(
          selector: (s) => s.rating,
          builder: (c, rating) => SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  if (rating != null) ...[
                    AdaptiveText(
                      '${rating.rating.getExact().roundToIntOrDouble}',
                      fontSize: 37.sp,
                      textColor: const Color(0xff222222),
                      textColorDark: Palette.headingDark,
                      fontWeight: FontWeight.w600,
                      letterSpacing: Utils.letterSpacing,
                    ),
                    //
                    0.02.horizontalw,
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Disabled(
                          disabled: true,
                          opacity: 1,
                          child: RatingBar(
                            glow: false,
                            allowHalfRating: true,
                            tapOnlyMode: true,
                            initialRating: rating.rating.getExact(),
                            minRating: 1,
                            maxRating: 5,
                            itemSize: 0.05.sw,
                            direction: Axis.horizontal,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.005.sw),
                            ratingWidget: RatingWidget(
                              full: const Icon(Icons.star_sharp, color: Colors.amber),
                              half: const Icon(Icons.star_half_sharp, color: Colors.amber),
                              empty: const Icon(Icons.star_border_sharp, color: Colors.amber),
                            ),
                            onRatingUpdate: (_) {},
                          ),
                        ),
                        //
                        AdaptiveText(
                          '124 reviews',
                          maxLines: 1,
                          softWrap: true,
                          fontSize: 16.sp,
                          textColor: const Color(0xff989DB3),
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        //
        BlocSelector<DealCubit, DealState, Rating?>(
          selector: (s) => s.rating,
          builder: (c, rating) => SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                if (rating != null) ...[
                  0.02.verticalh,
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    child: GroupedRating(title: 'Delivery', rating: rating.delivery.getExact()),
                  ),
                  //
                  0.025.verticalh,
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    child: GroupedRating(title: 'Responsive', rating: rating.responsiveness.getExact()),
                  ),
                  //
                  0.025.verticalh,
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    child: GroupedRating(title: 'Reliable', rating: rating.reliability.getExact()),
                  ),
                  //
                  0.025.verticalh,
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                    child: GroupedRating(title: 'Quality', rating: rating.quality.getExact()),
                  ),
                  //
                  Divider(thickness: 1.5, height: 35, indent: App.sidePadding * 0.7, endIndent: App.sidePadding * 0.7),
                ],
              ],
            ),
          ),
        ),
        //
        BlocSelector<DealCubit, DealState, KtList<Review>?>(
          selector: (s) => s.rating?.reviews,
          builder: (c, reviews) {
            if (reviews == null || reviews.isEmpty()) return const SliverToBoxAdapter(child: Utils.nothing);

            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) {
                  final value = reviews.get(i);

                  return SafeArea(
                    top: false,
                    left: false,
                    right: false,
                    bottom: i >= reviews.size - 1,
                    child: MyHero(
                      tag: null,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Disabled(
                                  disabled: true,
                                  child: RatingBar(
                                    glow: false,
                                    allowHalfRating: true,
                                    tapOnlyMode: true,
                                    initialRating: value.rating.getExact(),
                                    minRating: 1,
                                    maxRating: 5,
                                    itemSize: 0.05.sw,
                                    direction: Axis.horizontal,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.005.sw),
                                    ratingWidget: RatingWidget(
                                      full: const Icon(Icons.star_sharp, color: Colors.amber),
                                      half: const Icon(Icons.star_half_sharp, color: Colors.amber),
                                      empty: const Icon(Icons.star_border_sharp, color: Colors.amber),
                                    ),
                                    onRatingUpdate: (_) {},
                                  ),
                                ),
                                //
                                if (value.review.getOrNull != null || value.review.getOrEmpty != '') ...[
                                  0.01.verticalh,
                                  //
                                  AdaptiveText(
                                    value.review.getOrEmpty,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: Utils.letterSpacing,
                                  ),
                                ],
                                //
                                0.01.verticalh,
                                //
                                if (value.user != null)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AdaptiveText.rich(
                                        TextSpan(children: [
                                          if (value.user!.fullName.isValid) ...[
                                            const TextSpan(text: 'by '),
                                            TextSpan(text: value.user!.fullName.getOrEmpty),
                                            const TextSpan(text: ' '),
                                          ],
                                        ]),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: Utils.letterSpacing,
                                        style: const TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      //
                                      AdaptiveText.rich(
                                        TextSpan(children: [
                                          if (value.createdAt != null)
                                            TextSpan(
                                              text: DateFormat('dd MMM yyyy').format(value.createdAt!),
                                              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                                            ),
                                        ]),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: Utils.letterSpacing,
                                        style: const TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                          //
                          if (i < reviews.size - 1) ...[
                            0.014.verticalh,
                            //
                            Divider(thickness: 1.5, height: 0, indent: App.sidePadding * 0.7, endIndent: App.sidePadding * 0.7),
                          ],
                          //
                          0.015.verticalh,
                        ],
                      ),
                    ),
                  );
                },
                childCount: reviews.size,
              ),
            );
          },
        ),
      ],
    );
  }
}
