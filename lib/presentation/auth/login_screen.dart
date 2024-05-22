import 'package:booksy_admin/presentation/auth/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/theme/controllers/controllers.dart';
import 'cubit/cubit.dart';
import 'sign_up.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AuthCubit cubit=AuthCubit.get(context);
    return  Scaffold(
      body: BlocBuilder<AuthCubit,AuthMainState>(
        builder: (context,state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0,right: 20,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const  Padding(
                   padding:  EdgeInsets.only(bottom: 20.0),
                   child:  Text("Sign in your account",style: TextStyle(
                      fontSize: 20,
                     fontWeight: FontWeight.bold
                    ),),
                 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("  email",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF888888),
                      ),),
                      TextFormField(
                        style: TextStyle(
                          color: Color(0xFF888888),
                        ),
                        controller: Controllers.emailController,
                        decoration: InputDecoration(

                          hintText: "email",
                          hintStyle:
                          const TextStyle(
                            color: Color(0xFF888888),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFAFAFA), // Change this to the desired background color

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white.withOpacity(0)), //
                            borderRadius: BorderRadius.circular(12),// Change this to the desired border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff888888)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("  password",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        color: Color(0xFF888888),
                      ),),
                      TextFormField(
                        style:const TextStyle(
                          color: Color(0xFF888888),
                        ),
                        obscureText:cubit.hidePasse,
                        decoration: InputDecoration(
                            hintText: "password",
                            hintStyle:
                            const TextStyle(
                              color: Color(0xFF888888),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFAFAFA), // Change this to the desired background color
                            suffixIcon:IconButton(onPressed: ()async{
                             await cubit.hidePass();
                            },
                              icon: Icon(cubit.hidePasse== true ?Icons.visibility_off :Icons.visibility),),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white.withOpacity(0)), //
                              borderRadius: BorderRadius.circular(12),// Change this to the desired border color
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff888888)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        controller:Controllers.passController ,
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                         child: InkWell(
                           onTap: (){
                             cubit.signInCubit(
                                 Controllers.emailController.text,
                                 Controllers.passController.text );
                           },
                           child: Container(
                             height: 50,
                             width: 300,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                                 color: Color(0xFF43def0),
                               borderRadius: BorderRadius.circular(12)
                             ),
                             child:const Text("Sign In",style: TextStyle(
                               color: Colors.white
                             ),),

                           ),
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0,top: 100),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const  SignUpScreen(),
                                ));

                          },
                            child:const Text("Sign Up")
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}