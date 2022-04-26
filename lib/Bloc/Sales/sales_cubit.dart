import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sales_state.dart';

class SalesCubit extends Cubit<SalesState> {
  SalesCubit() : super(SalesInitial());
}
