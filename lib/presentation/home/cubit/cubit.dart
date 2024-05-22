import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitState());
  static MainCubit get(context) => BlocProvider.of(context);
  Map <String,dynamic>data={};
  List shopList=[];
  List shopListId=[];
  getMyProfileCubit()async{
    emit(EmptyProfileState());
    await FirebaseFirestore.instance.collection("Profile").
    doc(FirebaseAuth.instance.currentUser!.uid).get().then((value){
      data=value.data()!;
    });
    emit(GetMyProfileState());
  }
  getShopCubit()async{
    emit(EmptyShopState());
   await FirebaseFirestore.instance.collection("shope").get().then((value){
     shopListId=[];
     shopList=[];
     value.docs.forEach((element) {
       shopList.add(element.data());
       shopListId.add(element.id);
     });
    });
    emit(GetMyProfileState());
}
 shopState(id,data)async{
   emit(EmptyShopState());
   await FirebaseFirestore.instance.collection("shope").doc(id).update(data);
   emit(ShopState());

 }
}
