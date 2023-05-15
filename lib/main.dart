import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ise_appdev/Feedback.dart';
import 'login.dart';
import 'recipe.dart';
import 'Signup.dart';
import 'catagory.dart';
import 'makerlist.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 39,
            fontFamily: 'Roboto',
          ),
        ),
        primarySwatch: Colors.grey,
      ),
      home:   LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currIndex=0;
  List<String> recipeCategories = [
    "Appetizers",
    "Beverages",
    "Breads",
    "Breakfast"," Brunch",
    "Desserts",
    "Main Dishes",
    "Salads",
    "Side Dishes",
    "Soups",
    "Vegetarian dishes"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor:Colors.pink,
      centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: Column(
            children: [
             Text("Welcome!",
               style: TextStyle(
                 fontSize: 39,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 370,
                  height: 47,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(12),

                      ),
                     contentPadding:EdgeInsets.only(top: 12) ,
                     filled: true,
                     fillColor: Colors.white,
                     hintText: "Search",
                      hintStyle: TextStyle(
                       color: Colors.black,
                      //  fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(260,90),bottomRight: Radius.elliptical(260,90)),
        ),
      ),
      body:ListView(
            children: [
              ListTile(
                leading: Text("Catageries",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Hero(
                  tag: 'seeAll',
                    child: TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                        (context)=>CategoriesPage()),
                      );
                    }, child: Text("See all",style: TextStyle(color: Colors.pink),))),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 120,
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(12),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade800,
                       spreadRadius: 5,
                       blurRadius: 7,

                   )],
                 ),
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: recipeCategories.length,
                   itemBuilder: (BuildContext context, int index) {
                     return Column(
                       children: [
                         const Padding(
                           padding: EdgeInsets.only(top: 8.0,left: 45.0),
                           child: CircleAvatar(
                             radius: 37,
                             backgroundColor: Colors.red,
                            foregroundImage: AssetImage("assets/images/b.jpeg",
                            ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 44.0,top: 8.0),
                           child: Text(
                             recipeCategories[index],
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 19,
                             ),
                           ),
                         ),
                       ],
                     );
                   },
                 ),
               ),
             ),
              ListTile(
                leading: Text("Ramzan Recomendations",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context)=>CategoriesPage()),
                  );
                }, child: Text("See all",style: TextStyle(color: Colors.pink),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(12),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade800,
                       spreadRadius: 5,
                       blurRadius: 7,
                       //offset: Offset(0,3),
                     )],
                 ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Container(
                          height: 210,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/italian.jpeg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/biryani.jpeg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/img1.jpeg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/dahibaly.jpeg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:25.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/b.jpeg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Text("Recipies",style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context)=>CategoriesPage()),
                  );
                }, child: Text("See all",style: TextStyle(color: Colors.pink),)),
              ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              spreadRadius: 5,
              blurRadius: 7,
            )],
        ),
        child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
        Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Container(
        height: 210,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/smosa.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
        ),
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Container(
        height: 210,
        width: 150,
        decoration: BoxDecoration(
        color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/images/plao.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        borderRadius: BorderRadius.circular(12),
        ),
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Container(
        height: 210,
        width: 150,

        decoration: BoxDecoration(
        color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/images/korma.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        borderRadius: BorderRadius.circular(12),
        ),
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Container(
        height: 210,
        width: 150,
        decoration: BoxDecoration(
        color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/images/dahibaly.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        borderRadius: BorderRadius.circular(12),
        ),
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: Container(
        height: 210,
        width: 150,
        decoration: BoxDecoration(
        color: Colors.orange,
          image: DecorationImage(
            image: AssetImage('assets/images/b2.jpg',
            ),
            fit: BoxFit.cover,
          ),
        borderRadius: BorderRadius.circular(12),
        ),
        ),
        ),
        ],
        ),
        ),
      ),
    ),
            ],

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
       drawer: Drawer(
         backgroundColor: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.pink,
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.red,
                      child: Container(
                        child: Icon(Icons.person,size: 80,color: Colors.white,),
                      ),
                    ),
                    Text("AliHassan",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    ),
                    Text("i221545@nu.edu.pk",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),),
                  ],
                ),
              ),
              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:
                          (context)=>MyHomePage(title: 'FunFeast')),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(Icons.home,size: 36,color: Colors.white),
                    title: Text("Home",style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),),),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              Hero(
                tag: 'seeAll',
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:
                          (context)=>CategoriesPage()),
                    );
                  },
                  child: const ListTile(
                    leading: Icon(Icons.category_outlined,size: 36,color: Colors.white,),
                    title: Text("Category",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              InkWell(
                onTap: (){
                     Navigator.push(
                         context,
                       MaterialPageRoute(builder: (context)=>FeedbackPage()),
                     );
                },
                child: const ListTile(
                  leading: Icon(Icons.feedback,size: 36,color: Colors.white,),
                  title: Text("FeedBack",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 12,),
              InkWell(
                onTap: (){},
                child: const ListTile(
                  leading: Icon(Icons.person,size: 36,color: Colors.white,),
                  title: Text("Profile",style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),),
                ),
              ),

               Divider(
                 color: Colors.white,
                 height: 12,
               ),
              InkWell(
                onTap: (){},
                child: const ListTile(
                  leading: Icon(Icons.settings,size: 36,color: Colors.white,),
                  title: Text("Setting",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),

            ],
          ),
        ),

       ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  }

