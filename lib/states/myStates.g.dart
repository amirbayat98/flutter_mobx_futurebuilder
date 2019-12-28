// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myStates.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyState on _MyState, Store {
  final _$usersAtom = Atom(name: '_MyState.users');

  @override
  List<Model> get users {
    _$usersAtom.context.enforceReadPolicy(_$usersAtom);
    _$usersAtom.reportObserved();
    return super.users;
  }

  @override
  set users(List<Model> value) {
    _$usersAtom.context.conditionallyRunInAction(() {
      super.users = value;
      _$usersAtom.reportChanged();
    }, _$usersAtom, name: '${_$usersAtom.name}_set');
  }

  final _$getUsersAsyncAction = AsyncAction('getUsers');

  @override
  Future<List<Model>> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }
}
