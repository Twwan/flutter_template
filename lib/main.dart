import 'package:flutter/material.dart';

import 'package:flutter_mvvm/router/router.dart';
import 'package:flutter_mvvm/ui/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = _App();
  runApp(app);
}

class _App extends StatelessWidget {
  final router = AppRouter();

  _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Title',
      theme: lightTheme(), // add state.isDark ?
      // with Bloc
      // if need
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.loaderView,
      routes: router.routes,
    );
  }
}
