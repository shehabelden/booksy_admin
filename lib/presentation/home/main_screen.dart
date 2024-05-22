import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';
import 'widget/shop_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    MainCubit cubit=MainCubit.get(context);
    cubit.getMyProfileCubit();
    cubit.getShopCubit();
    return  Scaffold(
      body: SafeArea(
        child: BlocBuilder<MainCubit,MainState>(
          builder: (context,state) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("hi , ${cubit.data["name"]}",style:const TextStyle(
                    fontSize: 25,
                  ),),
                  Container(
                    height: 700,
                    width: double.infinity,
                    padding:const EdgeInsets.only(right: 20),
                    child: ListView.builder(
                        itemCount: cubit.shopList.length,
                        itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: MyBookingShopCard(mapCard:cubit.shopList[i] ,
                          userMap: cubit.shopList[i], id: cubit.shopListId[i],),
                      );
                    })
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
