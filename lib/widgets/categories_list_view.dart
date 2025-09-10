import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      imageAssetUrl: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/Entertainment.jpg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/general.avif',
      categoryName: 'General',
    ),
    CategoryModel(imageAssetUrl: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(imageAssetUrl: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
