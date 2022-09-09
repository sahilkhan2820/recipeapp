import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:nasa/src/providers/recipeprovider.dart';
import 'package:provider/provider.dart';

import '../models/recipe.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List<Recipe> recipe;
  @override
  Widget build(BuildContext context) {
    RecipeProvider recipeProvider = Provider.of<RecipeProvider>(context);
    recipeProvider.loadcontroller();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Appbars(),
            spacerBox(),
            recipeImagecard(),
            spacerBox(),
            findRecipe(),
            Divider(
              height: 2,
              thickness: 2,
            ),
            spacerBox(),
            PopularRecipe()
          ],
        )),
      ),
    );
  }

  PopularRecipe() {
    RecipeProvider recipeProvider =
        Provider.of<RecipeProvider>(context, listen: false);
    recipe = recipeProvider.listRecipePlaying;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Popular Recipe ",
                style: heading2(),
              ),
              OutlinedButton(
                child: Text('All Popular'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.green, width: 2),
                ),
                onPressed: () {
                  print('Pressed');
                },
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: recipe.length,
                        itemBuilder: (BuildContext context, int index) {
                          final rec = recipe[index];
                          return recipe.length != null || recipe.length != 0
                              ? Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            5.0, 5, 5, 0),
                                        child: Image.asset(
                                          "assets/images/Maskg.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      spacerBox(),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            5.0, 5, 5, 5),
                                        child: Text(
                                          rec.bestProductName ?? '',
                                          style: heading4(),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : CircularProgressIndicator();
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox spacerBox() {
    return SizedBox(
      height: 10,
    );
  }

  Widget recipeImagecard() {
    return Stack(
      children: [
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              height: 200,
              child: Hero(
                tag: "sahil",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/recipeimage.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 5, 0, 0),
          child: Text(
            "Recipe of the Day",
            style: heading2(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(200.0, 150, 0, 0),
          child: Text(
            "Mixed Veg bake",
            style: heading3(),
          ),
        ),
      ],
    );
  }

  Widget findRecipe() {
    return Column(
      children: [
        Card(
          child: Container(
            height: 100,
            child: Image.asset("assets/images/Rectangle 405@2x.png"),
          ),
        ),
      ],
    );
  }

  Widget Appbars() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.notifications_none),
          Text(
            "Kitchenomics",
            style: heading(),
          ),
          Row(
            children: [
              Icon(Icons.search),
              Icon(Icons.person_outlined),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle heading() {
    return TextStyle(
        fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold);
  }

  TextStyle heading2() {
    return TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  }

  TextStyle heading3() {
    return TextStyle(
        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  }

  TextStyle heading4() {
    return TextStyle(
        fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold);
  }
}
