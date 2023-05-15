import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'makerlist.dart';
class LastScreen extends StatefulWidget{
  const LastScreen({super.key});



  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  Widget listTile(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
         boxShadow:[ BoxShadow(
           color: Colors.grey.shade800,
           spreadRadius: 1,
           blurRadius: 5,
         )],
        ),
        child: Card(
          color: Colors.pink,
          child: ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage('assets/images/b.jpeg'),
              ),
            title: Text("Burger",style: TextStyle(
              color: Colors.white,
            ),),
            trailing: Text("2KG",style: TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }
  Color bookM= Colors.black;
  bool flag=false;

  void _onPressed() {
    setState(() {
      flag = !flag;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           // floating: true,
            expandedHeight: 300,
           backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed:(){}
              ,icon: Icon(Icons.share,
            size: 40,
            ),
          ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                height: 100,
                width: 400,
                padding: EdgeInsets.only(bottom: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.pink,
                  child: ListTile(
                    leading:Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.person,color: Colors.white,),
                      ),
                    ),
                      // leading: Padding(
                      //   padding: const EdgeInsets.only(top: 15.0),
                      //   child: CircleAvatar(
                      //     backgroundColor: Colors.black,
                      //     child: Icon(
                      //       Icons.person,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                    title: Text("ALi Hassan",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                    ),),
                    subtitle: Text("i221545@nu.edu.pk",
                      style: TextStyle(
                      color: Colors.white,
                    ),),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                 'assets/images/italian.jpeg',
                 fit: BoxFit.cover,
                ),
           ),
            actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: IconButton(
                      onPressed: _onPressed,
                      icon:
                      flag? Icon(Icons.bookmark,
                        size: 40,
                        color: Colors.green,
                      ):
                      Icon(Icons.bookmark,
                  size: 40,
                    color: Colors.black,
                  ),
                  )
                ),
            ],
            ),
          SliverList(
              delegate:SliverChildListDelegate([
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(

              ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                        child: Text("La Cucina Deliziosa e Tradizionale Italiana",style:
                          TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfort',
                            fontSize: 30,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(2, 2),
                              )
                            ]
                          ),),
                      ),
                    ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 96.0),
          child: Text(
            'Your Rating matters a lot',
            style: TextStyle(
              color: Colors.white,
                fontFamily: 'Comfort',
                fontSize: 20,
            ),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(right: 120.0),
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            unratedColor: Colors.white,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
              shadows: [
                BoxShadow(
                  color: Colors.white,
                )
              ],
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        SizedBox(height: 10,),
        Padding(
                      padding: const EdgeInsets.only(right: 210.0),
                      child: Text("Ingredients",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),
                    for(int i=0;i<5;i++)
                      listTile(),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 75.0),
                      child: Text("Recipe Instructions",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur '
                            'adipiscing elit. Sed sollicitudin bibendum '
                            'urna, sit amet consequat tortor scelerisque'
                            ' a. Etiam vel urna quis metus blandit '
                            'bibendum. Fusce pulvinar metus in dolor '
                            'cursus, ac volutpat neque aliquet. '
                            'Phasellus eget sem eget tellus hendrerit'
                            ' auctor. Nam sed elit orci. Nunc faucibus '
                            'nulla id magna tristique, eget accumsan '
                            'eros pretium. Vivamus euismod consequat'
                            ' mi, sed blandit dolor. Mauris id quam nec'
                            'nulla varius fringilla. Donec euismod nulla'
                            ' justo, a fringilla orci dapibus eget.'
                            ' Curabitur at lacus at neque imperdiet'
                            ' lobortis eu id ipsum. Quisque a feugiat '
                            'justo, sit amet semper eros. Sed quis velit'
                            ' vel augue dapibus congue vitae sit amet'
                            ' arcu. In tincidunt, magna nec euismod'
                            ' ullamcorper, sapien tellus lacinia libero,'
                            ' quis iaculis elit nulla in nisl. Sed congue '
                            'luctus risus, a pretium arcu hendrerit sit'
                            ' amet.',style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      ),),
                    ),
                Divider(color: Colors.white,
                ),
                  ],
                ),
              ]),
          ),
        ],

      ),
    );
  }
}