import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/root/bloc/subject_bloc.dart';
import 'package:eduapp_flutter/features/root/pages/course.dart';
import 'package:eduapp_flutter/features/root/pages/profile.dart';
import 'package:eduapp_flutter/features/root/pages/subject_n_degree.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  static Widget newInstance() {
    final subjectBloc = getIt<SubjectBloc>();

    return BlocProvider(
      bloc: subjectBloc,
      child: const AccountPage(),
    );
  }

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final tabs = [
    'Course',
    'Subject & Degree',
    'Profile',
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 170,
                  color: Colors.grey.shade200,
                ),
                TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  tabs: tabs
                      .map((e) => Container(
                          padding: const EdgeInsets.all(10), child: Text(e)))
                      .toList(),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      CoursesPage(),
                      SubjectAndDegreePage(),
                      ProfilePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
