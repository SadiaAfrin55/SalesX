
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salesx/Bloc/Attendence/attendence_cubit.dart';
import 'package:salesx/Bloc/Inventory/inventory_cubit.dart';
import 'package:salesx/Bloc/Sales/sales_cubit.dart';
import 'package:salesx/Bloc/Survey/survey_cubit.dart';
import '../Bloc/Login/login_cubit.dart';
import '../Bloc/User/user_cubit.dart';
import '../Constants/Strings/app_string.dart';
import '../Presentation/Pages/Attendence/attendence_history.dart';
import '../Presentation/Pages/Attendence/attendence_page.dart';
import '../Presentation/Pages/Feedback/feedback_page.dart';
import '../Presentation/Pages/Inventory/inventory_list.dart';
import '../Presentation/Pages/Inventory/inventory_page.dart';
import '../Presentation/Pages/Leave/leave_history.dart';
import '../Presentation/Pages/Leave/leave_page.dart';
import '../Presentation/Pages/Login/login_page.dart';
import '../Presentation/Pages/Sales/Chart/sales_chart.dart';
import '../Presentation/Pages/Sales/details.dart';
import '../Presentation/Pages/Sales/products.dart';
import '../Presentation/Pages/Sales/sales_noData.dart';
import '../Presentation/Pages/Sales/sales_page.dart';
import '../Presentation/Pages/Survey/SurveyChart/sales_chart.dart';
import '../Presentation/Pages/Survey/survey_details.dart';
import '../Presentation/Pages/Survey/survey_history.dart';
import '../Presentation/Pages/Survey/survey_noData.dart';
import '../Presentation/Pages/Survey/survey_page.dart';
import '../Presentation/Pages/Target/target_page.dart';
import '../Presentation/Pages/Training/training_page.dart';
import '../Presentation/Screens/ForgetPass/forget_password_page.dart';
import '../Presentation/Screens/SplashScreen/splash_screen.dart';
import '../Presentation/main_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final Map? args = settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: MainScreen(),
            ));
      case LOGIN_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginPage(),
            ));
      case FORGET_PASSWORD_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ForgetPassword(),
            ));
      case ATTENDANCE_HISTORY:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => AttendenceCubit(),
              child: AttendenceHistory(),
            ));
      case ATTENDANCE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => AttendenceCubit(),
              child: AttendencePage(),
            ));
      case LEAVE_HISTORY:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: LeaveHistory(),
            ));
      case LEAVE_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: LeavePage(),
            ));
      case SURVEY_HISTORY:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SurveyCubit(),
              child: SurveyHistory(),
            ));
      case SURVEY_DETAILS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SurveyCubit(),
              child: SurveyDetails(),
            ));
      case SURVEY_NODATA:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SurveyCubit(),
              child: SurveyNoDataPage(),
            ));
      case SURVEY_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SurveyCubit(),
              child: SurveyPage(),
            ));
      case SURVEY_CHART:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SurveyCubit(),
              child: SurveyChart(),
            ));
      case SALES_HISTORY:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SalesCubit(),
              child: SalesProducts(),
            ));
        case SALES_NODATA:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SalesCubit(),
              child: SalesNoDataPage(),
            ));
        case SALES_DETAILS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SalesCubit(),
              child: Details(),
            ));
      case SALES_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SalesCubit(),
              child: SalesPage(),
            ));
      case SALES_CHART:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => SalesCubit(),
              child: SalesChart(),
            ));
      case INVENTORY_HISTORY:
      return MaterialPageRoute(
          builder: (BuildContext context) => BlocProvider(
            create: (context) => InventoryCubit(),
            child: InventoryList(),
          ));
      case INVENTORY_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => InventoryCubit(),
              child: InventoryPage(),
            ));
      case TRAINING_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => InventoryCubit(),
              child: TrainingPage(),
            ));
      case TARGET_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => InventoryCubit(),
              child: TargetPage(),
            ));
      case FEEDBACK_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => InventoryCubit(),
              child: FeedbackPage(),
            ));

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: Container(),
            ));
    }
  }
}