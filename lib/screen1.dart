import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class FaceBook extends StatefulWidget {
  const FaceBook({Key? key}) : super(key: key);

  @override
  _FaceBookState createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        color: Color(0XFF0b1f31),
        child: Column(
          children: [

            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(30) , bottomLeft: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 40,
                            height: 40,
                          child: Image.asset('images/face2.png'),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                        Expanded(child: Container()),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.search ,color: Colors.white,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.notification_important ,color: Colors.white,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.message ,color: Colors.white,),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                           color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Colors.white),
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage('images/abb.jpg'),
                                  fit: BoxFit.cover,
                                )

                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.white),
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('images/abb.jpg'),
                                  fit: BoxFit.cover,
                                )

                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('aws sabah farhan' ,style: TextStyle(color: Colors.white),),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Icon(Icons.face ,color: Colors.yellow,),
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildContainer2(Icons.camera_alt ,Colors.green ,"Fotos"),
                        buildContainer2(Icons.video_call ,Colors.red , 'En vivo'),
                        Expanded(child: buildContainer2(Icons.remove_red_eye ,Colors.blue ,"Video corto")),

                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(topRight:Radius.circular(30) , topLeft: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Row(
                     children: [
                       Text('Menu' ,style: TextStyle(fontSize: 30 ,color: Colors.white),),
                       Expanded(child: Container()),
                       Container(
                         width: 30,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Colors.blue,
                         ),
                         child: Icon(Icons.nightlight_round ,color: Colors.white,size: 20,),
                       ),
                       SizedBox(width: 20,),
                       Text('Menu  hello',style: TextStyle(fontSize: 20 ,color: Colors.white),),
                       Switch(
                         activeColor: Colors.blue,


                         value: true,
                         onChanged: (value) {

                         },
                       ),

                     ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      child: ListView(
                       scrollDirection: Axis.horizontal,
                        children: [
                          buildContainer(Icons.question_answer ,Colors.green ,'Ayuda y soports'),
                          SizedBox(width: 20,),
                          buildContainer(Icons.settings ,Colors.blue ,'configuracion y privacidad'),
                          SizedBox(width: 20,),
                          buildContainer(Icons.settings ,Colors.blue ,'configuracion y privacidad'),
                          SizedBox(width: 20,),
                          buildContainer(Icons.settings ,Colors.blue ,'configuracion y privacidad'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                               ClipRRect(
                                   borderRadius: BorderRadius.circular(20),
                                   child: Image.asset("images/abb.jpg")
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("images/abb.jpg")
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("images/abb.jpg")
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      child: GridView.builder(
                          itemCount: 6,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1/0.25,
                            mainAxisSpacing:5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 2,
                          ),
                          itemBuilder:(context, int index){
                            return Container(
                              width: 100,
                              height: 10,
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                color: Colors.black26,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Icon(Icons.local_grocery_store ,color: Colors.blue,),
                                    SizedBox(width: 10,),
                                    Text('videos en watch' ,style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            );
                          } ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ) ,

    );
  }

  Container buildContainer2( IconData iconData ,Color colorIcon , String text) {
    return Container(
                        height: 35,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(iconData ,color: colorIcon,size: 20,),
                              SizedBox(width: 10,),
                              Text(text ,style: TextStyle(color: Colors.white),)],
                          ),
                        ),
                      );
  }

  Container buildContainer( IconData iconData ,Color color , String text) {
    return Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10
                        ),
                        width: 180,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(iconData ,color: color),
                              SizedBox(width: 10,),
                              Text(text ,style: TextStyle(color: Colors.white ,fontSize:10),)
                            ],
                          ),
                        ),
                      );
  }
}
