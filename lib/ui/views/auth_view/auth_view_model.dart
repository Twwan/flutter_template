import 'package:flutter/material.dart';
import 'package:flutter_mvvm/services/auth_sevice/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  final BuildContext context;
  // ignore: unused_field
  final _authService = AuthService();

  AuthViewModel(this.context);
}
