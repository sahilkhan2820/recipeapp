import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../helpers/debouncer.dart';
import '../models/recipe.dart';

class RecipeProvider extends ChangeNotifier {
  // At the beginning, we fetch the first 20 posts
  int page = 0;
  // you can change this value to fetch more or less posts per page (10, 15, 5, etc)
  final int limit = 20;
  // There is next page or not
  bool hasNextPage = true;
  // Used to display loading indicators when _firstLoad function is running
  bool isFirstLoadRunning = false;
  // Used to display loading indicators when _loadMore function is running
  bool isLoadMoreRunning = false;

  int _numberPage = 0;
  int selectedmoview = 0;
  List<Recipe> listRecipePlaying = [];
  List<Recipe> popularRecipe = [];

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  // final StreamController<List<Picture>> _suggestionStreamController =
  //     StreamController.broadcast();
  // Stream<List<Picture>> get suggestionStream =>
  //     _suggestionStreamController.stream;

  loadcontroller() {
    // scrollcontroller = ScrollController()..addListener(getNowPlayingRecipe);
  }

  disposecontroller() async {
    //  scrollcontroller.removeListener(await getNowPlayingRecipePage(1));
    super.dispose();
  }

  setfilter(int i) {
    // selectedmoview = 1;
    notifyListeners();
  }

  RecipeProvider() {
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final pictureJson = await rootBundle.loadString("assets/files/recipe.json");
    final decodedData = jsonDecode(pictureJson);
    RecipeModel.items = List.from(decodedData['items'])
        .map<Recipe>((item) => Recipe.fromJson(item))
        .toList();

    //RecipeModel.items.add(decodedData['items']);
    listRecipePlaying = RecipeModel.items;

    notifyListeners();
  }
}

class PopularRecipeResponse {
  static fromJson(String responseData) {}
}
