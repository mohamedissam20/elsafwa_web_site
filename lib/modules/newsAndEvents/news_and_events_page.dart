import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../Cubit/site_cubit.dart';
import '../../Cubit/site_states.dart';
import '../../shared/components.dart';
import '../../shared/constants.dart';
import 'news_and_events_constants.dart';

class NewsAndEventsPage extends StatelessWidget {
  const NewsAndEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SiteCubit,SiteStates>(
      listener: (context,state){},
      builder: (context,state){
        SiteCubit cubit = SiteCubit.get(context);
        return SafeArea(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          phonePage == 0 ? desktopAppbar(cubit,newsAndEventsImage) : phoneAppbar(cubit,newsAndEventsImage),
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 20
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Products",
                                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                        color: Colors.black,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ],
                                ),
                                narrowEnoughToChange ?
                                  Column(
                                    children: [
                                      const SizedBox(height: 10,),
                                      Container(
                                        width: double.infinity,
                                        color: Colors.grey[300],
                                        child: Column(
                                          children: [
                                            phonePicsBuilder("assets/images/trz1.jpg","""PVC Resin
Polyvinyl Chloride (PVC) resin is a durable and versatile material used in various plastic products. Known for its chemical resistance and flexibility, it's ideal for both rigid and flexible applications, ensuring high-quality performance.""",context),
                                            phonePicsBuilder("assets/images/trz2.jpg","""Dioctyl Phthalate (DOP)
A versatile plasticizer, DOP enhances flexibility and durability in PVC products. It’s widely used in making cables, flooring, and synthetic leather, providing excellent performance and stability.""",context),
                                            phonePicsBuilder("assets/images/trz3.jpg","""Chlorinated Paraffin
Chlorinated Paraffin is a versatile additive used to enhance flame resistance, flexibility, and durability in PVC products. It’s commonly used in cables, coatings, and rubber applications.""",context),
                                            phonePicsBuilder("assets/images/trz4.jpg","""Shoe Sole 
High-quality shoe soles designed for durability, flexibility, and comfort. Made from advanced materials, they provide excellent grip and wear resistance, perfect for everyday footwear.""",context),
                                            phonePicsBuilder("assets/images/trz5.jpg","""Rubber Cable Compounds
Our rubber compounds offer superior flexibility, durability, and heat resistance, making them ideal for high-performance cable manufacturing. Crafted with precision, they ensure long-lasting and reliable performance in challenging environments.""",context),
                                            phonePicsBuilder("assets/images/trz6.jpg","""PVC Granules
High-quality PVC granules designed for flexible and rigid applications. These granules offer excellent durability, ease of processing, and are ideal for manufacturing cables, pipes, and various plastic products.""",context),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                    ],
                                  )
                                      :
                                  Column(
                                    children: [
                                      Container(
                                      color: Colors.grey[300],
                                      width: double.infinity,
                                      height: 410,
                                      child: Column(
                                        children: [
                                          const SizedBox(height: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                picsBuilder("assets/images/trz1.jpg","""PVC Resin
Polyvinyl Chloride (PVC) resin is a durable and versatile material used in various plastic products. Known for its chemical resistance and flexibility, it's ideal for both rigid and flexible applications, ensuring high-quality performance.""",context),
                                                picsBuilder("assets/images/trz2.jpg","""Dioctyl Phthalate (DOP)
A versatile plasticizer, DOP enhances flexibility and durability in PVC products. It’s widely used in making cables, flooring, and synthetic leather, providing excellent performance and stability.""",context),
                                                picsBuilder("assets/images/trz3.jpg","""Chlorinated Paraffin
Chlorinated Paraffin is a versatile additive used to enhance flame resistance, flexibility, and durability in PVC products. It’s commonly used in cables, coatings, and rubber applications.""",context),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                        ],
                                      ),
                                      ),
                                      Container(
                                        color: Colors.grey[300],
                                        width: double.infinity,
                                        height: 410,
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 10,),
                                            Expanded(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  picsBuilder("assets/images/trz4.jpg","""Shoe Sole 
High-quality shoe soles designed for durability, flexibility, and comfort. Made from advanced materials, they provide excellent grip and wear resistance, perfect for everyday footwear.""",context),
                                                  picsBuilder("assets/images/trz5.jpg","""Rubber Cable Compounds
Our rubber compounds offer superior flexibility, durability, and heat resistance, making them ideal for high-performance cable manufacturing. Crafted with precision, they ensure long-lasting and reliable performance in challenging environments.""",context),
                                                  picsBuilder("assets/images/trz6.jpg","""PVC Granules
High-quality PVC granules designed for flexible and rigid applications. These granules offer excellent durability, ease of processing, and are ideal for manufacturing cables, pipes, and various plastic products.""",context),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                          phonePage == 0 ?
                          tail(cubit,context)
                              :
                          phoneTail(cubit,context)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        );
      },
    );
  }
}


Widget picsBuilder(String image, String text , BuildContext context)
{
  return  Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage(
                  image
              ),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: 200*1.6,
            height: 130*1.6,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Center(child: Text(text ,softWrap: true, textAlign: TextAlign.center,maxLines: 100,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.black , fontSize: 15),)),
          )
        ],
      ),
    ),
  );
}
Widget phonePicsBuilder(String image, String text,BuildContext context)
{
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        SizedBox(
            height:240 ,
            width: 280,
            child: Image(
              image: AssetImage(
                  image
              ),
            )
        ),
        const SizedBox(height: 10,),
        Container(
          width: 200*1.5,
          height: 130*1.3,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Center(child: Text(text ,softWrap: true, textAlign: TextAlign.center,maxLines: 100,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.black , fontSize: 15),)),
        )
      ],
    ),
  );
}