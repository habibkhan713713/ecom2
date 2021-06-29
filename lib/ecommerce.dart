

import 'package:flutter/material.dart';


class Ecommerce extends StatefulWidget {
  const Ecommerce({ Key? key }) : super(key: key);

  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {

 var a =["assets/a.jpg","assets/b.jpg","assets/c.jpg","assets/d.jpg","assets/e.jpg","assets/f.jpg"];


var b=["Samsung Galaxy Note 10 Plus","Samsung Galaxy S10 Plus","Vivo V17 Pro","OnePlus 7T Pro","Infinix Hot 10 Play","Tecno Spark 6 Go"];

var c=["Clothes","Electronics","Household","Appliances","Others",];

var d=[Icons.card_giftcard,Icons.bolt,Icons.chair,Icons.electrical_services,Icons.double_arrow];

var e=["50 Items","10 Items","100 Items","7 Items","900 Items",];

var f=["assets/1.jpg","assets/2.jpg","assets/3.jpg","assets/4.jpg","assets/5.jpg","assets/6.jpg","assets/7.jpg","assets/8.jpg","assets/9.jpg","assets/10.jpg",];

var g=["Best Tv","LaptopMACOS","Laptop stand","Laptop bag","Laptop Table","Apple Laptop","Digital glasses","Apple Ipad","New Mobile","Wallet  mobile"];














  @override



  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black,

   title:
     Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [Icon(Icons.shopping_cart_outlined),
         Text("Ecommerce UI"),
       ],
     
   ),


actions: [Icon(Icons.notification_add_outlined,size:30,),SizedBox(width: 20,)],

    ),





    body:  
    
    
    
    
    
    
    
    
    
    
    
    
    
    SingleChildScrollView(
          child: Column(children: [Padding(
            padding: const EdgeInsets.all(16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

Text("Items",style:TextStyle(fontSize: 25))
,Text("View More",style: TextStyle(color: Colors.purple),)

            ],),
          ),

  Container(height: 450,
          child: Padding(
            padding: const EdgeInsets.only(right:16.0,left:16,top:16),
            child: ListView.builder(shrinkWrap:true,scrollDirection:Axis.horizontal,itemCount: a.length,itemBuilder:(context,index){return 
            Column(
              children: [
                Container(  height:300,width:300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Image(fit:BoxFit.cover,image:AssetImage(a[index]))
                
                   
 , ),
   
               Padding(
                 padding: const EdgeInsets.only(right:16.0),
                 child: Container(width: 300,child: ListTile(title: Text(b[index],style: TextStyle(fontSize:25),),
                 
                 subtitle:  Row(
                   children: [Icon(Icons.star,color:Colors.yellow,),Icon(Icons.star,color:Colors.yellow,),
                   Icon(Icons.star,color:Colors.yellow,),Icon(Icons.star,color:Colors.yellow,),
                   Icon(Icons.star,color:Colors.yellow,),
                     Text("5.0(23 Reviews)"),
                   ],
                 )),
             
                 
                 ),
               ),
             
          
           
              ],




            )



            
            ;} ),
          ),
  ),
  
  
  Row(
        children: [
          SizedBox(width: 30,),Text("More Categories",style:TextStyle(fontSize: 25))
        ],
  ),

SizedBox(height: 30,),


  Container(height: 120,
        child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount:5,itemBuilder: (context,index){

return Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(width:MediaQuery.of(context).size.width*0.6,decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
  
  
  
  
  
  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
  
  
  
  Icon(d[index],size:40,color: Colors.purple,),SizedBox(width:12),
  
  Column(mainAxisAlignment: MainAxisAlignment.center,children:[Text(c[index],style: TextStyle(fontSize:27),),Text(e[index])])
  
  
  
  ],)
  
  
  
  
  
  
  
  
  
  )
  
  
  
  
  

);



        }),
  ),


  
Padding(
  padding: const EdgeInsets.only(left:16.0,right:16),
  child:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
  
  Text("Popular Items",style:TextStyle(fontSize:30)),Text("View More",style: TextStyle(color:Colors.purple,fontSize: 15),)
  
  
  
  
  
  
  
  ],),
),
SizedBox(height:20),

  GridView.count(physics:NeverScrollableScrollPhysics(),shrinkWrap: true,crossAxisCount: 2,crossAxisSpacing:10,mainAxisSpacing:10,children:List.generate(10,(index){
   return Container(height:200,child: ListView(physics:NeverScrollableScrollPhysics(),children: [Padding(
     padding: const EdgeInsets.only(right:8.0,left:8),
     child: Container(height: 125,decoration:BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(20)),child: Image(fit:BoxFit.fill,image: AssetImage("${f[index]}"),)),
   )
   ,Padding(
     padding: const EdgeInsets.only(left:8.0),
     child: Text(g[index],style: TextStyle(fontSize:25),),
   ),
   
   Container(
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Row(
                       children: [Icon(Icons.star,color:Colors.yellow,size:15),Icon(Icons.star,color:Colors.yellow,size:15),
                       Icon(Icons.star,color:Colors.yellow,size:15),Icon(Icons.star,color:Colors.yellow,size:15),
                       Icon(Icons.star,color:Colors.yellow,size:15),
                         Text("5.0(23 Reviews)",style: TextStyle(fontSize:10),),
                       ],
                     ),
      ),
   )
   
   
   
   
   
   
   
   
   ],));






   }))













,SizedBox(height:20),

  
  
  
  
  
          ]),
    ),
  
    );
  }
}