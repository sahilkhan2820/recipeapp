class RecipeModel {
  static List<Recipe> items = [];

  // RecipeModel({
  //   this.items,
  // });

  // RecipeModel.fromJson(Map<String, dynamic> json)
  //     : items = (json['items'] as List?)
  //           ?.map((dynamic e) => Recipe.fromJson(e as Map<String, dynamic>))
  //           .toList();

  // Map<String, dynamic> toJson() =>
  //     {'items': items?.map((e) => e.toJson()).toList()};
}

class Recipe {
  final int? id;
  final String? name;
  final String? slug;
  final String? procedures;
  final String? servingNumber;
  final String? servingCost;
  final String? budgetRange;
  final String? preparationTime;
  final String? cookingTime;
  final String? thumbnailImage;
  final String? thumbnailImageTag;
  final String? featuredImage;
  final String? featuredImageTag;
  final String? excerpt;
  final String? chefTip;
  final String? lusogNote;
  final String? created;
  final int? bestProductId;
  final String? bestProductName;
  final String? bestProductSlug;
  final String? bestProductImage;
  final String? bestProductThumbnailImage;
 // final int bestProductParentCategoryId;
  final String? bestProductParentCategoryName;
  final String? bestProductParentCategorySlug;
  final int? isRecipeOfTheDay;
  final List<CookingSkills>? cookingSkills;
  final List<CookingTools>? cookingTools;
  // final Ingredients? ingredients;
  // final List<MealType>? mealType;
  // final MetaData? metaData;
  final String? averageRating;
  final int? totalRatingCount;

  Recipe({
    this.id,
    this.name,
    this.slug,
    this.procedures,
    this.servingNumber,
    this.servingCost,
    this.budgetRange,
    this.preparationTime,
    this.cookingTime,
    this.thumbnailImage,
    this.thumbnailImageTag,
    this.featuredImage,
    this.featuredImageTag,
    this.excerpt,
    this.chefTip,
    this.lusogNote,
    this.created,
    this.bestProductId,
    this.bestProductName,
    this.bestProductSlug,
    this.bestProductImage,
    this.bestProductThumbnailImage,
  //  required this.bestProductParentCategoryId,
    this.bestProductParentCategoryName,
    this.bestProductParentCategorySlug,
    this.isRecipeOfTheDay,
    this.cookingSkills,
    this.cookingTools,
    // this.ingredients,
    // this.mealType,
    // this.metaData,
    this.averageRating,
    this.totalRatingCount,
  });

  Recipe.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        slug = json['slug'] as String?,
        procedures = json['procedures'] as String?,
        servingNumber = json['serving_number'] as String?,
        servingCost = json['serving_cost'] as String?,
        budgetRange = json['budget_range'] as String?,
        preparationTime = json['preparation_time'] as String?,
        cookingTime = json['cooking_time'] as String?,
        thumbnailImage = json['thumbnail_image'] as String?,
        thumbnailImageTag = json['thumbnail_image_tag'] as String?,
        featuredImage = json['featured_image'] as String?,
        featuredImageTag = json['featured_image_tag'] as String?,
        excerpt = json['excerpt'] as String?,
        chefTip = json['chef_tip'] as String?,
        lusogNote = json['lusog_note'] as String?,
        created = json['created'] as String?,
        bestProductId = json['best_product_id'] as int?,
        bestProductName = json['best_product_name'] as String?,
        bestProductSlug = json['best_product_slug'] as String?,
        bestProductImage = json['best_product_image'] as String?,
        bestProductThumbnailImage =
            json['best_product_thumbnail_image'] as String?,
        // bestProductParentCategoryId =
        //     json['best_product_parent_category_id'] as int,
        bestProductParentCategoryName =
            json['best_product_parent_category_name'] as String?,
        bestProductParentCategorySlug =
            json['best_product_parent_category_slug'] as String?,
        isRecipeOfTheDay = json['is_recipe_of_the_day'] as int?,
        cookingSkills = (json['cooking_skills'] as List?)
            ?.map((dynamic e) =>
                CookingSkills.fromJson(e as Map<String, dynamic>))
            .toList(),
        cookingTools = (json['cooking_tools'] as List?)
            ?.map(
                (dynamic e) => CookingTools.fromJson(e as Map<String, dynamic>))
            .toList(),
        // ingredients = (json['ingredients'] as Map<String,dynamic>?) != null ? Ingredients.fromJson(json['ingredients'] as Map<String,dynamic>) : null,
        // mealType = (json['meal_type'] as List?)?.map((dynamic e) => MealType.fromJson(e as Map<String,dynamic>)).toList(),
        // metaData = (json['meta_data'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['meta_data'] as Map<String,dynamic>) : null,

        averageRating = json['average_rating'] as String?,
        totalRatingCount = json['total_rating_count'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'procedures': procedures,
        'serving_number': servingNumber,
        'serving_cost': servingCost,
        'budget_range': budgetRange,
        'preparation_time': preparationTime,
        'cooking_time': cookingTime,
        'thumbnail_image': thumbnailImage,
        'thumbnail_image_tag': thumbnailImageTag,
        'featured_image': featuredImage,
        'featured_image_tag': featuredImageTag,
        'excerpt': excerpt,
        'chef_tip': chefTip,
        'lusog_note': lusogNote,
        'created': created,
        'best_product_id': bestProductId,
        'best_product_name': bestProductName,
        'best_product_slug': bestProductSlug,
        'best_product_image': bestProductImage,
        'best_product_thumbnail_image': bestProductThumbnailImage,
     //   'best_product_parent_category_id': bestProductParentCategoryId,
        'best_product_parent_category_name': bestProductParentCategoryName,
        'best_product_parent_category_slug': bestProductParentCategorySlug,
        'is_recipe_of_the_day': isRecipeOfTheDay,
        'cooking_skills': cookingSkills?.map((e) => e.toJson()).toList(),
        'cooking_tools': cookingTools?.map((e) => e.toJson()).toList(),
        // 'ingredients' : ingredients?.toJson(),
        // 'meal_type' : mealType?.map((e) => e.toJson()).toList(),
        // 'meta_data' : metaData?.toJson(),
        'average_rating': averageRating,
        'total_rating_count': totalRatingCount
      };
}

class CookingSkills {
  final String? skill;

  CookingSkills({
    this.skill,
  });

  CookingSkills.fromJson(Map<String, dynamic> json)
      : skill = json['skill'] as String?;

  Map<String, dynamic> toJson() => {'skill': skill};
}

class CookingTools {
  final String? tool;

  CookingTools({
    this.tool,
  });

  CookingTools.fromJson(Map<String, dynamic> json)
      : tool = json['tool'] as String?;

  Map<String, dynamic> toJson() => {'tool': tool};
}

// class Ingredients {
//   final List<>? ;

//   Ingredients({
//     this.,
//   });

//   Ingredients.fromJson(Map<String, dynamic> json)
//     :  = (json['   '] as List?)?.map((dynamic e) => .fromJson(e as Map<String,dynamic>)).toList();

//   Map<String, dynamic> toJson() => {
//     '   ' : ?.map((e) => e.toJson()).toList()
//   };
// }

// class  {
//   final String? quantity;
//   final String? unit;
//   final String? name;
//   final String? recipePrefix;
//   final int? servingId;
//   final int? productId;

//   ({
//     this.quantity,
//     this.unit,
//     this.name,
//     this.recipePrefix,
//     this.servingId,
//     this.productId,
//   });

//   .fromJson(Map<String, dynamic> json)
//     : quantity = json['quantity'] as String?,
//       unit = json['unit'] as String?,
//       name = json['name'] as String?,
//       recipePrefix = json['recipe_prefix'] as String?,
//       servingId = json['serving_id'] as int?,
//       productId = json['product_id'] as int?;

//   Map<String, dynamic> toJson() => {
//     'quantity' : quantity,
//     'unit' : unit,
//     'name' : name,
//     'recipe_prefix' : recipePrefix,
//     'serving_id' : servingId,
//     'product_id' : productId
//   };
// }

// class MealType {
//   final int? id;
//   final String? name;
//   final String? slug;
//   final String? featuredImage;

//   MealType({
//     this.id,
//     this.name,
//     this.slug,
//     this.featuredImage,
//   });

// //   MealType.fromJson(Map<String, dynamic> json)
// //     : id = json['id'] as int?,
// //       name = json['name'] as String?,
// //       slug = json['slug'] as String?,
// //       featuredImage = json['featured_image'] as String?;

// //   Map<String, dynamic> toJson() => {
// //     'id' : id,
// //     'name' : name,
// //     'slug' : slug,
// //     'featured_image' : featuredImage
// //   };
// // }

// // class MetaData {
//   final String? metaRef;
//   final String? metaTitle;
//   final String? metaDescription;
//   final String? metaKeywords;

//   MetaData({
//     this.metaRef,
//     this.metaTitle,
//     this.metaDescription,
//     this.metaKeywords,
//   });

//   MetaData.fromJson(Map<String, dynamic> json)
//     : metaRef = json['meta_ref'] as String?,
//       metaTitle = json['meta_title'] as String?,
//       metaDescription = json['meta_description'] as String?,
//       metaKeywords = json['meta_keywords'] as String?;

//   Map<String, dynamic> toJson() => {
//     'meta_ref' : metaRef,
//     'meta_title' : metaTitle,
//     'meta_description' : metaDescription,
//     'meta_keywords' : metaKeywords
//   };
// }