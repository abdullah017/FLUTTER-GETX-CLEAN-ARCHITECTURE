import 'package:flutter/material.dart';
import 'package:get/get.dart';
/// --------------------------------------------
/// There are many amazing [Function]s in this class.
/// Especialy in user interactions.
/// You can find and use on your Controller wich is the Controller extends [BaseController].
class BaseCommonWidgets implements _CommonWidgetsInterface {


  @override
  void showSnackBar({String title = "", String message = ""}) {
    Get.snackbar(title, message,
      backgroundColor: Colors.black45,
      barBlur: 8.0,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void showErrorSnackBar({String title = "", String message = ""}) {
    Get.snackbar(title, message,
        backgroundColor: const Color(0x8AD32F2F),
        barBlur: 10.0,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
        duration: const Duration(seconds: 2),
        icon: const Icon(Icons.error, color: Colors.white)
    );
  }

  @override
  void showSuccessSnackBar({String title = "", String message = ""}) {
    Get.snackbar(title, message,
        backgroundColor: const Color(0x8A2E7D32),
        barBlur: 10.0,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
        duration: const Duration(seconds: 2),
        icon: const Icon(Icons.check_circle, color: Colors.white)
    );
  }

  @override
  void showSimpleSnackBar({String message = ""}) {
    Get.showSnackbar(GetSnackBar(
      messageText: Text(message, style: const TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 2),
    ));
  }

  @override
  void showSimpleErrorSnackBar({String message = ""}) {
    Get.showSnackbar(GetSnackBar(
      backgroundColor: Colors.red,
      icon: const Icon(Icons.error, color: Colors.white),
      messageText: Text(message, style: const TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 3),
    ));
  }

  @override
  void showSimpleSuccessSnackBar({String message = ""}) {
    Get.showSnackbar(GetSnackBar(
      backgroundColor: Colors.green,
      icon: const Icon(Icons.check_circle, color: Colors.white),
      messageText: Text(message, style: const TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 3),
    ));
  }

  @override
  void hideDialog() {
    if (Get.isDialogOpen!) Get.back();
  }

  @override
  void showLoadingDialog() {
    Get.dialog(
        Material(
          color: Colors.black26,
          child: Center(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: const CircularProgressIndicator()),
          ),
        ),
        barrierDismissible: false,
        name: "Loading Dialog"
    );
  }

  @override
  void showAlert({
    String title = "Alert",
    TextStyle? titleStyle,
    Widget? content,
    required VoidCallback onConfirm,
    required VoidCallback onCancel,
    VoidCallback? onCustom,
    Color? cancelTextColor,
    Color? confirmTextColor,
    required String textConfirm,
    required String textCancel,
    String? textCustom,
    Widget? confirm,
    Widget? cancel,
    Widget? custom,
    Color? backgroundColor,
    bool barrierDismissible = true,
    Color? buttonColor,
    String middleText = "Dialog made in 3 lines of code",
    TextStyle? middleTextStyle,
    double radius = 20.0,
    List<Widget>? actions,
   required WillPopCallback onWillPop
  }) {
    Get.defaultDialog(
        title : title,
        titleStyle : titleStyle,
        content : content,
        onConfirm : onConfirm,
        onCancel : onCancel,
        onCustom : onCustom,
        cancelTextColor : cancelTextColor,
        confirmTextColor : confirmTextColor,
        textConfirm : textConfirm,
        textCancel : textCancel,
        textCustom : textCustom,
        confirm : confirm,
        cancel : cancel,
        custom : custom,
        backgroundColor : backgroundColor,
        barrierDismissible : barrierDismissible,
        buttonColor : buttonColor,
        middleText : middleText,
        middleTextStyle : middleTextStyle,
        radius : radius,
        actions : actions,
        onWillPop : onWillPop
    );
  }
}



abstract class _CommonWidgetsInterface {

  void showSnackBar({String title = "", String message = ""});

  void showErrorSnackBar({String title = "", String message = ""});

  void showSuccessSnackBar({String title = "", String message = ""});

  void showSimpleSnackBar({String message = ""});

  void showSimpleErrorSnackBar({String message = ""});

  void showSimpleSuccessSnackBar({String message = ""});

  void showLoadingDialog();

  void showAlert({
String title = "Alert",
    TextStyle? titleStyle,
    Widget? content,
    required VoidCallback onConfirm,
    required VoidCallback onCancel,
    VoidCallback? onCustom,
    Color? cancelTextColor,
    Color? confirmTextColor,
    required String textConfirm,
    required String textCancel,
    String? textCustom,
    Widget? confirm,
    Widget? cancel,
    Widget? custom,
    Color? backgroundColor,
    bool barrierDismissible = true,
    Color? buttonColor,
    String middleText = "Dialog made in 3 lines of code",
    TextStyle? middleTextStyle,
    double radius = 20.0,
    List<Widget>? actions,
   required WillPopCallback onWillPop
  });

  void hideDialog();

}