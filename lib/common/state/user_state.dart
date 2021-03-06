import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_music/common/music_global.dart';
import 'package:flutter_music/models/user_model.dart';
class UserSate extends ChangeNotifier{


  UserModel get user => MusicGlobal.userModel;

  bool get isLogin => user != null;

  setUser(UserModel userModel){
    MusicGlobal.userModel = userModel;
    MusicGlobal.saveUserInfo(userModel);
    notifyListeners();
  }

  logoOut(){
    MusicGlobal.logout();
    notifyListeners();
  }
   static UserSate of(context){

        return Provider.of<UserSate>(context,listen: false);
    }
}