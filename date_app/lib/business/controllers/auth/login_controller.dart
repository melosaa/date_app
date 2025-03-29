import 'package:date_app/routes/app_routes.dart';
import 'package:date_app/utilities/constants/text/text_constants.dart';
import 'package:date_app/views/auth/register_view.dart';
import 'package:date_app/widgets/common/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final GetStorage storage = GetStorage();
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  var isLoading = false.obs;
  var isGoogleLoading = false.obs;
  var isFacebookLoading = false.obs;
  var isAppleLoading = false.obs;
  var isLoadingRegisterView;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      emailFocusNode.requestFocus();
    });
  }

  Future<void> loginWithEmail() async {
    if (emailController.text.isEmpty) {
      CustomSnackbar.showError(TextConstants.emailRequired.tr);
      return;
    }

    if (passwordController.text.isEmpty) {
      CustomSnackbar.showError(TextConstants.passwordRequired.tr);
      return;
    }

    // if (passwordController.text.length < 6) {
    //   CustomSnackbar.showError(TextConstants.passwordShort.tr);
    //   return;
    // }
  }

  // Future<void> loginWithGoogle() async {
  //   isGoogleLoading.value = true;
  //   try {
  //     // API çağrısı simülasyonu
  //     await Future.delayed(const Duration(seconds: 1));

  //     // TODO: API entegrasyonu yapılacak
  //     CustomSnackbar.showSuccess(TextConstants.googleLoginSuccess.tr);
  //     Get.toNamed(
  //       AppRoutes.verification,
  //       arguments: {
  //         'type': VerificationType.login,
  //         'email': 'google@example.com', // API'den gelecek
  //       },
  //     );
  //   } catch (e) {
  //     CustomSnackbar.showError(TextConstants.loginError.tr);
  //   } finally {
  //     isGoogleLoading.value = false;
  //   }
  // }

  // Future<void> loginWithFacebook() async {
  //   isFacebookLoading.value = true;
  //   try {
  //     // API çağrısı simülasyonu
  //     await Future.delayed(const Duration(seconds: 1));

  //     // TODO: API entegrasyonu yapılacak
  //     CustomSnackbar.showSuccess(TextConstants.facebookLoginSuccess.tr);
  //     Get.toNamed(
  //       AppRoutes.verification,
  //       arguments: {
  //         'type': VerificationType.login,
  //         'email': 'facebook@example.com', // API'den gelecek
  //       },
  //     );
  //   } catch (e) {
  //     CustomSnackbar.showError(TextConstants.loginError.tr);
  //   } finally {
  //     isFacebookLoading.value = false;
  //   }
  // }

  // Future<void> loginWithApple() async {
  //   isAppleLoading.value = true;
  //   try {
  //     // API çağrısı simülasyonu
  //     await Future.delayed(const Duration(seconds: 1));

  //     // TODO: API entegrasyonu yapılacak
  //     CustomSnackbar.showSuccess(TextConstants.appleLoginSuccess.tr);
  //     Get.toNamed(
  //       AppRoutes.verification,
  //       arguments: {
  //         'type': VerificationType.login,
  //         'email': 'apple@example.com', // API'den gelecek
  //       },
  //     );
  //   } catch (e) {
  //     CustomSnackbar.showError(TextConstants.loginError.tr);
  //   } finally {
  //     isAppleLoading.value = false;
  //   }
  // }

  void navigateToRegister() {
    Get.to(() => RegisterView());
  }

  void navigateToForgotPassword() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

  // void navigateToVerification() {
  //   Get.to(() => VerificationView());
  // }

  // void onTermsOfUsePressed() {
  //   TermsBottomSheet.show(Get.context!);
  // }

  // void onPrivacyPolicyPressed() {
  //   PrivacyBottomSheet.show(Get.context!);
  // }

  void onForgotPasswordPressed() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.onClose();
  }
}
