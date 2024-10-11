import 'package:auctionvillage/utils/utils.dart';

class Onboarding {
  final String title;
  final String description;
  final String image;
  final int? cacheWidth;
  final int? cacheHeight;

  const Onboarding({
    required this.title,
    required this.description,
    required this.image,
    this.cacheWidth,
    this.cacheHeight,
  });

  static List<Onboarding> list = const [
    Onboarding(
      title: 'Create your own\nstore for free',
      description: 'Create your store for free with no hosting fee\nrequired and share your store link on the go',
      image: AssetsImagesDashboard.onboarding1PNG,
      cacheHeight: 648,
      cacheWidth: 648,
    ),
    Onboarding(
      title: 'Choose between\nAuction or Buy now',
      description: 'Whether you prefer auctioning your item or\nselling it outright, The choice is up to you',
      image: AssetsImagesDashboard.onboarding3PNG,
      cacheHeight: 648,
      cacheWidth: 648,
    ),
    Onboarding(
      title: 'Display your goods to your\ntarget audience',
      description: 'Auctionsvillage is an online marketplace for\nall types of goods. Easily display your goods',
      image: AssetsImagesDashboard.onboarding3PNG,
      cacheHeight: 648,
      cacheWidth: 648,
    ),
  ];
}
