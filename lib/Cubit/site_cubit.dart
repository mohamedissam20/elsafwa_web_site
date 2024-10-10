import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../modules/home/home_constants.dart';
import '../modules/newsAndEvents/news_and_events_constants.dart';
import '../shared/constants.dart';
import 'site_states.dart';

class SiteCubit extends Cubit<SiteStates> {
  SiteCubit() : super(SiteInitialState());

  static SiteCubit get(context) {
    return BlocProvider.of(context);
  }

  void start() {
    abbBarButtons = [];
    productsButtons = [];
    tailProducts = [];
    for ( int j = 0 ; j < buttons.length ; j++)
      {
        abbBarButtons.add(false);
      }
    for ( int j = 0 ; j < products.length ; j++)
    {
      productsButtons.add(false);
      tailProducts.add(false);
    }
  }
  void changeAppBarButtonsColor(index) {
    if (abbBarButtons[index])
      {
        abbBarButtons[index] = false ;
      }
    else
      {
        abbBarButtons[index] = true ;
      }
    emit(SiteChangeAppBarButtonsColorState());
  }
  void changeProductsButtonsColor(index) {
    if (productsButtons[index])
    {
      productsButtons[index] = false ;
    }
    else
    {
      productsButtons[index] = true ;
    }
    emit(SiteChangeProductsButtonsColorState());
  }
  void onProductsPress({index}){
    if(productsPressed == false )
    {
      productsPressed = true ;
    }
    else
    {
      productsPressed = false ;
    }
    emit(SiteOnProductsPressState());
  }
  void onMenuPress({index}){
    if(menuPressed == false )
    {
      menuPressed = true ;
    }
    else
    {
      menuPressed = false ;
    }
    emit(SiteOnProductsPressState());
  }
  void startProductsAnimation() {
    if(productsAnimation == (productsNumber *30)+6 )
    {
      productsAnimation = 0 ;
      productsIconAnimation = 0 ;
    }
    else
    {
      productsAnimation = (productsNumber *30)+6 ;
      productsIconAnimation = -.5 ;
    }
    emit(SiteStartProductsAnimationState());
  }
  void startAppbarButtonsAnimation() {
    if(appbarButtonsAnimation == appbarButtonsMenuHeight )
    {
      productsAnimation = 0 ;
      appbarButtonsAnimation = 0 ;
      productsPressed = false ;
    }
    else
    {
      appbarButtonsAnimation = appbarButtonsMenuHeight ;
    }
    emit(SiteStartProductsAnimationState());
  }
  void homeNarrowEnoughToFalse(context) {
    greyContainerHeight = MediaQuery.sizeOf(context).width / 3.25233645 ;
    greyContainerTextContainerHeight = ( MediaQuery.sizeOf(context).width / 9.9428571 ) + 2 ;
    greyContainerTextFontSize = MediaQuery.sizeOf(context).width / 38.6666667 ;
    appbarButtonsAnimation = 0 ;
    productsAnimation = 0 ;
    productsPressed  = false ;
    menuPressed = false ;
    productsIconAnimation = 0 ;
    narrowEnoughToChange = false;
    emit(SiteHomeNarrowEnoughToFalseState());
  }
  void homeNarrowEnoughToTrue(context) {
    greyContainerHeight = MediaQuery.sizeOf(context).width / 3.25233645 ;
    greyContainerTextContainerHeight = (MediaQuery.sizeOf(context).width / 9.9428571 ) + 2;
    greyContainerTextFontSize = MediaQuery.sizeOf(context).width / 38.6666667 ;
    appbarButtonsAnimation = 0 ;
    productsAnimation = 0 ;
    productsPressed  = false ;
    menuPressed = false ;
    productsIconAnimation = 0 ;
    narrowEnoughToChange = true;
    emit(SiteHomeNarrowEnoughToTrueState());
  }
  void onEnterLearnMore() {
    learnMoreColor = Colors.purple;
    learnMoreUnderline = true;
    emit(SiteOnEnterLearnMoreState());
  }
  void onExitLearnMore() {
    learnMoreColor = Colors.black54;
    learnMoreUnderline = false;
    emit(SiteOnExitLearnMoreState());
  }
  void underlineOurProducts(){
    ourProducts =! ourProducts ;
    print(ourProducts);
    emit(SiteUnderlineOurProductsState());
  }

  void underlineProducts(int i){
    tailProducts [i] =! tailProducts [i] ;
    print(tailProducts[i]);
    emit(SiteUnderlineProductsState());
  }

}