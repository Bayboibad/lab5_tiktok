import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tab_event.dart';
part 'tab_state.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(SubmitTabState(tabIndex: 0)) {
    on<TabEvent>((event, emit) {
      emit(SubmitTabState(tabIndex: event.tabIndex));
    });
  }
}
