import 'package:complete_advanced_flutter/app/di.dart';
import 'package:complete_advanced_flutter/domain/model/model.dart';
import 'package:complete_advanced_flutter/presentation/common/state_renderer/state_render_impl.dart';
import 'package:complete_advanced_flutter/presentation/resources/color_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/strings_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/values_manager.dart';
import 'package:complete_advanced_flutter/presentation/store_details/store_details_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class StoreDetailsView extends StatefulWidget {
  const StoreDetailsView({Key? key}) : super(key: key);

  @override
  _StoreDetailsViewState createState() => _StoreDetailsViewState();
}

class _StoreDetailsViewState extends State<StoreDetailsView> {
  final StoreDetailsViewModel _viewModel = instance<StoreDetailsViewModel>();

  @override
  void initState() {
    bind();
    super.initState();
  }

  bind() {
    _viewModel.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<FlowState>(
      stream: _viewModel.outputState,
      builder: (context, snapshot) {
        return Scaffold(
          body:
              snapshot.data?.getScreenWidget(context, _getContentWidget(), () {
                    _viewModel.start();
                  }) ??
                  Container(),
        );
      },
    ));
  }

  Widget _getContentWidget() {
    return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          title: Text(AppStrings.storeDetails.tr()),
          elevation: AppSize.s0,
          iconTheme: IconThemeData(
            //back button
            color: ColorManager.white,
          ),
          backgroundColor: ColorManager.primary,
          centerTitle: true,
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          color: ColorManager.white,
          child: SingleChildScrollView(
            child: StreamBuilder<StoreDetails>(
              stream: _viewModel.outputStoreDetails,
              builder: (context, snapshot) {
                return _getItems(snapshot.data);
              },
            ),
          ),
        ));
  }

  Widget _getItems(StoreDetails? storeDetails) {
    if (storeDetails != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.network(
            storeDetails.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250,
          )),
          _getSection(AppStrings.details.tr()),
          _getInfoText(storeDetails.details),
          _getSection(AppStrings.services.tr()),
          _getInfoText(storeDetails.services),
          _getSection(AppStrings.about.tr()),
          _getInfoText(storeDetails.about)
        ],
      );
    } else {
      return Container();
    }
  }

  Widget _getSection(String title) {
    return Padding(
        padding: const EdgeInsets.only(
            top: AppPadding.p12,
            left: AppPadding.p12,
            right: AppPadding.p12,
            bottom: AppPadding.p2),
        child: Text(title, style: Theme.of(context).textTheme.displaySmall));
  }

  Widget _getInfoText(String info) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s12),
      child: Text(info, style: Theme.of(context).textTheme.bodyMedium),
    );
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
