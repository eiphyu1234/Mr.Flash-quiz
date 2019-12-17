import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mr_flash/category.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mr_flash/color/colorClass.dart';
import 'package:mr_flash/home.dart';
import 'package:mr_flash/quizpage.dart';

class levels extends StatelessWidget {

  String langname;
  levels(this.langname);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => homepage()
                  )
              );
            }
          ),
          title: Text(langname),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                decoration: BoxDecoration(
                  color: appColor
                ),
                height: 200,
              ),
            ),
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                    child: Text("Select a category to start the quiz", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0
                    ),
                      textAlign: TextAlign.center,
                    ),

                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0
                      ),
                      delegate: SliverChildBuilderDelegate(
                        _buildCategoryItem,
                        childCount: categories.length,
                      )

                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    Category category = categories[index];
    return MaterialButton(
      elevation: 1.0,
      highlightElevation: 1.0,
      onPressed: () => _categoryPressed(context,category),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey.shade800.withOpacity(0.8),
      textColor: Colors.white,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if(category.name != null)
            SizedBox(height: 5.0),
            AutoSizeText(
              category.name,
              minFontSize: 10.0,
              textAlign: TextAlign.center,
              maxLines: 3,
              wrapWords: false,),
        ],
      ),
    );
  }

  _categoryPressed(BuildContext context,Category category) {
    //print(category.name);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => getjson(langname,category: category,)
            )
        );

  }
}