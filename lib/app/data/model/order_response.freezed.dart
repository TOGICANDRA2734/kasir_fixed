// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'model':
      return OrderResponseModel.fromJson(json);
    case 'itemModel':
      return OrderResponseItemModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OrderResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OrderResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        model,
    required TResult Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)
        itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        model,
    TResult? Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)?
        itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        model,
    TResult Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)?
        itemModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderResponseModel value) model,
    required TResult Function(OrderResponseItemModel value) itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderResponseModel value)? model,
    TResult? Function(OrderResponseItemModel value)? itemModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderResponseModel value)? model,
    TResult Function(OrderResponseItemModel value)? itemModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderResponseModelImplCopyWith<$Res> {
  factory _$$OrderResponseModelImplCopyWith(_$OrderResponseModelImpl value,
          $Res Function(_$OrderResponseModelImpl) then) =
      __$$OrderResponseModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      String name,
      @JsonKey(name: 'no_meja') String noMeja,
      @JsonKey(name: 'total_price') String? totalPrice,
      String? notes,
      @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
      @JsonKey(name: 'payment_method_id') String? paymentMethodId,
      @JsonKey(name: 'paid_amount') String? paidAmount,
      @JsonKey(name: 'change_amount') String? changeAmount,
      List<OrderResponseItemModel> items,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$OrderResponseModelImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseModelImpl>
    implements _$$OrderResponseModelImplCopyWith<$Res> {
  __$$OrderResponseModelImplCopyWithImpl(_$OrderResponseModelImpl _value,
      $Res Function(_$OrderResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? noMeja = null,
    Object? totalPrice = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMethodId = freezed,
    Object? paidAmount = freezed,
    Object? changeAmount = freezed,
    Object? items = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noMeja: null == noMeja
          ? _value.noMeja
          : noMeja // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEntity?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      changeAmount: freezed == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderResponseItemModel>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseModelImpl implements OrderResponseModel {
  const _$OrderResponseModelImpl(
      {this.id,
      required this.name,
      @JsonKey(name: 'no_meja') required this.noMeja,
      @JsonKey(name: 'total_price') this.totalPrice,
      this.notes,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'payment_method_id') this.paymentMethodId,
      @JsonKey(name: 'paid_amount') this.paidAmount,
      @JsonKey(name: 'change_amount') this.changeAmount,
      required final List<OrderResponseItemModel> items,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final String? $type})
      : _items = items,
        $type = $type ?? 'model';

  factory _$OrderResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  @JsonKey(name: 'no_meja')
  final String noMeja;
// String? email,
// required String gender,
// String? birthday,
// String? phone,
  @override
  @JsonKey(name: 'total_price')
  final String? totalPrice;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'payment_method')
  final PaymentMethodEntity? paymentMethod;
  @override
  @JsonKey(name: 'payment_method_id')
  final String? paymentMethodId;
  @override
  @JsonKey(name: 'paid_amount')
  final String? paidAmount;
  @override
  @JsonKey(name: 'change_amount')
  final String? changeAmount;
  final List<OrderResponseItemModel> _items;
  @override
  List<OrderResponseItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OrderResponse.model(id: $id, name: $name, noMeja: $noMeja, totalPrice: $totalPrice, notes: $notes, paymentMethod: $paymentMethod, paymentMethodId: $paymentMethodId, paidAmount: $paidAmount, changeAmount: $changeAmount, items: $items, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.noMeja, noMeja) || other.noMeja == noMeja) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.changeAmount, changeAmount) ||
                other.changeAmount == changeAmount) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      noMeja,
      totalPrice,
      notes,
      const DeepCollectionEquality().hash(paymentMethod),
      paymentMethodId,
      paidAmount,
      changeAmount,
      const DeepCollectionEquality().hash(_items),
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseModelImplCopyWith<_$OrderResponseModelImpl> get copyWith =>
      __$$OrderResponseModelImplCopyWithImpl<_$OrderResponseModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        model,
    required TResult Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)
        itemModel,
  }) {
    return model(id, name, noMeja, totalPrice, notes, paymentMethod,
        paymentMethodId, paidAmount, changeAmount, items, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        model,
    TResult? Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)?
        itemModel,
  }) {
    return model?.call(id, name, noMeja, totalPrice, notes, paymentMethod,
        paymentMethodId, paidAmount, changeAmount, items, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        model,
    TResult Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)?
        itemModel,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(id, name, noMeja, totalPrice, notes, paymentMethod,
          paymentMethodId, paidAmount, changeAmount, items, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderResponseModel value) model,
    required TResult Function(OrderResponseItemModel value) itemModel,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderResponseModel value)? model,
    TResult? Function(OrderResponseItemModel value)? itemModel,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderResponseModel value)? model,
    TResult Function(OrderResponseItemModel value)? itemModel,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseModelImplToJson(
      this,
    );
  }
}

abstract class OrderResponseModel implements OrderResponse {
  const factory OrderResponseModel(
      {final int? id,
      required final String name,
      @JsonKey(name: 'no_meja') required final String noMeja,
      @JsonKey(name: 'total_price') final String? totalPrice,
      final String? notes,
      @JsonKey(name: 'payment_method') final PaymentMethodEntity? paymentMethod,
      @JsonKey(name: 'payment_method_id') final String? paymentMethodId,
      @JsonKey(name: 'paid_amount') final String? paidAmount,
      @JsonKey(name: 'change_amount') final String? changeAmount,
      required final List<OrderResponseItemModel> items,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$OrderResponseModelImpl;

  factory OrderResponseModel.fromJson(Map<String, dynamic> json) =
      _$OrderResponseModelImpl.fromJson;

  int? get id;
  String get name;
  @JsonKey(name: 'no_meja')
  String get noMeja; // String? email,
// required String gender,
// String? birthday,
// String? phone,
  @JsonKey(name: 'total_price')
  String? get totalPrice;
  String? get notes;
  @JsonKey(name: 'payment_method')
  PaymentMethodEntity? get paymentMethod;
  @JsonKey(name: 'payment_method_id')
  String? get paymentMethodId;
  @JsonKey(name: 'paid_amount')
  String? get paidAmount;
  @JsonKey(name: 'change_amount')
  String? get changeAmount;
  List<OrderResponseItemModel> get items;
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @JsonKey(ignore: true)
  _$$OrderResponseModelImplCopyWith<_$OrderResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderResponseItemModelImplCopyWith<$Res> {
  factory _$$OrderResponseItemModelImplCopyWith(
          _$OrderResponseItemModelImpl value,
          $Res Function(_$OrderResponseItemModelImpl) then) =
      __$$OrderResponseItemModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') String productId,
      @JsonKey(name: 'product_name') String productName,
      String quantity,
      @JsonKey(name: 'unit_price') String unitPrice});
}

/// @nodoc
class __$$OrderResponseItemModelImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseItemModelImpl>
    implements _$$OrderResponseItemModelImplCopyWith<$Res> {
  __$$OrderResponseItemModelImplCopyWithImpl(
      _$OrderResponseItemModelImpl _value,
      $Res Function(_$OrderResponseItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? unitPrice = null,
  }) {
    return _then(_$OrderResponseItemModelImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseItemModelImpl implements OrderResponseItemModel {
  const _$OrderResponseItemModelImpl(
      {@JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'product_name') required this.productName,
      required this.quantity,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      final String? $type})
      : $type = $type ?? 'itemModel';

  factory _$OrderResponseItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  final String quantity;
  @override
  @JsonKey(name: 'unit_price')
  final String unitPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OrderResponse.itemModel(productId: $productId, productName: $productName, quantity: $quantity, unitPrice: $unitPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseItemModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, productName, quantity, unitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseItemModelImplCopyWith<_$OrderResponseItemModelImpl>
      get copyWith => __$$OrderResponseItemModelImplCopyWithImpl<
          _$OrderResponseItemModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        model,
    required TResult Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)
        itemModel,
  }) {
    return itemModel(productId, productName, quantity, unitPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        model,
    TResult? Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)?
        itemModel,
  }) {
    return itemModel?.call(productId, productName, quantity, unitPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            String name,
            @JsonKey(name: 'no_meja') String noMeja,
            @JsonKey(name: 'total_price') String? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') String? paymentMethodId,
            @JsonKey(name: 'paid_amount') String? paidAmount,
            @JsonKey(name: 'change_amount') String? changeAmount,
            List<OrderResponseItemModel> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        model,
    TResult Function(
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'product_name') String productName,
            String quantity,
            @JsonKey(name: 'unit_price') String unitPrice)?
        itemModel,
    required TResult orElse(),
  }) {
    if (itemModel != null) {
      return itemModel(productId, productName, quantity, unitPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderResponseModel value) model,
    required TResult Function(OrderResponseItemModel value) itemModel,
  }) {
    return itemModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderResponseModel value)? model,
    TResult? Function(OrderResponseItemModel value)? itemModel,
  }) {
    return itemModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderResponseModel value)? model,
    TResult Function(OrderResponseItemModel value)? itemModel,
    required TResult orElse(),
  }) {
    if (itemModel != null) {
      return itemModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseItemModelImplToJson(
      this,
    );
  }
}

abstract class OrderResponseItemModel implements OrderResponse {
  const factory OrderResponseItemModel(
          {@JsonKey(name: 'product_id') required final String productId,
          @JsonKey(name: 'product_name') required final String productName,
          required final String quantity,
          @JsonKey(name: 'unit_price') required final String unitPrice}) =
      _$OrderResponseItemModelImpl;

  factory OrderResponseItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderResponseItemModelImpl.fromJson;

  @JsonKey(name: 'product_id')
  String get productId;
  @JsonKey(name: 'product_name')
  String get productName;
  String get quantity;
  @JsonKey(name: 'unit_price')
  String get unitPrice;
  @JsonKey(ignore: true)
  _$$OrderResponseItemModelImplCopyWith<_$OrderResponseItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
