import 'package:flutter/cupertino.dart';

enum TabType { home, demo }

extension TabItem on TabType {
  Icon get icon {
    switch (this) {
      case TabType.home:
        return const Icon(CupertinoIcons.home, size: 25);
      case TabType.demo:
        return const Icon(CupertinoIcons.news, size: 25);
     
    }
  }

  String get title {
    switch (this) {
      case TabType.home:
        return "Home";
      case TabType.demo:
        return "Demo";
    
    }
  }
}
