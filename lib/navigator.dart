
import 'package:flutter/material.dart';

class AppNavigator {
  static final navigatorKey = GlobalKey<NavigatorState>();

  // Открытие страницы с новостью.
  // openCardScreen(Article article) =>
  //     navigatorKey.currentState?.push(MaterialPageRoute(
  //       builder: (context) => NewsCard(article: article),
  //     ));

  pop() => navigatorKey.currentState?.pop();
}