import 'package:complete_advanced_flutter/app/di.dart';
import 'package:complete_advanced_flutter/presentation/register/register_viewmodel.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterViewModel _viewModel = instance<RegisterViewModel>();
  final _formKey = GlobalKey<FormState>();

  TextEditingController _userNameTextEditingController =
      TextEditingController();
  TextEditingController _mobileNumberTextEditingController =
      TextEditingController();
  TextEditingController _userEmailEditingController = TextEditingController();
  TextEditingController _userPasswordEditingController =
      TextEditingController();

  @override
  void initState() {
    _bind();
    super.initState();
  }

  _bind() {
    _viewModel.start();
    _userNameTextEditingController.addListener(() {
      _viewModel.setUserName(_userNameTextEditingController.text);
    });

    _userPasswordEditingController.addListener(() {
      _viewModel.setPassword(_userPasswordEditingController.text);
    });

    _userEmailEditingController.addListener(() {
      _viewModel.setEmail(_userEmailEditingController.text);
    });

    _mobileNumberTextEditingController.addListener(() {
      _viewModel.setMobileNumber(_mobileNumberTextEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
