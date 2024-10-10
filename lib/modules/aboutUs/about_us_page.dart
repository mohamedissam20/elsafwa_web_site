import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components.dart';
import '../../shared/constants.dart';
import '../../Cubit/site_cubit.dart';
import '../../Cubit/site_states.dart';
import 'about_us_constants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SiteCubit, SiteStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
                      phonePage == 0
                          ? desktopAppbar(cubit, aboutUsBodyImage)
                          : phoneAppbar(cubit, aboutUsBodyImage),
                      narrowEnoughToChange
                          ? Padding(
                              padding: const EdgeInsetsDirectional.symmetric(horizontal: 45),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        aboutUsHeadText,
                                        maxLines: 100,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                              color: Colors.black,
                                            ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        aboutUsBodyAboveText,
                                        maxLines: 100,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                              color: Colors.black,
                                            ),
                                      ),
                                      const SizedBox(
                                        width: double.infinity,
                                        child: Padding(
                                            padding: EdgeInsetsDirectional.only(
                                              top: 40,
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/logos.gif"),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20,),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 45,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            aboutUsHeadText,
                                            maxLines: 100,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                  color: Colors.black,
                                                ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            aboutUsBodyAboveText,
                                            maxLines: 100,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(
                                                  color: Colors.black,
                                                ),
                                          ),
                                          const SizedBox(
                                            width: double.infinity,
                                            child: Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                  top: 40,
                                                ),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      child: Image(
                                                        image: AssetImage(
                                                            "assets/images/logos.gif"),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                      narrowEnoughToChange?
                      Column(
                        children: [
                          Text(
                            "About our founders",
                            maxLines: 100,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 200,
                                width: 200,
                                child: Image(image: AssetImage("assets/images/ayman.jpg")),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),                                    child: Text(
                                "Ayman Helmy Mohamed",
                                maxLines: 100,
                                softWrap: true,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 45),
                                child: Text(
                                  """A seasoned entrepreneur with over 30 years of experience in the fields of import and export. As a successful businessman, he has established a wide range of projects across various industries. His deep expertise and visionary leadership have played a crucial role in shaping the success of Al-Safwa Plastic Industries.""",
                                  maxLines: 100,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const SizedBox(
                                height: 200,
                                width: 200,
                                child: Image(image: AssetImage("assets/images/antar.jpg")),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),                                    child: Text(
                                "Alaa Antar",
                                maxLines: 100,
                                softWrap: true,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 45),
                                child: Text(
                                  """With more than 20 years of experience in the industrial sector, Alaa Antar is a highly skilled professional in manufacturing. He has spearheaded multiple ventures in the industry, driving innovation and operational excellence. His commitment to quality and continuous improvement has been pivotal in the growth of the company""",
                                  maxLines: 100,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                          :
                      Column(
                        children: [
                          Text(
                            "About our founders",
                            maxLines: 100,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            children: [
                              const SizedBox(height: 20,),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height:300,
                                      width:300,
                                      child: Image(image: AssetImage("assets/images/ayman.jpg"),fit: BoxFit.fitHeight),
                                    ),

                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height:300,
                                      width:300,
                                      child: Image(image: AssetImage("assets/images/antar.jpg")),
                                    ),

                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),                                    child: Text(
                                      "Ayman Helmy Mohamed",
                                      maxLines: 100,
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),                                    child: Text(
                                      "Alaa Antar",
                                      maxLines: 100,
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 45),
                                      child: Text(
                                        """A seasoned entrepreneur with over 30 years of experience in the fields of import and export. As a successful businessman, he has established a wide range of projects across various industries. His deep expertise and visionary leadership have played a crucial role in shaping the success of Al-Safwa Plastic Industries.""",
                                        maxLines: 100,
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 45),
                                      child: Text(
                                        """With more than 20 years of experience in the industrial sector, Alaa Antar is a highly skilled professional in manufacturing. He has spearheaded multiple ventures in the industry, driving innovation and operational excellence. His commitment to quality and continuous improvement has been pivotal in the growth of the company""",
                                        maxLines: 100,
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40,),
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
        ));
      },
    );
  }
}


