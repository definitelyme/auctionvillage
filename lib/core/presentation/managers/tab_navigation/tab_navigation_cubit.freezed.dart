// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of tab_navigation_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabNavigationState {
  TabController? get tabController => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabNavigationStateCopyWith<TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabNavigationStateCopyWith<$Res> {
  factory $TabNavigationStateCopyWith(
          TabNavigationState value, $Res Function(TabNavigationState) then) =
      _$TabNavigationStateCopyWithImpl<$Res, TabNavigationState>;
  @useResult
  $Res call({TabController? tabController, int selectedTab, bool isLoading});
}

/// @nodoc
class _$TabNavigationStateCopyWithImpl<$Res, $Val extends TabNavigationState>
    implements $TabNavigationStateCopyWith<$Res> {
  _$TabNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabController = freezed,
    Object? selectedTab = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      tabController: freezed == tabController
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabNavigationStateCopyWith<$Res>
    implements $TabNavigationStateCopyWith<$Res> {
  factory _$$_TabNavigationStateCopyWith(_$_TabNavigationState value,
          $Res Function(_$_TabNavigationState) then) =
      __$$_TabNavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TabController? tabController, int selectedTab, bool isLoading});
}

/// @nodoc
class __$$_TabNavigationStateCopyWithImpl<$Res>
    extends _$TabNavigationStateCopyWithImpl<$Res, _$_TabNavigationState>
    implements _$$_TabNavigationStateCopyWith<$Res> {
  __$$_TabNavigationStateCopyWithImpl(
      _$_TabNavigationState _value, $Res Function(_$_TabNavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabController = freezed,
    Object? selectedTab = null,
    Object? isLoading = null,
  }) {
    return _then(_$_TabNavigationState(
      tabController: freezed == tabController
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TabNavigationState implements _TabNavigationState {
  const _$_TabNavigationState(
      {this.tabController, this.selectedTab = 0, this.isLoading = false});

  @override
  final TabController? tabController;
  @override
  @JsonKey()
  final int selectedTab;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TabNavigationState(tabController: $tabController, selectedTab: $selectedTab, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabNavigationState &&
            (identical(other.tabController, tabController) ||
                other.tabController == tabController) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tabController, selectedTab, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabNavigationStateCopyWith<_$_TabNavigationState> get copyWith =>
      __$$_TabNavigationStateCopyWithImpl<_$_TabNavigationState>(
          this, _$identity);
}

abstract class _TabNavigationState implements TabNavigationState {
  const factory _TabNavigationState(
      {final TabController? tabController,
      final int selectedTab,
      final bool isLoading}) = _$_TabNavigationState;

  @override
  TabController? get tabController;
  @override
  int get selectedTab;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_TabNavigationStateCopyWith<_$_TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
