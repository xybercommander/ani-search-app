import 'package:anime_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ThemeProvider>(context, listen: false).bgColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ListTile(
              title: Text('Welcome', style: TextStyle(color: Provider.of<ThemeProvider>(context, listen: false).textColor),),
              subtitle: Text(
                'Xybercommander', 
                style: TextStyle(
                  color: Provider.of<ThemeProvider>(context, listen: false).textColor,
                  fontWeight: FontWeight.bold,
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
            TextField(
              
            )
          ],
        )
      ),      
    );
  }
}