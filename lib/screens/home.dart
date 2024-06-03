import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'editing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select a file'),
        ),
        body: GridView.builder(
          itemCount: 8,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Editing()));},
                child: GridTile(
              child: Icon(
                Icons.folder,
                size: 80,
              ),
              footer: Center(child: Text('folder $index')),
            ));
          },
        )
        //
        // ListView.builder(
        //   itemCount: 8,
        //     itemBuilder: (context,index)=>InkWell(
        //       onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Editing())),
        //       child: ListTile(
        //               leading: Icon(Icons.folder,size: 40,),
        //               title: Text('folder ${index+1}',style: TextStyle(fontSize: 24),),
        //             ),
        //     )),
        );
  }
}
