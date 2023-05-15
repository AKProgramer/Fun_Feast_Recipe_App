import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'makerlist.dart';
import 'Feedback.dart';
import 'main.dart';
import 'catagory.dart';
class FeedbackPage extends StatefulWidget{
  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  double ratingS=0.0;
  bool emptyFeedback=false;
  var feedback=TextEditingController();
  int currIndex=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Feedback',style: TextStyle(
          color: Colors.white,
        )),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(40,40),bottomRight: Radius.elliptical(40,40)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text('Your Rating matters a lot',style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Comfort',
            ),),
          SizedBox(height: 20,),
          RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          unratedColor: Colors.white,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemSize: 50,
          onRatingUpdate: (rating) {
            setState(() {
              ratingS=rating;
              print(ratingS);
            });
          },
        ),
            SizedBox(height: 20,),
        Text('Tell us a bit more about why you chose $ratingS',style:
          TextStyle(
           color: Colors.white,
            fontSize: 15,
          ),),
            SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 300,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                autocorrect: true,
                enableSuggestions: true,
                maxLines: null,
                controller: feedback,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: emptyFeedback?'You cannot submit '
                'the feedback empty':'Enter your feedback here',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
            SizedBox(height: 50,),
            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if(feedback.toString().isNotEmpty){
                    emptyFeedback=true;
                    print(feedback.toString());
                    print(emptyFeedback);
                    setState(() {

                    });
                  }
                  else{
                    emptyFeedback=false;
                    print(feedback.text.toString());
                    print(emptyFeedback);
                    setState(() {

                    });
                  }
                },
                child: Text('Submit',style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Comfort',
                  fontSize: 20,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
        ],
        ),
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
    );
  }
}