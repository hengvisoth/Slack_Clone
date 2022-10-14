import 'package:flutter/material.dart';
 
class Carditem extends StatelessWidget {
  String image;
  String name ; 
  String  toWho ; 
  String time;
  String description ;
  int likes ;
  int hearts ;
  bool islike ;
  bool isreply;

  Carditem({Key? key, required this.image,required this.name,required this.toWho,required this.time,required this.description,required this.likes,required this.hearts,required this.islike,required this.isreply}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          avatar(),
          midText(),
          ButtonItem()
        ],
      ),
    );
  }
  Widget avatar(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 60,
        height: 60,
        child: SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(image)
            ),
          ),
      ),
    );
  }
  Widget midText(){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Text(name,style : const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                Text(toWho,style: const TextStyle(color: Colors.blueAccent,fontSize: 14,fontWeight: FontWeight.bold),)
              ],
            ),
            Text(time, style: const TextStyle(color: Colors.grey),),
            Text(description),
            Row(
              children: [
                Visibility(
                  visible: hearts>0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.favorite,color: Colors.pink,size: 18,),
                        const SizedBox(width: 5.0),
                        Text(hearts.toString())
                    ],
                  ),
                ),
              ),
               Visibility(
                  visible: likes>0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.thumb_up,color: Colors.blueAccent,size: 18,),
                        const SizedBox(width: 5.0),
                        Text(hearts.toString())
                    ],
                  ),
                ),
              ),
            ],
              
            )
          ],
        ),
      )
    );
  }
  Widget ButtonItem(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
          Icon(Icons.favorite,color: islike ? Colors.redAccent : Colors.grey,),
          const SizedBox(height: 10,),
          Icon(Icons.reply,
            color: (isreply ? Colors.blueAccent : Colors.grey),
          )
        ],
      ),
    );
  }

}
