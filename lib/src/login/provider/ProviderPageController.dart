import 'package:flutter/widgets.dart';

class ProviderPageController extends InheritedWidget {

  final PageController pController;
  final Widget child;

  ProviderPageController({this.pController, this.child}):super(child: child);

  static ProviderPageController of (BuildContext contexto){
    return  contexto.inheritFromWidgetOfExactType(ProviderPageController) as ProviderPageController;
  }

  static PageController get(BuildContext contexto){
    var pg = contexto.inheritFromWidgetOfExactType(ProviderPageController) as ProviderPageController;
    return pg.pController;
  }

  void toPage(int index){
    pController.animateToPage(index, duration: Duration(milliseconds: 350), curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget !=  this;
  }

}
