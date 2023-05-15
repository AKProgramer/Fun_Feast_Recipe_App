import 'package:flutter/material.dart';
import 'makerlist.dart';
import 'Feedback.dart';
import 'main.dart';

class CategoriesPage extends StatefulWidget {
  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}
int currIndex=0;
class _CategoriesPageState extends State<CategoriesPage> {
  final List<String> categories = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Snacks',
    'Desserts'
  ];

  final List<String> categoryImages = [
    'assets/images/breakfast.jpg',
    'assets/images/lunch.jpg',
    'assets/images/dinner.jpg',
    'assets/images/crunch.jpg',
    'assets/images/dessert.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Catagory',style: TextStyle(
          color: Colors.white,
        )),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(40,40),bottomRight: Radius.elliptical(40,40)),
        ),
      ),

      body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.5,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RecipeListPage(category: categories[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      categoryImages[index], // added image asset here
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.pink,
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            label: 'Feedback',
            backgroundColor: Colors.black,
          ),
        ],
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.black,
       selectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            currIndex=index;
            print(index);
            if(index==0){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>MyHomePage(title: 'funf')));
            }
            else if(index==1){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>CategoriesPage()));
            }
            else if(index==2){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>FeedbackPage()));
            }
          });
        },
      ),
    );
  }
}
