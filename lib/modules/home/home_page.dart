import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webtest/shared/constants.dart';
import '../../Cubit/site_cubit.dart';
import '../../Cubit/site_states.dart';
import '../../shared/components.dart';
import 'home_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                          phonePage == 0 ?
                          Stack(
                            children: [
                              Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/backkk.jpg"),fit: BoxFit.cover)
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 30,),
                                    const SizedBox(
                                      width: 55,
                                      height: 80,
                                      child: Image(
                                        image: AssetImage('assets/images/logo.jpg'),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 210,
                                      height: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/words.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          height:20,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              ListView.separated(
                                                  shrinkWrap: true ,
                                                  scrollDirection: Axis.horizontal,
                                                  itemBuilder: (context,index)=> appBarButtonBuilder(cubit,buttons[index],index,context),
                                                  separatorBuilder: (context,index)=>const SizedBox(),
                                                  itemCount: buttons.length
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15,)
                                      ],
                                    ),
                                    const SizedBox(width: 50,)
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 100,
                                        start: 20,
                                        end: 20,
                                        bottom: 20
                                    ),
                                    child: Image(
                                      image: AssetImage(homeBodyImage,),fit: BoxFit.fitWidth,
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 70
                                ),
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      height: productsAnimation,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        border:Border.all(width:.2),
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:Column(
                                        children: [
                                          Expanded(
                                            child: ListView.separated(
                                                physics: const NeverScrollableScrollPhysics(),
                                                itemBuilder: (context,index)=>productsBuilder(cubit,products[index],context,index),
                                                separatorBuilder: (context,index)=>Container(width: 180,height: 1,color: Colors.grey,),
                                                itemCount: productsNumber
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 70,),
                                  ],
                                ),
                              ),
                            ],
                          )
                              :
                          phoneAppbar(cubit,homeBodyImage),
                          narrowEnoughToChange ?
                           Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 20
                            ),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      homeHeadText,
                                      maxLines: 100,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    Text(
                                      homesBodyAboveText,
                                      maxLines: 100,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Beamer.of(context).beamToNamed('/AboutUs');
                                      },
                                      child: MouseRegion(
                                        onEnter: (_){
                                          cubit.onEnterLearnMore();
                                        },
                                        onExit: (_){
                                          cubit.onExitLearnMore();
                                        },
                                        child: Text(
                                          'Learn more >>>',
                                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                            height: 1.2, fontSize: 17, color: learnMoreColor , decoration: learnMoreUnderline ? TextDecoration.underline : TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                                :
                            Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 30,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      homeHeadText,
                                      maxLines: 100,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    Text(
                                      homesBodyAboveText,
                                      maxLines: 100,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Beamer.of(context).beamToNamed('/AboutUs');
                                      },
                                      child: MouseRegion(
                                        onEnter: (_){
                                          cubit.onEnterLearnMore();
                                        },
                                        onExit: (_){
                                          cubit.onExitLearnMore();
                                        },
                                        child: Text(
                                          'Learn more >>>',
                                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                              height: 1.2, fontSize: 17, color: learnMoreColor , decoration: learnMoreUnderline ? TextDecoration.underline : TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                            ],
                          ),
                          const SizedBox(
                            width: double.infinity,
                            child: Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 20,),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      child: Image(
                                        image: AssetImage("assets/images/logos.gif"),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                          const SizedBox(height: 10,),
                          narrowEnoughToChange?
                          Container(
                            color: Colors.grey[300],
                            child: Column(
                              children: [
                                const SizedBox(height: 7,),
                                const SizedBox(
                                  height: 47,
                                  width: 47,
                                  child: Image(image: AssetImage("assets/images/icon6.gif")),
                                ),
                                const SizedBox(height: 5,),
                                belowBodyIconsNumbersBuilder(context,"Quality",),
                                aboveBodyIconsTextBuilder(context,"We source the best quality products to better serve our customers needs "),
                                const SizedBox(
                                  height: 59,
                                  width: 59,
                                  child: Image(image: AssetImage("assets/images/icon4.gif")),
                                ),
                                const SizedBox(height: 5,),
                                belowBodyIconsNumbersBuilder(context,"Logistics",),
                                aboveBodyIconsTextBuilder(context,"Our team is ready to assist you until your goods are in your warehouse"),
                                const SizedBox(height: 5,),
                                const SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image(image: AssetImage("assets/images/icon5.gif")),
                                ),
                                const SizedBox(height: 5,),
                                belowBodyIconsNumbersBuilder(context,"Response Time",),
                                aboveBodyIconsTextBuilder(context,"A quick response to all your inquiries and further needs"),
                              ],
                            ),
                          )
                              :
                          Container(
                            color: Colors.grey[300],
                            width: double.infinity,
                            height: 200,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20,),
                                      const SizedBox(height: 7,),
                                      const SizedBox(
                                        height: 47,
                                        width: 47,
                                        child: Image(image: AssetImage("assets/images/icon6.gif")),
                                      ),
                                      const SizedBox(height: 10,),
                                      aboveBodyIconsNumbersBuilder(context,"Quality",),
                                      aboveBodyIconsTextBuilder(context,"We source the best quality products to better serve our customers needs "),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20,),
                                      const SizedBox(
                                        height: 59,
                                        width: 59,
                                        child: Image(image: AssetImage("assets/images/icon4.gif")),
                                      ),
                                      const SizedBox(height: 5.5,),
                                      aboveBodyIconsNumbersBuilder(context,"Logistics",),
                                      aboveBodyIconsTextBuilder(context,"Our team is ready to assist you until your goods are in your warehouse"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20,),
                                      const SizedBox(height: 5,),
                                      const SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image(image: AssetImage("assets/images/icon5.gif")),
                                      ),
                                      const SizedBox(height: 10,),
                                      aboveBodyIconsNumbersBuilder(context,"Response Time",),
                                      aboveBodyIconsTextBuilder(context,"A quick response to all your inquiries and further needs"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 20
                            ),
                            child: Text(
                              "Discover Our Diverse Product Portfolio",
                              maxLines: 100,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: Colors.black,
                                  height: .9
                              ),
                            ),
                          ),
                          const SizedBox(height: 40,),
                          narrowEnoughToChange ?
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                phoneBelowImagesBuilder(context,"assets/images/salt.png","PVC RESIN"),
                                phoneBelowImagesBuilder(context,"assets/images/image31.jpg","PLASTIC POLYMERS"),
                                phoneBelowImagesBuilder(context,"assets/images/image32.jpg","SHOES SOLE"),
                                phoneBelowImagesBuilder(context,"assets/images/image34.jpg","RUBBER WIRES"),
                                phoneBelowImagesBuilder(context,"assets/images/image35.jpg","PVC GRANULES"),
                                phoneBelowImagesBuilder(context,"assets/images/image33.jpg","PLASTICIZERS"),
                              ],
                            )
                              :
                            Column(
                              children: [
                                Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  belowImagesBuilder(context,"assets/images/salt.png","PVC RESIN"),
                                  belowImagesBuilder(context,"assets/images/image31.jpg","PLASTIC POLYMERS"),
                                  belowImagesBuilder(context,"assets/images/image32.jpg","SHOES SOLE"),
                                ],
                                ),
                                const SizedBox(height: 40,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    belowImagesBuilder(context,"assets/images/image34.jpg","RUBBER WIRES"),
                                    belowImagesBuilder(context,"assets/images/image35.jpg","PVC GRANULES"),
                                    belowImagesBuilder(context,"assets/images/image33.jpg","PLASTICIZERS"),
                                  ],
                                ),
                              ],
                            ),
                          const SizedBox(height: 60,),
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: const Image(
                                  image: AssetImage("assets/images/Elsafty.jpg"),fit: BoxFit.cover
                              ),
                            ),
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
            )
        );
      },
    );
  }
}

Widget aboveBodyIconsTextBuilder(context,String text)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.labelSmall!.copyWith(
          color: Colors.grey[600],
          height: 1.2
      ),),
    ),
  );
}

Widget aboveBodyIconsNumbersBuilder(context,String text)
{
  return Center(
    child: Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: Colors.black,
        height: .9
    ),),
  );
}

Widget belowBodyIconsNumbersBuilder(context,String text)
{
  return Center(
    child: Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: Colors.black,
        height: 1.2
    ),),
  );
}

Widget belowImagesBuilder(context,String image,String text)
{
  return  Expanded(
    child: Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 20
      ),
      child: SizedBox(
        child: Column(
          children: [
            PhysicalModel(
              color: Colors.transparent,
              elevation: 5,
              shadowColor: Colors.black,
              child: SizedBox(height:220 ,width: 220 ,child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
            ),
            const SizedBox(height: 10,),
            narrowEnoughToChange ?
            Expanded(
              child: Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.black,
                  height: .9
              ),),
            )
                :
            Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.black,
                fontSize: 19
            ),)
          ],
        ),
      ),
    ),
  );
}
Widget phoneBelowImagesBuilder(context,String image,String text)
{
  return  Padding(
    padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 20
    ),
    child: Column(
      children: [
        PhysicalModel(
          color: Colors.transparent,
          elevation: 5,
          shadowColor: Colors.black,
          child: SizedBox(height:220 ,width: 220 ,child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
        ),
        const SizedBox(height: 10,),
        narrowEnoughToChange ?
          Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Colors.black,
            height: .9
        ),)
            :
          Text(text,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Colors.black,
            fontSize: 19
        ),),
        const SizedBox(height: 30,),
      ],
    ),
  );
}
