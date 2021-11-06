import 'dart:async';
import 'dart:io';

import 'package:complete_advanced_flutter/domain/usecase/register_usecase.dart';
import 'package:complete_advanced_flutter/presentation/base/baseviewmodel.dart';

class RegisterViewModel extends BaseViewModel
    with RegisterViewModelInput, RegisterViewModelOutput {
  StreamController _userNameStreamController =
      StreamController<String>.broadcast();
  StreamController _mobileNumberStreamController =
      StreamController<String>.broadcast();

  StreamController _emailStreamController =
      StreamController<String>.broadcast();

  StreamController _passwordStreamController =
      StreamController<String>.broadcast();

  StreamController _profilePictureStreamController =
      StreamController<File>.broadcast();

  StreamController _isAllInputsValidStreamController =
      StreamController<void>.broadcast();

  RegisterUseCase _registerUseCase;

  RegisterViewModel(this._registerUseCase);

  //  -- inputs
  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    _isAllInputsValidStreamController.close();
    _userNameStreamController.close();
    _mobileNumberStreamController.close();
    _emailStreamController.close();
    _passwordStreamController.close();
    _profilePictureStreamController.close();
    super.dispose();
  }

  @override
  Sink get inputEmail => _emailStreamController.sink;

  @override
  Sink get inputMobileNumber => _mobileNumberStreamController.sink;

  @override
  Sink get inputProfilePicture => _profilePictureStreamController.sink;

  @override
  Sink get inputUPassword => _passwordStreamController.sink;

  @override
  Sink get inputUserName => _userNameStreamController.sink;

  // -- outputs

  @override
  Stream<bool> get outputIsUserNameValid => _userNameStreamController.stream
      .map((userName) => _isUserNameValid(userName));

  @override
  Stream<String?> get outputErrorUserName => outputIsUserNameValid
      .map((isUserNameValid) => isUserNameValid ? null : "Invalid username");

  @override
  // TODO: implement outputErrorEmail
  Stream<String?> get outputErrorEmail => throw UnimplementedError();

  @override
  // TODO: implement outputErrorMobileNumber
  Stream<String?> get outputErrorMobileNumber => throw UnimplementedError();

  @override
  // TODO: implement outputErrorPassword
  Stream<String?> get outputErrorPassword => throw UnimplementedError();

  @override
  // TODO: implement outputIsEmailValid
  Stream<bool> get outputIsEmailValid => throw UnimplementedError();

  @override
  // TODO: implement outputIsMobileNumberValid
  Stream<bool> get outputIsMobileNumberValid => throw UnimplementedError();

  @override
  // TODO: implement outputIsPasswordValid
  Stream<bool> get outputIsPasswordValid => throw UnimplementedError();

  @override
  // TODO: implement outputIsProfilePictureValid
  Stream<File> get outputIsProfilePictureValid => throw UnimplementedError();

  @override
  register() {
    // TODO: implement register
    throw UnimplementedError();
  }

  // -- private methods
  bool _isUserNameValid(String userName) {
    return userName.length >= 8;
  }
}

abstract class RegisterViewModelInput {
  register();

  Sink get inputUserName;

  Sink get inputMobileNumber;

  Sink get inputEmail;

  Sink get inputUPassword;

  Sink get inputProfilePicture;
}

abstract class RegisterViewModelOutput {
  Stream<bool> get outputIsUserNameValid;

  Stream<String?> get outputErrorUserName;

  Stream<bool> get outputIsMobileNumberValid;

  Stream<String?> get outputErrorMobileNumber;

  Stream<bool> get outputIsEmailValid;

  Stream<String?> get outputErrorEmail;

  Stream<bool> get outputIsPasswordValid;

  Stream<String?> get outputErrorPassword;

  Stream<File> get outputIsProfilePictureValid;
}
