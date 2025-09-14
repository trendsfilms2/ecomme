import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  AppUser? _user;

  AppUser? get user => _user;

  Future<void> login(String email, String password) async {
    final result = await _authService.login(email, password);
    if (result != null) {
      _user = AppUser(
        userId: result.uid,
        name: result.displayName ?? '',
        email: result.email ?? '',
        phone: '',
        role: 'customer',
      );
      notifyListeners();
    }
  }

  Future<void> signUp(String email, String password) async {
    final result = await _authService.signUp(email, password);
    if (result != null) {
      _user = AppUser(
        userId: result.uid,
        name: result.displayName ?? '',
        email: result.email ?? '',
        phone: '',
        role: 'customer',
      );
      notifyListeners();
    }
  }

  void logout() async {
    await _authService.logout();
    _user = null;
    notifyListeners();
  }
}
