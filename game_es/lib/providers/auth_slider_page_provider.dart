import 'package:flutter/material.dart';

class AuthSliderPageProvider with ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;
  final PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  void changePage(int nextPage) {
    _currentPage = nextPage;
    _pageController.animateToPage(
      nextPage,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    notifyListeners();
  }
}
