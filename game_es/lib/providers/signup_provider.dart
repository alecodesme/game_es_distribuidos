import 'package:flutter/material.dart';
import 'package:game_es/validators/validationItem.dart';
import 'package:game_es/validators/validations.dart';

class SignUpProvider with ChangeNotifier {
  ValidationItem _nameField = ValidationItem("", "");
  ValidationItem _lastNameField = ValidationItem("", "");
  ValidationItem _documentField = ValidationItem("", "");
  ValidationItem _birthDateField = ValidationItem("", "");
  ValidationItem _emailField = ValidationItem("", "");
  ValidationItem _password = ValidationItem("", "");
  ValidationItem _repeatedPassword = ValidationItem("", "");

  ValidationItem get name => _nameField;
  ValidationItem get lastname => _lastNameField;
  ValidationItem get document => _documentField;
  ValidationItem get birthDay => _birthDateField;
  ValidationItem get email => _emailField;
  ValidationItem get password => _password;
  ValidationItem get repeatedPassword => _repeatedPassword;

  final Validators _validators = Validators();

  void onChangeName(String value) {
    if (value.isNotEmpty) {
      _nameField = ValidationItem(value, "");
    } else {
      _nameField = ValidationItem("", "Este campo no puede quedar vacio.");
    }
    notifyListeners();
  }

  void onChangeLastName(String value) {
    if (value.isNotEmpty) {
      _lastNameField = ValidationItem(value, "");
    } else {
      _lastNameField = ValidationItem("", "Este campo no puede quedar vacio.");
    }
    notifyListeners();
  }

  void onChangeDocument(String value) {
    if (value.isNotEmpty) {
      _documentField = ValidationItem(value, "");
    } else {
      _documentField = ValidationItem("", "Este campo no puede quedar vacio.");
    }
    notifyListeners();
  }

  void onChangeBirthDay(String value) {}
  void onChangeEmail(String value) {
    if (value.isNotEmpty) {
      if (_validators.validateValidEmail(value)) {
        _emailField = ValidationItem(value, "");
      } else {
        _emailField = ValidationItem("", "No es un email válido.");
      }
    } else {
      _emailField = ValidationItem("", "Este campo no puede quedar vacío.");
    }
    notifyListeners();
  }

  void onChangePassword(String value) {
    if (value.isNotEmpty) {
      _password = ValidationItem(value, "");
    } else {
      _password = ValidationItem("", "Este campo no puede quedar vacio.");
    }
    notifyListeners();
  }

  void onChangeRepeatedPassword(String value, String originalPassword) {
    if (value.isNotEmpty) {
      if (value == originalPassword) {
        _repeatedPassword = ValidationItem(value, "");
      } else {
        _repeatedPassword = ValidationItem("", "Las contraseñas no coinciden.");
      }
    } else {
      _repeatedPassword =
          ValidationItem("", "Este campo no puede quedar vacío.");
    }
    notifyListeners();
  }
}
