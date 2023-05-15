import 'package:flutter/material.dart';
import 'package:ise_appdev/recipe.dart';
import 'main.dart';
class Recipe {
  final String name;
  final String category;

  Recipe({required this.name, required this.category});
}

class RecipeListPage extends StatefulWidget {
  final String category;

  RecipeListPage({required this.category});

  @override
  _RecipeListPageState createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  List<Recipe> _recipes = [];
  List<Recipe> _filteredRecipes = [];

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Populate the recipe list based on the selected category
    switch (widget.category) {
      case 'Breakfast':
        _recipes = [
          Recipe(name: 'Pancakes', category: 'Breakfast'),
          Recipe(name: 'Waffles', category: 'Breakfast'),
          Recipe(name: 'Eggs Benedict', category: 'Breakfast'),
          Recipe(name: 'Omelette', category: 'Breakfast'),
          Recipe(name: 'Bread', category: 'Breakfast'),
          Recipe(name: 'Avocado toast', category: 'Breakfast'),
          Recipe(name: 'Sandwich', category: 'Breakfast'),
        ];
        break;
      case 'Lunch':
        _recipes = [
          Recipe(name: 'Club Sandwich', category: 'Lunch'),
          Recipe(name: 'Grilled Cheese', category: 'Lunch'),
          Recipe(name: 'Caesar Salad', category: 'Lunch'),
          Recipe(name: 'Biryani', category: 'Lunch'),
          Recipe(name: 'Shawarma', category: 'Lunch'),
          Recipe(name: 'Salad', category: 'Lunch'),
        ];
        break;
      case 'Dinner':
        _recipes = [
          Recipe(name: 'Steak', category: 'Dinner'),
          Recipe(name: 'Salmon', category: 'Dinner'),
          Recipe(name: 'Roast Chicken', category: 'Dinner'),
          Recipe(name: 'Pizza', category: 'Dinner'),
          Recipe(name: 'Fajitas', category: 'Dinner'),
          Recipe(name: 'Pasta', category: 'Dinner'),
        ];
        break;
      case 'Snacks':
        _recipes = [
          Recipe(name: 'Samosa', category: 'Snacks'),
          Recipe(name: 'Cookies', category: 'Snacks'),
          Recipe(name: 'Murukku', category: 'Snacks'),
          Recipe(name: 'Sabudana vada', category: 'Snacks'),
          Recipe(name: 'Pani puri', category: 'Snacks'),
          Recipe(name: 'Kachuri', category: 'Snacks'),
        ];
        break;
      case 'Desserts':
        _recipes = [
          Recipe(name: 'Chocolate Cake', category: 'Desserts'),
          Recipe(name: 'Cheesecake', category: 'Desserts'),
          Recipe(name: 'Apple Pie', category: 'Desserts'),
          Recipe(name: 'Pudding', category: 'Desserts'),
          Recipe(name: 'Donuts', category: 'Desserts'),
          Recipe(name: 'Caramel', category: 'Desserts'),
        ];
        break;
      default:
        break;
    }

    _filteredRecipes = _recipes;
  }

  void _filterRecipes(String searchText) {
    if (searchText.isEmpty) {
      setState(() {
        _filteredRecipes = _recipes;
      });
    } else {
      setState(() {
        _filteredRecipes = _recipes
            .where((recipe) =>
            recipe.name.toLowerCase().contains(searchText.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('${widget.category} Recipes',style: TextStyle(
          color: Colors.white,
          fontFamily: 'Comfort',
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterRecipes,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Comfort',
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Recipes',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredRecipes.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.pink,
                    child: ListTile(
                      leading: Icon(Icons.restaurant,color: Colors.white,),
                      title: Text(_filteredRecipes[index].name,style: TextStyle(
                        color: Colors.white,
                      ),),
                      subtitle:
                      Text('Category: ${_filteredRecipes[index].category}',style: TextStyle(
                        color: Colors.white,
                      ),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const LastScreen())
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
