import 'package:flutter/material.dart';
import 'package:game_es/constants/colors.dart';

class Carousel extends StatefulWidget {
  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<String> imageList = [
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-3.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-2.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-3.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-4.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-5.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-6.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-1.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-4.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-5.jpg',
    'https://justfunfacts.com/wp-content/uploads/2022/03/spider-man-6.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: imageList.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.network(
                  imageList[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imageList.length,
              (index) => buildDot(index, _currentPage == index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index, bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.secondaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
