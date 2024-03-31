import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flashlist_flutter/src/branding/logo_branding_vertical.dart';
import 'package:flashlist_flutter/src/features/authentication/application/authentication.dart';
import 'package:flashlist_flutter/src/features/routing/app_router.dart';
import 'package:flashlist_flutter/src/utils/context_helper.dart';

class SideDrawer extends ConsumerWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: LogoBrandingVertical(),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(localizationsOf(context).profile),
            onTap: () {
              context.goNamed(AppRoute.profile.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: Text(localizationsOf(context).connectionsAndRequests),
            onTap: () {
              context.goNamed(AppRoute.connections.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(localizationsOf(context).settings),
            onTap: () {
              context.goNamed(AppRoute.settings.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text(localizationsOf(context).signOut),
            onTap: () {
              ref.read(authenticationControllerProvider).signOut();
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
