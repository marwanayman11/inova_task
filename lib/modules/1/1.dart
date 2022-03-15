import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova_task/modules/1/cubit/cubit.dart';
import 'package:inova_task/modules/1/cubit/states.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ScreenCubit()..readJson(),
      child: BlocConsumer<ScreenCubit,ScreenStates>(
        listener: (context,stat){},
        builder:(context,state) =>
            Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Image(image: NetworkImage(ScreenCubit.get(context).items[1]['CoverPhoto'])),
                    const SizedBox(height: 10,),
                    Text("${ScreenCubit.get(context).items[1]['SeriesName']}".toUpperCase(),style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),),
                    const SizedBox(height: 5,),
                    Text("${ScreenCubit.get(context).items[1]['CoachName']}",style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    const SizedBox(height: 10,),
                    Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("start practicing".toUpperCase(),style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    DefaultTabController(
                        length: 3, // length of tabs
                        initialIndex: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 47.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                             TabBar(
                               indicatorColor: Colors.black,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              labelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                              tabs: [
                                Tab(text: 'overview'.toUpperCase()),
                                Tab(text: 'classes'.toUpperCase()),
                                Tab(text: 'community'.toUpperCase()),
                              ],
                            ),
                            SizedBox(
                                height: 1000, //height of TabBarView
                                child:  TabBarView(children: <Widget>[
                                  Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                    children:  [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                                        child: Text('About this series'.toUpperCase(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                      ),
                                       const Text('A gymnasium, also known as a gym, is a covered location for athletics. The word is derived from the ancient Greek term "gymnasium". They are commonly found in athletic and fitness centres, and as activity and learning spaces in educational institutions.',
                                           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(onTap: (){},child: Text('Read more'.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        CircleAvatar(
                                          child:ClipOval(child:Image(image: NetworkImage(ScreenCubit.get(context).items[1]['CoverPhoto'])),),
                                          radius: 80,
                                          backgroundColor: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("instructor".toUpperCase(),style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30
                                            ),),
                                            Text("${ScreenCubit.get(context).items[1]['CoachName']}",style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              color: Colors.grey
                                            ),),

                                          ],
                                        )
                                      ],)

                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                                    child: Text('classes'.toUpperCase(), style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                                  child: Text('community'.toUpperCase(), style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                ),
                                ])
                            )

                          ]),
                        )
                    ),
                  ],
                ),
              ),

        ),
      ),
    );
  }
}
