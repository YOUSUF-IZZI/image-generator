import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final onboardingPageControllerProvider = Provider<PageController>(
        (ref) => PageController()
);