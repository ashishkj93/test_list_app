import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  void initState() {
  setList();
    super.initState();
   
  
  }
  
  var list = <Widget>[];

  void setList(){
    
    for (var i = 0; i <= 100; i++) {
      list.add( const ListItemWidget());
    }
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: ListView.builder(
      
      
        itemCount: list.length,itemBuilder: (context,index)=> list[index]));
  }
}

class ListItemWidget extends StatefulWidget {
 
  const ListItemWidget({super.key,});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> with AutomaticKeepAliveClientMixin{
  var count = 0;


  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.grey,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(count.toString()),
            
            MaterialButton(
              onPressed: () {
               
                 setState(() {
                  count++;
                });
               
              },
              child: const Text("+"),
            )
          ],
        ));
  }
  
  @override
  
  bool get wantKeepAlive => true;
}
