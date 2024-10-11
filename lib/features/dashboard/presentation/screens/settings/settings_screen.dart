library settings_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget that renders SettingsScreen.
class SettingsScreen extends StatefulWidget with AutoRouteWrapper {
  const SettingsScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(title: 'Settings', centerTitle: false),
      body: AdaptiveScaffoldBody(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                AdaptiveListTile(
                  dense: true,
                  noCupertinoBorder: true,
                  title: AdaptiveText(
                    'Basic Information',
                    maxLines: 1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: Icon(
                    Utils.platform_(cupertino: CupertinoIcons.chevron_right, material: Icons.chevron_right),
                    color: Palette.iconColor,
                    size: 26,
                  ),
                  onTap: () => navigator.navigate(const EditProfileRoute()),
                ),
                //
                0.02.verticalh,
                //
                AdaptiveListTile(
                  dense: true,
                  noCupertinoBorder: true,
                  title: AdaptiveText(
                    'Change Password',
                    maxLines: 1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: Icon(
                    Utils.platform_(cupertino: CupertinoIcons.chevron_right, material: Icons.chevron_right),
                    color: Palette.iconColor,
                    size: 26,
                  ),
                  onTap: () => navigator.navigate(const EditPasswordRoute()),
                ),
                //
                0.02.verticalh,
                //
                AdaptiveListTile(
                  dense: true,
                  noCupertinoBorder: true,
                  tileColor: Palette.elevationOverlay,
                  title: AdaptiveText(
                    'Delete Account',
                    maxLines: 1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    textColor: Palette.destructiveRed,
                    textColorDark: Palette.destructiveRed,
                  ),
                  trailing: Icon(
                    Utils.platform_(cupertino: CupertinoIcons.delete, material: Icons.delete_forever_outlined),
                    color: Palette.destructiveRed,
                    size: 26,
                  ),
                  onTap: () => Utils.showAlertDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) => ReactiveAdaptiveAlertdialog<AuthCubit, AuthState>(
                      bloc: getIt<AuthCubit>(),
                      dialog: (c, s) => AdaptiveAlertdialog(
                        title: 'Delete Account',
                        titleHeight: 0.035.h,
                        width: 0.65.w,
                        contentFontSize: 18.sp,
                        titleTextAlignment: TextAlign.center,
                        titleAlignment: Alignment.center,
                        content: 'If you would like to reduce notifications, you can disable them instead.\n\n'
                            'This action is not reversible!\nProceed?',
                        contentTextAlignment: Utils.platform_(material: TextAlign.center, cupertino: TextAlign.center)!,
                        leadingButtonConfig: (d) => d.copyWith(
                          text: 'Cancel',
                          isLoading: s.isLoading,
                          isDefaultAction: true,
                        ),
                        trailingButtonConfig: (d) => d.copyWith(
                          autoPop: false,
                          width: 0.36.w,
                          text: Utils.platform_(cupertino: 'Delete', material: 'Yes, Delete'),
                          isDestructiveAction: true,
                          isLoading: s.isLoading,
                          loadingSize: const Size.square(16),
                          loadingColorLight: Palette.destructiveRed,
                          loadingColorDark: Palette.destructiveRed,
                          buttonChild: (loader) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const AdaptiveText(
                                'Yes, Delete',
                                maxLines: 1,
                                softWrap: true,
                                textAlign: TextAlign.center,
                                fontSize: 16,
                                textColor: Palette.destructiveRed,
                                textColorDark: Palette.destructiveRed,
                                isDefault: true,
                              ),
                              //
                              0.01.horizontalw,
                              //
                              if (loader != null) loader,
                            ],
                          ),
                          onPressed: () {
                            enqueue(c.read<AuthCubit>().deleteAccount);
                            c.read<BottomNavigationCubit>().reset();
                            return;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
