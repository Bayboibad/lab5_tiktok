part of 'tab_bloc.dart';

@immutable
class TabEvent {
  final int tabIndex;

  TabEvent({required this.tabIndex});

  List<Object> get props => [tabIndex];
}

