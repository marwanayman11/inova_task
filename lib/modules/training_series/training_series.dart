import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova_task/modules/training_series/cubit/cubit.dart';
import 'package:inova_task/modules/training_series/cubit/states.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class TrainingSeries extends StatelessWidget {
  const TrainingSeries({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Post> posts = [
      Post(
          image:
              'https://d28gwrkukqy4h7.cloudfront.net/users/ico-profile-default.png',
          time: '8 hours ago',
          name: 'LAKSHMI SV',
          post:
              'DAY 13: SPEED AND AGILITY for 29 minutes 21 seconds Part of The Challenge'),
      Post(
          image:
              'https://d2lesx9toesny3.cloudfront.net/normal_0ebefb41-766a-4a7f-ac47-de0c0445f4c3.jpg',
          time: '11 hours ago',
          name: 'KEVIN ADAM',
          post:
              'DAY 1: UPPER BODY STRENGTH for 30 minutes 46 seconds Part of The Challenge'),
      Post(
          image:
              'https://d28gwrkukqy4h7.cloudfront.net/users/ico-profile-default.png',
          time: '13 hours ago',
          name: 'CASSANDRA LOPEZ',
          post:
              'DAY 3: LOWER BODY STRENGTH for 29 minutes 4 seconds Part of The Challenge'),
      Post(
          image:
              'https://d2lesx9toesny3.cloudfront.net/normal_b1856761-b83c-40fd-8045-5d77164d15ea.jpg',
          time: '13 hours ago',
          name: 'FRANCESCA LEIGHTON',
          post:
              'DAY 9: CORE ISOLATION for 25 minutes 54 seconds Part of The Challenge')
    ];
    List<Video> videos = [
      Video(
          image: 'assets/images/2.png',
          title: 'HOW TO APPROACH THIS SERIES',
          period: '(1:10)',
          description: ''),
      Video(
          image: 'assets/images/3.png',
          title: 'DAY 1: UPPER BODY STRENGTH',
          period: '(30:46)',
          description:
              'Test your strength and determination. This upper-body workout will condition your arms, chest, and upper back with...'),
      Video(
          image: 'assets/images/4.png',
          title: 'DAY 2: CORE ISOLATION',
          period: '(25:54)',
          description:
              'Shock your core into overdrive. Inspired by some of the toughest athletes, this fast-paced, explosive workout will isolate and...'),
      Video(
          image: 'assets/images/5.png',
          title: 'DAY 3: LOWER BODY STRENGTH',
          period: '(29:04)',
          description:
              'Push the limits of your lower body. In this high-intensity yoga and plyometric workout, you’ll condition your hips, glutes, quads, and...'),
      Video(
          image: 'assets/images/6.png',
          title: 'DAY 4: MAX ENDURANCE',
          period: '(31:28)',
          description:
              'Challenge your strength and stamina with this intense endurance workout. You’ll push your body to its exhaustion threshold through...'),
      Video(
          image: 'assets/images/7.png',
          title: 'DAY 5: ACTIVE FLEXIBILITY ',
          period: '(29:00)',
          description:
              'Flexibility is a key component of overall fitness. This class combines dynamic and active stretching to target your hamstrings, hips, and...')
    ];
    return BlocProvider(
      create: (context) => ScreenCubit()..readJson(),
      child: BlocConsumer<ScreenCubit, ScreenStates>(
        listener: (context, stat) {},
        builder: (context, state) => ScreenCubit.get(context).items.isEmpty
            ? const CircularProgressIndicator(
                color: Colors.black,
              )
            : Scaffold(
                backgroundColor: Colors.white,
                body: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: NestedScrollView(
                    headerSliverBuilder: (context, value) {
                      return [
                        SliverAppBar(
                          leading: Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          toolbarHeight: 110,
                          elevation: 0,
                          pinned: true,
                          expandedHeight: 390,
                          backgroundColor: Colors.transparent,
                          flexibleSpace: Stack(
                            children: [
                              Image(
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  ScreenCubit.get(context).items[0]
                                      ['CoverPhoto'],
                                ),
                              ),
                              FlexibleSpaceBar(
                                centerTitle: true,
                                titlePadding: const EdgeInsets.only(top: 50),
                                title: Column(
                                  children: [
                                    Text(
                                      "${ScreenCubit.get(context).items[0]['SeriesName']}"
                                          .toUpperCase(),
                                      style: GoogleFonts.jost(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${ScreenCubit.get(context).items[0]['CoachName']}",
                                      style: GoogleFonts.jost(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                background: Image(
                                  height: double.infinity,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    ScreenCubit.get(context).items[0]
                                        ['CoverPhoto'],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (_, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "${ScreenCubit.get(context).items[0]['SeriesName']}"
                                          .toUpperCase(),
                                      style: GoogleFonts.jost(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${ScreenCubit.get(context).items[0]['CoachName']}",
                                      style: GoogleFonts.jost(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      child: Container(
                                          color: Colors.black,
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              "start practicing".toUpperCase(),
                                              style: GoogleFonts.jost(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              );
                            },
                            childCount: 1,
                          ),
                        ),
                        SliverPersistentHeader(
                            pinned: true,
                            delegate: _SliverAppBarDelegate(
                              TabBar(
                                labelStyle: GoogleFonts.jost(
                                  fontWeight: FontWeight.bold,
                                ),
                                indicatorColor: Colors.black,
                                labelColor: Colors.black,
                                indicatorSize: TabBarIndicatorSize.label,
                                unselectedLabelColor: Colors.grey,
                                tabs: [
                                  Tab(text: 'overview'.toUpperCase()),
                                  Tab(text: 'classes'.toUpperCase()),
                                  Tab(text: 'community'.toUpperCase()),
                                ],
                              ),
                            )),
                      ];
                    },
                    body: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    'ABOUT THE SERIES',
                                    style: GoogleFonts.jost(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: ReadMoreText(
                                    ScreenCubit.get(context).items[0]['about'],
                                    style: GoogleFonts.jost(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    trimLines: 8,
                                    colorClickableText: Colors.black,
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: 'READ MORE',
                                    moreStyle: GoogleFonts.jost(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    delimiter: "...\n\n",
                                    trimExpandedText: '',
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 50.0),
                                  child: Image(
                                      image: AssetImage('assets/images/1.png')),
                                ),
                                Container(
                                  color: Colors.grey[200],
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  ScreenCubit.get(context)
                                                      .items[0]['profile']),
                                              radius: 50,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'INSTRUCTOR',
                                                  style: GoogleFonts.jost(
                                                      fontSize: 20),
                                                ),
                                                Text(
                                                    ScreenCubit.get(context)
                                                        .items[0]['CoachName'],
                                                    style: GoogleFonts.jost(
                                                        fontSize: 20))
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ReadMoreText(
                                          ScreenCubit.get(context).items[0]
                                              ['AboutCoach'],
                                          style: GoogleFonts.jost(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                          trimLines: 7,
                                          colorClickableText: Colors.black,
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: 'READ MORE',
                                          moreStyle: GoogleFonts.jost(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          delimiter: "...\n\n",
                                          trimExpandedText: '',
                                        ),
                                        const SizedBox(
                                          height: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                    child: Text(
                                  'TOTAL RUN TIME',
                                  style: GoogleFonts.jost(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )),
                                Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.alarm,
                                      size: 15,
                                    ),
                                    Text(
                                      ' 03 hrs 08 mins (7 Videos)',
                                      style: GoogleFonts.jost(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'DIFFICULTY',
                                            style: GoogleFonts.jost(
                                                fontSize: 15,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.signal_cellular_alt_sharp,
                                                size: 15,
                                              ),
                                              Text(
                                                ' Intermediate',
                                                style: GoogleFonts.jost(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'INTENSITY',
                                            style: GoogleFonts.jost(
                                                fontSize: 15,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.density_small,
                                                size: 15,
                                              ),
                                              Text(
                                                ' Level 4',
                                                style: GoogleFonts.jost(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Center(
                                  child: Text(
                                    'CLASSES',
                                    style: GoogleFonts.jost(
                                      fontSize: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) => videoItem(
                                        description: videos[index].description,
                                        period: videos[index].period,
                                        title: videos[index].title,
                                        image: videos[index].image),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                          height: 20,
                                        ),
                                    itemCount: videos.length)
                              ],
                            ),
                          ),
                        ),
                        ListView.separated(
                            itemBuilder: (context, index) => videoItem(
                                description: videos[index].description,
                                period: videos[index].period,
                                title: videos[index].title,
                                image: videos[index].image),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: 20,
                                ),
                            itemCount: videos.length),
                        ListView.builder(
                            itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: postItem(
                                  name: posts[index].name,
                                  post: posts[index].post,
                                  time: posts[index].time,
                                  image: posts[index].image
                                )),
                            itemCount: posts.length),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

Widget videoItem(
        {String? image, String? title, String? period, String? description}) =>
    Column(
      children: [
        Image(image: AssetImage(image!)),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.lock_outline,
                size: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 85.0),
                child: Row(
                  children: [
                    Text(title!,
                        style: GoogleFonts.jost(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(period!,
                        style: GoogleFonts.jost(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(description!,
              style: GoogleFonts.jost(
                fontSize: 15,
                color: Colors.black,
              )),
        ),
      ],
    );
Widget postItem({String? image, String? name, String? time, String? post}) =>
    Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: [
                    ListTile(
                      leading:  CircleAvatar(
                        backgroundImage: NetworkImage(
                            image!),
                      ),
                      title: Text(name!,
                          style: GoogleFonts.jost(
                            fontSize: 15,
                            color: Colors.black,
                          )),
                      subtitle: Text(time!,
                          style: GoogleFonts.jost(
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                      trailing: const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20, bottom: 20),
                      child: Text(
                          post!,
                          style: GoogleFonts.jost(
                            fontSize: 15,
                            color: Colors.grey,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white, // border color
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey[400],
                                size: 20,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  color: Colors.grey[400],
                                  thickness: 1,
                                ),
                                Text('Be the first to like this post',
                                    style: GoogleFonts.jost(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.infinity,
              height: 60,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 20.0),
                  child: Text('Write a comment',
                      style: GoogleFonts.jost(
                        fontSize: 15,
                        color: Colors.grey,
                      ))),
            ),
          )
        ],
      ),
    );

class Video {
  String? image;
  String? title;
  String? period;
  String? description;

  Video({this.period, this.title, this.image, this.description});
}

class Post {
  String? image;
  String? name;
  String? time;
  String? post;

  Post({this.image, this.name, this.time, this.post});
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
