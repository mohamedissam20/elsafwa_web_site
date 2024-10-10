import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../Cubit/site_cubit.dart';
import 'constants.dart';

Widget desktopAppbar(cubit,String bodyImage)
{
  return Stack(
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
            child: Column(
              children: [
                Image(
                  image: AssetImage(bodyImage),
                ),
              ],
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
  );
}

Widget phoneAppbar(SiteCubit cubit,String bodyImage)
{
  return Stack(
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
            Container(
              width: 35,
              height: 25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Material(
                color: menuPressed ? Colors.grey : Colors.white,
                child: InkWell(
                  onTap: (){
                    cubit.startAppbarButtonsAnimation();
                    cubit.onMenuPress();
                  },
                  child: const Icon(Icons.menu),
                ),
              ),
            ),
            const SizedBox(width: 10,)
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
            child: Column(
              children: [
                Image(
                  image: AssetImage(bodyImage),
                ),
              ],
            )
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 58
            ),
            child: Row(
              children: [
                const Spacer(),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: productsPressed ? productsMenuHeight + 115 : appbarButtonsAnimation,
                  width: 180,
                  decoration: menuPressed ?
                  BoxDecoration(
                    border:Border.all(width:.2),
                  )
                      :
                  null,
                  child:Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context,index)=>animatedAppbarButtonsBuilder(cubit,buttons[index],context,index),
                            separatorBuilder: (context,index)=>Container(width: 180,height: 1,color: Colors.grey,),
                            itemCount:  buttons.length
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
          const SizedBox(height: 11,),
        ],
      ),
    ],
  );
}

Widget appBarButtonBuilder(SiteCubit cubit,Buttons button,i,BuildContext context)
{
  return Row(
    children: [
      GestureDetector(
        onTap: (){
          print('${buttons[i].beamer}');
          Beamer.of(context).beamToNamed('${buttons[i].beamer}');
        },
        child: MouseRegion(
          onEnter: (_){
            cubit.changeAppBarButtonsColor(i);
          },
          onExit: (_){
            cubit.changeAppBarButtonsColor(i);
          },
          child: Text(
              button.text!,style: Theme.of(context).textTheme.labelMedium!.copyWith(color: abbBarButtons[i] ? Colors.blue : Colors.white)
          ),
        ),
      ),
      const SizedBox(width: 20,)
    ],
  );
}

Widget productsBuilder(SiteCubit cubit,Products product,BuildContext context,i)
{
  return GestureDetector(
    onTap: (){
      print('${buttons[i].beamer}');
      Beamer.of(context).beamToNamed('${buttons[i].beamer}');
    },
    child: MouseRegion(
      onEnter: (_){
        cubit.changeProductsButtonsColor(i);
      },
      onExit: (_){
        cubit.changeProductsButtonsColor(i);
      },
      child: Container(
        height: 30,
        width: double.infinity,
        color: productsButtons[i] ? Colors.grey : Colors.white ,
        child: Row(
          children: [
            const Icon(Icons.arrow_right_outlined),
            Text(product.productName!,style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Colors.black
            ),)
          ],
        ),
      ),
    ),
  );
}

Widget animatedAppbarButtonsBuilder(SiteCubit cubit,Buttons button,context,i)
{
  return GestureDetector(
    onTap: (){
      print('${buttons[i].beamer}');
      Beamer.of(context).beamToNamed('${buttons[i].beamer}');
    },
    child: MouseRegion(
      onEnter: (_){
        cubit.changeAppBarButtonsColor(i);
      },
      onExit: (_){
        cubit.changeAppBarButtonsColor(i);
      },
      child: Container(
        height: 30,
        width: double.infinity,
        color: abbBarButtons[i] ? Colors.grey : Colors.white ,
        child: Row(
          children: [
            const SizedBox(height: 9,),
            const Icon(Icons.arrow_right_outlined,size: 19,),
            Text(button.text!,style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Colors.black,height: 1
            ),)
          ],
        ),
      ),
    ),
  );
}

Widget tail(SiteCubit cubit,BuildContext context)
{
  return  Container(
    height: 250,
     width: double.infinity,
     decoration: const BoxDecoration(
       image: DecorationImage(
           image : AssetImage('assets/images/taill.jpg'),
         fit: BoxFit.cover
       )
     ),
    child: Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 60),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15,),
                ListView.separated(
                    shrinkWrap: true ,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=> tailButtonBuilder(cubit,buttons[index],index,context),
                    separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                    itemCount: buttons.length
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Beamer.of(context).beamToNamed('/Products');
                      },
                      child: MouseRegion(
                        onEnter: (_){
                          cubit.underlineOurProducts();
                        },
                        onExit: (_){
                          cubit.underlineOurProducts();
                        },
                        child: Text(
                            "our products",style: Theme.of(context).textTheme.labelMedium!.copyWith(color: ourProducts ? Colors.blue : Colors.white,fontSize: 25 ,)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                ListView.separated(
                    shrinkWrap: true ,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=> tailProductsBuilder(cubit,products[index],index,context),
                    separatorBuilder: (context,index)=>const SizedBox(),
                    itemCount: buttons.length
                )
              ],
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 140,
                width: 140,
                child: Image(
                  image: AssetImage( "assets/images/llll.jpg" ),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8,)
            ],
          )
        ],
      ),
    ),
  );
}

Widget tailButtonBuilder(SiteCubit cubit,Buttons button,i,context)
{
  return GestureDetector(
    onTap: (){
      print('${buttons[i].beamer}');
      Beamer.of(context).beamToNamed('${buttons[i].beamer}');
    },
    child: MouseRegion(
      onEnter: (_){
        cubit.changeAppBarButtonsColor(i);
      },
      onExit: (_){
        cubit.changeAppBarButtonsColor(i);
      },
      child: Text(
          button.text!,style: Theme.of(context).textTheme.labelMedium!.copyWith(color: abbBarButtons[i] ? Colors.blue : Colors.white,fontSize: 25,)
      ),
    ),
  );
}

Widget tailProductsBuilder(SiteCubit cubit,Products product,int i,context)
{
  return GestureDetector(
    onTap: (){
      Beamer.of(context).beamToNamed('/Products');
    },
    child: MouseRegion(
      onEnter: (_){
        cubit.underlineProducts(i);
      },
      onExit: (_){
        cubit.underlineProducts(i);
      },
      child: Text(
        product.productName!,style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 25 , color: tailProducts[i] == true ? Colors.blue : Colors.white ,)
      ),
    ),
  );
}

Widget phoneTail(SiteCubit cubit,BuildContext context)
{
  return  Container(
    width: double.infinity,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image : AssetImage('assets/images/taill.jpg'),
            fit: BoxFit.cover
        )
    ),
    child: Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 60),
      child: Column(
        children: [
          const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
              width: 140,
              child: Image(
                image: AssetImage( "assets/images/llll.jpg" ),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
          const SizedBox(height: 28,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15,),
              ListView.separated(
                  shrinkWrap: true ,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=> tailButtonBuilder(cubit,buttons[index],index,context),
                  separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                  itemCount: buttons.length
              )
            ],
          ),
          const SizedBox(height: 28,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Beamer.of(context).beamToNamed('/Products');
                    },
                    child: MouseRegion(
                      onEnter: (_){
                        cubit.underlineOurProducts();
                      },
                      onExit: (_){
                        cubit.underlineOurProducts();
                      },
                      child: Text(
                          "our products",style: Theme.of(context).textTheme.labelMedium!.copyWith(color: ourProducts ? Colors.blue : Colors.white,fontSize: 25 ,)
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              ListView.separated(
                  shrinkWrap: true ,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=> tailProductsBuilder(cubit,products[index],index,context),
                  separatorBuilder: (context,index)=>const SizedBox(),
                  itemCount: buttons.length
              )
            ],
          ),
          const SizedBox(height: 28,),
        ],
      ),
    ),
  );
}