part of 'tab_bloc.dart';

@immutable
sealed class TabState {}

final class TabInitial extends TabState {}

class SubmitTabState extends TabState{
  final int tabIndex;

  SubmitTabState({required this.tabIndex});

  List<Object> get props => [tabIndex];
}