import 'package:flutter/cupertino.dart';

import 'package:flutter_mvvm/router/router.dart';

class LoaderViewModel {
  final BuildContext context;

  LoaderViewModel(this.context) {
    _initAsync();
  }

  Future<void> _initAsync() async {
    await _process().then(_showNextView);
  }

  Future<bool> _process() async {
    try {
      // smth
      return true;
    } catch (_) {
      return false;
    }
  }

  void _showNextView(bool authorized) {
    if (authorized) {
      Navigator.of(context).pushNamedAndRemoveUntil(RouteNames.authView, (route) => false);
    }
  }
}
