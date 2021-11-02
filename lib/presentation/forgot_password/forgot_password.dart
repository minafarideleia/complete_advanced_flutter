import 'package:complete_advanced_flutter/app/di.dart';
import 'package:complete_advanced_flutter/presentation/common/state_renderer/state_render_impl.dart';
import 'package:complete_advanced_flutter/presentation/resources/assets_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/color_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/strings_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextEditingController =
  TextEditingController();

  final ForgotPasswordViewModel _viewModel =
  instance<ForgotPasswordViewModel>();

  bind() {
    _viewModel.start();
    _emailTextEditingController.addListener(
            () => _viewModel.setEmail(_emailTextEditingController.text));
  }

  @override
  void initState() {
    bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<FlowState>(
        stream: _viewModel.outputState,
        builder: (context, snapshot) {
          return snapshot.data?.getScreenWidget(context,_getContentWidget(),
                  () {
                _viewModel.forgotPassword();
              }) ??
              _getContentWidget();
        },
      ),
    );
  }

  Widget _getContentWidget() {
    return Container(
      constraints: const BoxConstraints.expand(),
      padding: const EdgeInsets.only(top: AppPadding.p100),
      color: ColorManager.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Image(image: AssetImage(ImageAssets.splashLogo)),
              const SizedBox(
                height: AppSize.s28,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: AppPadding.p28, right: AppPadding.p28),
                child: StreamBuilder<bool>(
                  stream: _viewModel.outputIsEmailValid,
                  builder: (context, snapshot) {
                    return TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailTextEditingController,
                      decoration: InputDecoration(
                          hintText: AppStrings.emailHint,
                          labelText: AppStrings.emailHint,
                          errorText: (snapshot.data ?? true)
                              ? null
                              : AppStrings.invalidEmail),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: AppSize.s28,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: AppPadding.p28, right: AppPadding.p28),
                child: StreamBuilder<bool>(
                  stream: _viewModel.outputIsAllInputValid,
                  builder: (context, snapshot) {
                    return SizedBox(
                      width: double.infinity,
                      height: AppSize.s40,
                      child: ElevatedButton(
                          onPressed: (snapshot.data ?? false)
                              ? () => _viewModel.forgotPassword()
                              : null,
                          child: const Text(AppStrings.resetPassword)),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}