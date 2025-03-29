import 'package:date_app/utilities/constants/text/text_constants.dart';
import 'package:date_app/views/auth/login_view.dart';
import 'package:date_app/widgets/common/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  final GetStorage storage = GetStorage();
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false.obs;

  // FocusNode'lar
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  void init() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  void registerWithEmail() async {
    if (formKey.currentState!.validate()) {
      try {
        isLoading.value = true;
        // API çağrısı simülasyonu
        await Future.delayed(const Duration(seconds: 1));

        // TODO: API entegrasyonu yapılacak
        CustomSnackbar.showSuccess(TextConstants.registerSuccess.tr);
      } catch (e) {
        CustomSnackbar.showError(TextConstants.registerError.tr);
      } finally {
        isLoading.value = false;
      }
    }
  }

  void navigateToLogin() {
    Get.to(() => LoginView());
  }

  @override
  void onClose() {
    // Controller'ları dispose et

    emailController.dispose();
    passwordController.dispose();

    // FocusNode'ları dispose et

    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    super.onClose();
  }
}
