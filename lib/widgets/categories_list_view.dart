import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/img_business.png',
      categoryName: "Business",
    ),
    CategoryModel(
      image: 'assets/images/img_technology.png',
      categoryName: "Technology",
    ),
    CategoryModel(
      image: 'assets/images/img_health.png',
      categoryName: "Health",
    ),
    CategoryModel(
      image: 'assets/images/img_sport.png',
      categoryName: "Sport",
    ),
    CategoryModel(
      image: 'assets/images/science.avif',
      categoryName: "Science",
    ),
    CategoryModel(
      image: 'assets/images/img_entertainment.png',
      categoryName: "Entertainment",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
