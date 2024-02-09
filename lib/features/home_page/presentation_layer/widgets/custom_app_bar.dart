import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../generated/l10n.dart';
import '../../application_layer/save_image_method.dart';
import '../state_management/generated_image_provider.dart';
import 'app_bar_leading_widget.dart';


class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key,});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(generatedImageProvider);
    return AppBar(
      title: Text(S.of(context).appBar_name),
      centerTitle: true,
      leading: const AppBarLeadingWidget(),
      actions: url != null ? [
        IconButton(
          icon: const Icon(Icons.download),
          onPressed: () {
            saveNetworkImage(ref.read(generatedImageProvider.notifier).getImageUrl());
          },
        ) ,
      ] : null,
    );
  }
}