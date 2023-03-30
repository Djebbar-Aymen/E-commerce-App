import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/search/SearchByTakingAphoto.dart';
class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  State<Search> createState() => SearchState();
}

class SearchState extends State<Search> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,),
        title: Text('Visual Search',style:
                 TextStyle(color: Color(0XFF222222),fontSize: 14,fontWeight: FontWeight.bold,fontFamily:'metropolis'  )),
      
        backgroundColor: Colors.transparent,),
     
       body:Container( constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/image.png"),
          fit: BoxFit.cover),
        ),

      
           child:Column(
            children: [
              SizedBox(height: 198,),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text('Search for an outfit by taking a photo or uploading an image',style:TextStyle(color:Colors.white ,fontSize:23,fontWeight: FontWeight.bold,fontFamily:'metropolis'  )),
              ),
              SizedBox(height: 24,),
               SizedBox(
                  height: 48,
                  width: 385,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(12.0),
                    child: ElevatedButton(style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),primary: Color(0XFFDB3022)
                    ),onPressed:() {Navigator.push(context,MaterialPageRoute(builder: (context) => const SearchByTakingAphoto()),);}, 
                               child: Text('Take A Photo',style: TextStyle(fontFamily: 'metropolis',fontSize: 14,fontWeight: FontWeight.bold),)),
                  ),
                ),
                SizedBox(height: 14,),
                 SizedBox(
                  height: 48,
                  width: 385,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(12.0),
                    child: ElevatedButton(style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),primary: Colors.transparent,side: BorderSide(color: Colors.white, width: 2
                    )),onPressed: (){}, 
                               child: Text('Upload Photo',style: TextStyle(fontFamily: 'metropolis',fontSize: 14,fontWeight: FontWeight.bold),)),
                  ),
                )

            ],

           ),
      ));
      
    
  }
}