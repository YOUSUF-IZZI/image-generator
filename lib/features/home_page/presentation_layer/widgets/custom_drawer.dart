import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../generated/l10n.dart';
import '../state_management/localization_provider.dart';
import 'dark_mode_switcher.dart';


GlobalKey<ScaffoldState> homePageScaffoldKey = GlobalKey();

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: DrawerHeader(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Lottie.asset('assets/images/onboarding2.json',),
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListTile(
                    leading: Icon(CupertinoIcons.moon_stars, size: 24, color: Theme.of(context).iconTheme.color,),
                    title: Text(S.of(context).dark_mode, style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color)),
                    trailing: const ThemeModeSwitcher(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ListTile(
                  leading: Icon(Icons.language, size: 24, color: Theme.of(context).iconTheme.color,),
                  title: Text(S.of(context).languages, style: TextStyle(color: Theme.of(context).appBarTheme.titleTextStyle?.color),),
                  trailing: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                    style: TextStyle(color: Theme.of(context).appBarTheme.titleTextStyle?.color),
                    value: locale,
                    onChanged: (value) {
                      ref.read(localeProvider.notifier).changeLocale(value.toString());
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'en',
                        child: Text('English'),
                      ),
                      DropdownMenuItem(
                        value: 'ar',
                        child: Text('العربية'),
                      ),
                      DropdownMenuItem(
                        value: 'tr',
                        child: Text('Türkçe'),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ListTile(
                  leading: Icon(CupertinoIcons.link, size: 24, color: Theme.of(context).iconTheme.color,),
                  title: Text(S.of(context).contact_us, style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color,),),
                  trailing: MaterialButton(
                    onPressed: (){
                      launchUrl(Uri.parse('https://linktr.ee/Yousif_Ezzi'));
                    },
                    child: Text(S.of(context).link, style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline), ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.red, Colors.pink, Colors.purple, Colors.blue, Colors.green],
                        ).createShader(bounds);
                      },
                      child: const Text('QueueTeam', style: TextStyle(fontSize: 24),),
                    ),
                    const SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
