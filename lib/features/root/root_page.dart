import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/root/bloc/root_bloc.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  static const String routeName = '/main';

  static Widget newInstance() {
    final bloc = getIt<RootBloc>();

    return BlocProvider(
      bloc: bloc,
      child: const RootPage(),
    );
  }

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RootBloc>(context)!;
    return StreamBuilder(
        stream: bloc.focusedPage,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const SizedBox();
          }

          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  backgroundColor: Theme.of(context).primaryColor,
                  selectedLabelTextStyle: const TextStyle(color: Colors.white),
                  unselectedLabelTextStyle: TextStyle(color: Colors.grey.shade300),
                  unselectedIconTheme: IconThemeData(color: Colors.grey.shade300),
                  selectedIconTheme: const IconThemeData(color: Colors.black87),
                  selectedIndex: Root.values.indexOf(snapshot.data!),
                  groupAlignment: -1,
                  labelType: NavigationRailLabelType.all,
                  onDestinationSelected: bloc.onDestinationChanged,
                  destinations: Root.values
                      .map<NavigationRailDestination>(
                        (root) => NavigationRailDestination(
                          icon: root.icon,
                          selectedIcon: root.selectedIcon,
                          label: Text(root.label),
                        ),
                      )
                      .toList(),
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(
                  child: snapshot.data!.page,
                ),
              ],
            ),
          );
        });
  }
}
