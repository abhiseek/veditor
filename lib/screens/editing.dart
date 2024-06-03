import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veditor/widgets/vp.dart';
import 'package:veditor/widgets/vplayer.dart';

class Editing extends StatefulWidget {
   Editing({super.key});

  @override
  State<Editing> createState() => _EditingState();
}

class _EditingState extends State<Editing> {
  int ind=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.backspace_outlined),
                Icon(Icons.done_outline)
              ],
            ),SizedBox(height: 120,)
            ,Container(height: 300,
                child: VideoApp()),
        
            //SamplePlayer(),
            //VideoApp(),
            //Icon(Icons.play_circle,size: 50,),
            SizedBox()
            // Container(
            //   color: Colors.grey,
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Icon(Icons.add_outlined),
            //       Icon(Icons.cut),
            //       Icon(Icons.color_lens_rounded),
            //       Icon(Icons.pie_chart)
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar:Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [Colors.white,
        //    // Colors.grey,
        //         Colors.black])
        // ),
        child: BottomNavigationBar(
          elevation: 40,
          selectedItemColor: Colors.white ,
          unselectedItemColor: Colors.grey,
          currentIndex: ind,

          onTap: (tappedindex){
            setState(() {
              ind= tappedindex;
            });

          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.cut_outlined,size: 35,)
            ,label: ' ',tooltip: 'cut'),
            BottomNavigationBarItem(icon: Icon(Icons.color_lens_rounded,size: 35,) ,label: ' ',),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart,size:35,) ,label: ' ',),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.crop,size: 35,),label: ' ')
          ] ,
        ),
      ) ,
    );
  }
}
