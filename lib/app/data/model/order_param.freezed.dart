// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderParam _$OrderParamFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'model':
      return OrderParamModel.fromJson(json);
    case 'itemModel':
      return OrderParamItemModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OrderParam',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OrderParam {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)
        model,
    required TResult Function(@JsonKey(name: 'product_id') int productId,
            int quantity, @JsonKey(name: 'unit_price') int unitPrice)
        itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)?
        model,
    TResult? Function(@JsonKey(name: 'product_id') int productId, int quantity,
            @JsonKey(name: 'unit_price') int unitPrice)?
        itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)?
        model,
    TResult Function(@JsonKey(name: 'product_id') int productId, int quantity,
            @JsonKey(name: 'unit_price') int unitPrice)?
        itemModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderParamModel value) model,
    required TResult Function(OrderParamItemModel value) itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderParamModel value)? model,
    TResult? Function(OrderParamItemModel value)? itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderParamModel value)? model,
    TResult Function(OrderParamItemModel value)? itemModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderParamCopyWith<$Res> {
  factory $OrderParamCopyWith(
          OrderParam value, $Res Function(OrderParam) then) =
      _$OrderParamCopyWithImpl<$Res, OrderParam>;
}

/// @nodoc
class _$OrderParamCopyWithImpl<$Res, $Val extends OrderParam>
    implements $OrderParamCopyWith<$Res> {
  _$OrderParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderParamModelImplCopyWith<$Res> {
  factory _$$OrderParamModelImplCopyWith(_$OrderParamModelImpl value,
          $Res Function(_$OrderParamModelImpl) then) =
      __$$OrderParamModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'no_meja') String noMeja,
      @JsonKey(name: 'total_price') int totalPrice,
      String? notes,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'paid_amount') int paidAmount,
      @JsonKey(name: 'change_amount') int changeAmount,
      List<OrderParamItemModel> items});
}

/// @nodoc
class __$$OrderParamModelImplCopyWithImpl<$Res>
    extends _$OrderParamCopyWithImpl<$Res, _$OrderParamModelImpl>
    implements _$$OrderParamModelImplCopyWith<$Res> {
  __$$OrderParamModelImplCopyWithImpl(
      _$OrderParamModelImpl _value, $Res Function(_$OrderParamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? noMeja = null,
    Object? totalPrice = null,
    Object? notes = freezed,
    Object? paymentMethodId = null,
    Object? paidAmount = null,
    Object? changeAmount = null,
    Object? items = null,
  }) {
    return _then(_$OrderParamModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noMeja: null == noMeja
          ? _value.noMeja
          : noMeja // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      changeAmount: null == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderParamItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderParamModelImpl implements OrderParamModel {
  const _$OrderParamModelImpl(
      {required this.name,
      @JsonKey(name: 'no_meja') required this.noMeja,
      @JsonKey(name: 'total_price') required this.totalPrice,
      this.notes,
      @JsonKey(name: 'payment_method_id') required this.paymentMethodId,
      @JsonKey(name: 'paid_amount') required this.paidAmount,
      @JsonKey(name: 'change_amount') required this.changeAmount,
      required final List<OrderParamItemModel> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'model';

  factory _$OrderParamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderParamModelImplFromJson(json);

  @override
  final String name;
// String email,
  @override
  @JsonKey(name: 'no_meja')
  final String noMeja;
// required String gender,
// String? birthday,
// String? phone,
  @override
  @JsonKey(name: 'total_price')
  final int totalPrice;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'payment_method_id')
  final int paymentMethodId;
  @override
  @JsonKey(name: 'paid_amount')
  final int paidAmount;
  @override
  @JsonKey(name: 'change_amount')
  final int changeAmount;
  final List<OrderParamItemModel> _items;
  @override
  List<OrderParamItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OrderParam.model(name: $name, noMeja: $noMeja, totalPrice: $totalPrice, notes: $notes, paymentMethodId: $paymentMethodId, paidAmount: $paidAmount, changeAmount: $changeAmount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderParamModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.noMeja, noMeja) || other.noMeja == noMeja) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.changeAmount, changeAmount) ||
                other.changeAmount == changeAmount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      noMeja,
      totalPrice,
      notes,
      paymentMethodId,
      paidAmount,
      changeAmount,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderParamModelImplCopyWith<_$OrderParamModelImpl> get copyWith =>
      __$$OrderParamModelImplCopyWithImpl<_$OrderParamModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)
        model,
    required TResult Function(@JsonKey(name: 'product_id') int productId,
            int quantity, @JsonKey(name: 'unit_price') int unitPrice)
        itemModel,
  }) {
    return model(name, noMeja, totalPrice, notes, paymentMethodId, paidAmount,
        changeAmount, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)?
        model,
    TResult? Function(@JsonKey(name: 'product_id') int productId, int quantity,
            @JsonKey(name: 'unit_price') int unitPrice)?
        itemModel,
  }) {
    return model?.call(name, noMeja, totalPrice, notes, paymentMethodId,
        paidAmount, changeAmount, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)?
        model,
    TResult Function(@JsonKey(name: 'product_id') int productId, int quantity,
            @JsonKey(name: 'unit_price') int unitPrice)?
        itemModel,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(name, noMeja, totalPrice, notes, paymentMethodId, paidAmount,
          changeAmount, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderParamModel value) model,
    required TResult Function(OrderParamItemModel value) itemModel,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderParamModel value)? model,
    TResult? Function(OrderParamItemModel value)? itemModel,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderParamModel value)? model,
    TResult Function(OrderParamItemModel value)? itemModel,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderParamModelImplToJson(
      this,
    );
  }
}

abstract class OrderParamModel implements OrderParam {
  const factory OrderParamModel(
      {required final String name,
      @JsonKey(name: 'no_meja') required final String noMeja,
      @JsonKey(name: 'total_price') required final int totalPrice,
      final String? notes,
      @JsonKey(name: 'payment_method_id') required final int paymentMethodId,
      @JsonKey(name: 'paid_amount') required final int paidAmount,
      @JsonKey(name: 'change_amount') required final int changeAmount,
      required final List<OrderParamItemModel> items}) = _$OrderParamModelImpl;

  factory OrderParamModel.fromJson(Map<String, dynamic> json) =
      _$OrderParamModelImpl.fromJson;

  String get name; // String email,
  @JsonKey(name: 'no_meja')
  String get noMeja; // required String gender,
// String? birthday,
// String? phone,
  @JsonKey(name: 'total_price')
  int get totalPrice;
  String? get notes;
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId;
  @JsonKey(name: 'paid_amount')
  int get paidAmount;
  @JsonKey(name: 'change_amount')
  int get changeAmount;
  List<OrderParamItemModel> get items;
  @JsonKey(ignore: true)
  _$$OrderParamModelImplCopyWith<_$OrderParamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderParamItemModelImplCopyWith<$Res> {
  factory _$$OrderParamItemModelImplCopyWith(_$OrderParamItemModelImpl value,
          $Res Function(_$OrderParamItemModelImpl) then) =
      __$$OrderParamItemModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      int quantity,
      @JsonKey(name: 'unit_price') int unitPrice});
}

/// @nodoc
class __$$OrderParamItemModelImplCopyWithImpl<$Res>
    extends _$OrderParamCopyWithImpl<$Res, _$OrderParamItemModelImpl>
    implements _$$OrderParamItemModelImplCopyWith<$Res> {
  __$$OrderParamItemModelImplCopyWithImpl(_$OrderParamItemModelImpl _value,
      $Res Function(_$OrderParamItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? unitPrice = null,
  }) {
    return _then(_$OrderParamItemModelImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderParamItemModelImpl implements OrderParamItemModel {
  const _$OrderParamItemModelImpl(
      {@JsonKey(name: 'product_id') required this.productId,
      required this.quantity,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      final String? $type})
      : $type = $type ?? 'itemModel';

  factory _$OrderParamItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderParamItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final int unitPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OrderParam.itemModel(productId: $productId, quantity: $quantity, unitPrice: $unitPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderParamItemModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity, unitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderParamItemModelImplCopyWith<_$OrderParamItemModelImpl> get copyWith =>
      __$$OrderParamItemModelImplCopyWithImpl<_$OrderParamItemModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)
        model,
    required TResult Function(@JsonKey(name: 'product_id') int productId,
            int quantity, @JsonKey(name: 'unit_price') int unitPrice)
        itemModel,
  }) {
    return itemModel(productId, quantity, unitPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)?
        model,
    TResult? Function(@JsonKey(name: 'product_id') int productId, int quantity,
            @JsonKey(name: 'unit_price') int unitPrice)?
        itemModel,
  }) {
    return itemModel?.call(productId, quantity, unitPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') int totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method_id') int paymentMethodId,
            @JsonKey(name: 'paid_amount') int paidAmount,
            @JsonKey(name: 'change_amount') int changeAmount,
            List<OrderParamItemModel> items)?
        model,
    TResult Function(@JsonKey(name: 'product_id') int productId, int quantity,
            @JsonKey(name: 'unit_price') int unitPrice)?
        itemModel,
    required TResult orElse(),
  }) {
    if (itemModel != null) {
      return itemModel(productId, quantity, unitPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderParamModel value) model,
    required TResult Function(OrderParamItemModel value) itemModel,
  }) {
    return itemModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderParamModel value)? model,
    TResult? Function(OrderParamItemModel value)? itemModel,
  }) {
    return itemModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderParamModel value)? model,
    TResult Function(OrderParamItemModel value)? itemModel,
    required TResult orElse(),
  }) {
    if (itemModel != null) {
      return itemModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderParamItemModelImplToJson(
      this,
    );
  }
}

abstract class OrderParamItemModel implements OrderParam {
  const factory OrderParamItemModel(
          {@JsonKey(name: 'product_id') required final int productId,
          required final int quantity,
          @JsonKey(name: 'unit_price') required final int unitPrice}) =
      _$OrderParamItemModelImpl;

  factory OrderParamItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderParamItemModelImpl.fromJson;

  @JsonKey(name: 'product_id')
  int get productId;
  int get quantity;
  @JsonKey(name: 'unit_price')
  int get unitPrice;
  @JsonKey(ignore: true)
  _$$OrderParamItemModelImplCopyWith<_$OrderParamItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
