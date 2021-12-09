import 'package:anime_app/provider/theme_provider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> categories = ['Action', 'Horror', 'Romance', 'Comedy', 'Fantasy'];
  int categoryIndex = 0;

  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ThemeProvider>(context, listen: false).bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(              
                title: Text('Welcome', style: TextStyle(color: Provider.of<ThemeProvider>(context, listen: false).textColor),),
                subtitle: Text(
                  'Xybercommander', 
                  style: TextStyle(
                    color: Provider.of<ThemeProvider>(context, listen: false).textColor,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'SFPro-Bold',
                    fontSize: 18
                  ),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/38849650?v=4"),
                  radius: 30,
                ),
                trailing: IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.wb_sunny, color: Colors.yellow)
                ),
              ),
            ),
            Container(              
              margin: EdgeInsets.symmetric(horizontal: 32),
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff36394a)
              ),
              child: TextField(
                decoration: InputDecoration(                  
                  border: InputBorder.none,
                  prefixIcon: Icon(Iconsax.search_normal, color: Provider.of<ThemeProvider>(context, listen: false).textColor,)
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Provider.of<ThemeProvider>(context, listen: false).textColor,
                  fontFamily: 'SFPro-Bold',
                  fontSize: 22
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,              
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 32),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        categoryIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 104,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: categoryIndex == index ? Theme.of(context).primaryColor : Color(0xff36394a),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: Provider.of<ThemeProvider>(context, listen: false).textColor,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Popular',
                style: TextStyle(
                  color: Provider.of<ThemeProvider>(context, listen: false).textColor,
                  fontFamily: 'SFPro-Bold',
                  fontSize: 22
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 330,            
              width: MediaQuery.of(context).size.width,              
              child: Swiper(
                viewportFraction: 0.6,
                scale: 0.8,
                itemCount: 5,
                loop: false,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 100,
                    height: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage("https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx21-tXMN3Y20PIL9.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  );
                },
              )
            ),
            SizedBox(height: 36,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              width: MediaQuery.of(context).size.width,   
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff1b1a20),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        navIndex = 0;
                      });
                    }, 
                    icon: Icon(Iconsax.home5, size: 28, color: navIndex == 0 ? Theme.of(context).primaryColor : Colors.white70,)
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        navIndex = 1;
                      });
                    }, 
                    icon: Icon(Iconsax.video5, size: 28, color: navIndex == 1 ? Theme.of(context).primaryColor : Colors.white70,)
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        navIndex = 2;
                      });
                    }, 
                    icon: Icon(Iconsax.user, size: 28, color: navIndex == 2 ? Theme.of(context).primaryColor : Colors.white70,)
                  ),
                ],
              ),
            )
          ],
        )
      ),      
    );
  }
}