import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:progress_state_button/progress_button.dart';

import '../../../Bloc/Login/login_cubit.dart';
import '../../../Constants/Colors/app_color.dart';
import '../../../Constants/Strings/app_string.dart';
import '../../../Service/LoginService/save_user_data_local.dart';
import '../../Screens/SplashScreen/splash_screen.dart';
import '../../Widgets/Button/ProgressAnimtaionButton/progress_button.dart';
import '../../Widgets/TextFields/filledTextField.dart';
import '../../Widgets/TextFields/normalTextField.dart';
import '../../Widgets/TextFields/password_textdield.dart';
import '../../main_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emilController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  final _globalkey = GlobalKey<FormState>();

  late bool circule;
  late bool validate;

  ButtonState progressButtonState = ButtonState.idle;

  //local dataBase
  Box? users;
  LoginDataSave? loginDataSave;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users =Hive.box('users');
    loginDataSave=LoginDataSave();

  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener}
        if(state is LoginUser){
          setState(() {
            progressButtonState = ButtonState.idle;
          });

          final data=(state as LoginUser).login;

          if(data!.status=="fail"){
            // ignore: deprecated_member_use
            print(data.status);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("User id and password are mismatched").tr(),
              ),
            );
          }else{
            loginDataSave?.storeTokenUserdata(users,data.token, data.user!.id, data.user!.name, data.user!.email, data.user!.role);
            Navigator.pushReplacement(context, PageTransition(MainScreen()));
          }

        }
      },
      child: SafeArea(
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.zero,
        child: Scaffold(
          backgroundColor: whiteBackground,
          body: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/icons/up.png",),),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset("assets/icons/down.png"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Form(
                      key: _globalkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/logo.png",height: 70,),
                            ],
                          ),
                          const SizedBox(height: 32,),
                          Text("Login",style: TextStyle(color: black,fontSize: 24,fontWeight: FontWeight.w600),).tr(),
                          const SizedBox(height: 24,),
                          MaterialTextField(lable:tr("Email"),hintText:tr("Enter your Email"),readOnly: false,controller:emilController),
                          const SizedBox(height: 14,),
                          MaterialTextFieldPassword(lable: tr("Password"),hintText: tr("Enter your Password"),controller:passwordController ,),
                          const SizedBox(height: 14,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 10),
                            child: ProgressAnimatedButton(text: tr("Login"),colors: kPrimaryColorx,progressButtonState: progressButtonState,tap: (){
                              if (_globalkey.currentState!.validate()) {
                                setState(() {
                                  validate = true;
                                  progressButtonState = ButtonState.loading;
                                  BlocProvider.of<LoginCubit>(context).logIn(emilController.text,passwordController.text);
                                });
                              }
                            },),
                          ),
                          const SizedBox(height: 12,),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, FORGET_PASSWORD_PAGE);
                              },
                              child:  Center(child: Text("Forget Password?",style: TextStyle(color: black,fontSize: 12,fontWeight: FontWeight.w400),).tr())
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              )
          ),
        ),
      ),
    );
  }
}
