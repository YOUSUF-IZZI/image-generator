import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/features/home_page/presentation_layer/widgets/mobile_layout.dart';
import 'package:image_generator/features/home_page/presentation_layer/widgets/tablet_layout.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      key: homePageScaffoldKey,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(),
      ),
      drawer: const CustomDrawer(),
      body: MediaQuery.sizeOf(context).width < 600 ? const MobileLayout() : const TabletLayout(),
    );
  }
}

