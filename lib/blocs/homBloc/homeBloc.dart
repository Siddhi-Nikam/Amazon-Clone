import 'package:e_commerce_amezon_clone/blocs/homBloc/homeEvent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'homeState.dart';

class BottomNavBloc extends Bloc< BottomNavEvent,BottomNavState > {
  BottomNavBloc() : super(BottomNavState()){
      on<TriggerBottomNav>((event , emit){
          emit(BottomNavState(index: event.index));
      });
  }
}
