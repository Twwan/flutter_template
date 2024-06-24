import 'package:flutter/material.dart';
import 'package:flutter_mvvm/ui/views/loader_view/loader_view.dart';

class RouteNames {
  static String loaderView = '/';
  static String welcomeView = '/welcome';
  static String authView = '/welcome/page';
  static String pageView = '/welcome/page2';
}

class AppRouter {
  Map<String, Widget Function(BuildContext)> routes = {
    // example:

    RouteNames.loaderView: LoaderView.create,
    // RouteNames.welcomeView: (context) => ChangeNotifierProvider(create: WelcomeViewModel.new, child: const WelcomeView()),
    // RouteNames.authView: (context) => ChangeNotifierProvider(create: AuthViewModel.new, child: const PageView()),
    // RouteNames.pageView: (context) => const PageView(),
  };
}
