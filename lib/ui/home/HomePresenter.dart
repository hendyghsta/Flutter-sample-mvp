import 'package:pdam/common/mvp/BasePresenter.dart';
import 'package:pdam/ui/home/HomeContract.dart';

class HomePresenter extends BasePresenter implements HomeP{

  HomePresenter(HomeV view){
    this.view = view;  

  }

}