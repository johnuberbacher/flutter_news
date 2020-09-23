import 'package:flutter_news/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categoryList = List<CategoryModel>();
  CategoryModel categoryModel;

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "assets/images/category/business.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "assets/images/category/entertainment.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "assets/images/category/health.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "assets/images/category/health.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "assets/images/category/science.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "assets/images/category/sports.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "assets/images/category/technology.jpg";
  categoryList.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "assets/images/category/general.jpg";
  categoryList.add(categoryModel);

  return categoryList;
}
