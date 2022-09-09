import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_clean_architecture/src/app/core/widget/base_widgets.dart';
import 'package:new_version/new_version.dart';

///
/// --------------------------------------------
/// [Example]
///
/// class HomeController extends BaseController {
///
///   var count = 0.obs;
///
///   @override
///   void onInit() {
///     super.onInit();
///   }
///
///   void increment() => count ++;
///
/// }
///
/// RECOMENDED FOR your [Controller].
/// Please extends to your [Controller].
/// read the [Example] above.
/// Utilities, WidgetState, ScreenState
class BaseController extends GetxController with BaseCommonWidgets {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<bool> onWillPop() async {
    return !await navigatorKey.currentState!.maybePop();
  }
  final box = GetStorage();
  bool isLoadMore = false;
  bool withScrollController = false;
  ScrollController scrollController = ScrollController();
  set setEnableScrollController(bool value) => withScrollController = value;

  ///[Calling showAlertIfNecessary with your app's
  ///BuildContext will check if the app can be updated,
  ///and will automatically display a platform-specific alert that the user can use to go to the app store.]
  basicStatusCheck(NewVersion newVersion) {
    newVersion.showAlertIfNecessary(context: Get.context!);
  }

  ///If you want to create a custom alert or use the app version information differently, call getVersionStatus.
  ///<This will return a Future<VersionStatus> with information about the local and app store versions of the app
  advancedStatusCheck(NewVersion newVersion) async {
    final status = await newVersion.getVersionStatus();
    if (status != null) {
      debugPrint(status.releaseNotes);
      debugPrint(status.appStoreLink);
      debugPrint(status.localVersion);
      debugPrint(status.storeVersion);
      debugPrint(status.canUpdate.toString());
      newVersion.showUpdateDialog(
        context: Get.context!,
        versionStatus: status,
        dialogTitle: 'Custom Title', //=> YOUR ALERT TITLE TEXT
        dialogText: 'Custom Text', //=> YOUR ALERT DESCRIPTION TEXT
        updateButtonText:
            'Custom update button text', //=> YOUR UPDATE  TITLE TEXT
        dismissButtonText:
            'Custom dismiss button text', //=> YOUR DISMISS  TITLE TEXT
        dismissAction: () {}, //=> YOUR FUNCTION  TITLE TEXT
      );
    }
  }

  checkAppVersion() {
    /// Instantiate NewVersion manager object (Using GCP Console app as example)
    final newVersion = NewVersion(
        //iOSId: 'com.google.Vespa', //=> YOUR IOS APP ID
        //androidId: 'com.google.android.apps.cloudconsole', //=> YOUR GOOGLE APP ID
        );

    /// You can let the plugin handle fetching the status and showing a dialog,
    /// or you can fetch the status and display your own dialog, or no dialog.
    bool? simpleBehavior;
    if (simpleBehavior == true) {
      basicStatusCheck(newVersion);
    } else {
      advancedStatusCheck(newVersion);
    }
  }

  @override
  void onInit() {
    super.onInit();

    ///[SCROLL CONTROLLER]
    if (withScrollController) {
      scrollController = ScrollController();
      scrollController.addListener(_scrollListener);
    }
  }

  void onRefresh() {}

  void onLoadMore() {}

  void _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      if (!isLoadMore) {
        isLoadMore = true;
        update();
        onLoadMore();
      }
    }
    _innerBoxScrolled();
  }

  void _innerBoxScrolled() {
    if (scrollController.offset <= 60 && scrollController.offset > 40) {
      // if(!innerBoxIsScrolled) {
      //   innerBoxIsScrolled = true;
      //   update();
      // }
    }
    if (scrollController.offset >= 0 && scrollController.offset <= 40) {
      // if(innerBoxIsScrolled) {
      //   innerBoxIsScrolled = false;
      //   update();
      // }
    }
  }
}
