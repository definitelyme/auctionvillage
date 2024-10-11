library appearance_screen_button.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppearanceScreenButton extends StatelessWidget {
  const AppearanceScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      borderRadius: 100.br,
      child: AdaptiveInkWell(
        onTap: () => navigator.navigate(const AppearanceRoute()),
        borderRadius: 100.br,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Utils.foldTheme(
              context: context,
              light: () => CupertinoIcons.moon_stars_fill,
              dark: () => Utils.platform_(
                material: Icons.light_mode_rounded,
                cupertino: CupertinoIcons.light_max,
              ),
            ),
            color: App.resolveColor(Colors.black, dark: Colors.white),
          ),
        ),
      ),
    );
  }
}
