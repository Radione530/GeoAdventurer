import 'package:flutter/material.dart';

class AuthService {
  String? _currentUser;

  String? get currentUser => _currentUser;

  Future<String?> register(
      String username, String email, String password) async {
    try {
      if (username.isEmpty || email.isEmpty || password.isEmpty) {
        return "All fields are required.";
      }

      if (password.length < 6) {
        return "Password must be at least 6 characters.";
      }

      _currentUser = email;
      return null;
    } catch (e) {
      return "An error occurred during registration.";
    }
  }

  Future<String?> login(String email, String password) async {
    try {
      if (email.isEmpty || password.isEmpty) {
        return "Email and password are required.";
      }

      if (password.length < 6) {
        return "Password must be at least 6 characters.";
      }

      _currentUser = email;
      return null;
    } catch (e) {
      return "An error occurred during login.";
    }
  }

  Future<void> logout() async {
    _currentUser = null;
  }

  bool isLoggedIn() {
    return _currentUser != null;
  }

  String? getCurrentUser() {
    return _currentUser;
  }
}
