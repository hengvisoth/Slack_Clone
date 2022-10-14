import 'package:flutter/material.dart';
import 'package:slack/widget/chatBar.dart';
import 'package:slack/widget/chat_header.dart';
import 'package:slack/widget/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Management Team';
  var items = [
    "Management Team",
    "Student",
    "Lecturer"
  ];
  String ironMan = "https://i.pinimg.com/564x/9e/39/f7/9e39f73f5e5fe420646dd1c9423553b3.jpg";
  String doctorStrange = "https://i.pinimg.com/736x/45/2a/02/452a0299d21f87b7944821684ae1358f.jpg";
  String spiderMan = "https://i.pinimg.com/736x/8d/e2/4b/8de24bde46e5c29b45856f51da3c8b1b.jpg";
  String thanos = 'https://i.pinimg.com/564x/a7/31/0a/a7310a2c07af7d19b1819b6b2c670829.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        toolbarHeight: 70.0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        
        leading: Container(
          
          padding: const EdgeInsets.all(15.0),
          child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/2111/2111615.png',
              fit: BoxFit.contain,
            )
              
            
          ),
          actions: const [
          
          Icon(Icons.phone,color:Colors.black),
          SizedBox(width: 15,),
          Icon(Icons.video_call,color:Colors.black),
          SizedBox(width: 15,),
 
          Icon(Icons.search,color:Colors.black),
          SizedBox(width: 15,),

          Icon(Icons.more_vert,color:Colors.black),
          SizedBox(width: 15,),

          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            DropdownButton(
                dropdownColor: Colors.transparent,
                value: dropdownvalue,
                  
                icon: const Icon(Icons.keyboard_arrow_down),    
                  
                items: items.map((String items) {
                  return DropdownMenuItem(
                    
                    value: items,
                    child: Text(items,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  );
                }).toList(),
                
                onChanged: (String? newValue) { 
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              Row(
                children: [
                  chatAvatar(ironMan),
                  chatAvatar(doctorStrange),
                  chatAvatar(spiderMan),
                  chatAvatar(thanos)
                ],
              ),
              Expanded(
                child: ListView(
                  children:  [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Friday, 11:35AM",textAlign: TextAlign.center,)
                    ),
                    Carditem(image: ironMan,name:"IronMan",toWho:"@SpiderMan",time:"12:30 PM",description: "Hello all bro, Bro bro nv na mor jouy nh tic",likes:0,hearts:0,islike:false,isreply:false),
                    const Divider(),
                    Carditem(image:doctorStrange,name:"Doctor Strange", toWho: "@IronMan",time:"12:33 PM",description: "Pg vai knea ot ban tv te bro",likes:0,hearts:8,islike:false,isreply:true),
                    const Divider(),
                    Carditem(image:spiderMan,name:"SpiderMan",toWho:"@all",time:"02:06 PM",description: "Jam tic bro jit dol hz nv tam plov",likes:4,hearts:8,islike:true,isreply:true),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Friday, 11:35AM",textAlign: TextAlign.center,)
                      ),
                    Carditem(image:spiderMan,name:"SpiderMan",toWho:"@all",time:"02:06 PM",description: "Opsok jm hz lg ball ot ha",likes:4,hearts:8,islike:true,isreply:true),
                    Carditem(image:ironMan,name:"Ironman",toWho:"@all",time:"02:30 PM",description: "Jit final hz ot ban tv te",likes:4,hearts:8,islike:true,isreply:true),

                  ],
                ),
              )
            ],
           ),
        ),
        bottomNavigationBar: ChatBar(),
        
      );
      
    
  }
  
}