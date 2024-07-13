// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Order.fromJson(json);
    case 'entity':
      return OrderEntity.fromJson(json);
    case 'itemEntity':
      return OrderItemEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Order',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Order {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        entity,
    required TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)
        itemEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult? Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Order value) $default, {
    required TResult Function(OrderEntity value) entity,
    required TResult Function(OrderItemEntity value) itemEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Order value)? $default, {
    TResult? Function(OrderEntity value)? entity,
    TResult? Function(OrderItemEntity value)? itemEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Order value)? $default, {
    TResult Function(OrderEntity value)? entity,
    TResult Function(OrderItemEntity value)? itemEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderImpl implements _Order {
  _$OrderImpl({final String? $type}) : $type = $type ?? 'default';

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Order()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        entity,
    required TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)
        itemEntity,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult? Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Order value) $default, {
    required TResult Function(OrderEntity value) entity,
    required TResult Function(OrderItemEntity value) itemEntity,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Order value)? $default, {
    TResult? Function(OrderEntity value)? entity,
    TResult? Function(OrderItemEntity value)? itemEntity,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Order value)? $default, {
    TResult Function(OrderEntity value)? entity,
    TResult Function(OrderItemEntity value)? itemEntity,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order() = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String? email,
      String gender,
      String? birthday,
      String? phone,
      @JsonKey(name: 'total_price') int? totalPrice,
      String? notes,
      @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
      @JsonKey(name: 'payment_method_id') int? paymentMethodId,
      @JsonKey(name: 'paid_amount') int? paidAmount,
      @JsonKey(name: 'change_amount') int? changeAmount,
      List<OrderItemEntity> items,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = freezed,
    Object? gender = null,
    Object? birthday = freezed,
    Object? phone = freezed,
    Object? totalPrice = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMethodId = freezed,
    Object? paidAmount = freezed,
    Object? changeAmount = freezed,
    Object? items = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      changeAmount: freezed == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemEntity>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderEntityImpl implements OrderEntity {
  _$OrderEntityImpl(
      {this.id,
      required this.name,
      this.email,
      required this.gender,
      this.birthday,
      this.phone,
      @JsonKey(name: 'total_price') this.totalPrice,
      this.notes,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'payment_method_id') this.paymentMethodId,
      @JsonKey(name: 'paid_amount') this.paidAmount,
      @JsonKey(name: 'change_amount') this.changeAmount,
      required final List<OrderItemEntity> items,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final String? $type})
      : _items = items,
        $type = $type ?? 'entity';

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String gender;
  @override
  final String? birthday;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'total_price')
  final int? totalPrice;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'payment_method')
  final PaymentMethodEntity? paymentMethod;
  @override
  @JsonKey(name: 'payment_method_id')
  final int? paymentMethodId;
  @override
  @JsonKey(name: 'paid_amount')
  final int? paidAmount;
  @override
  @JsonKey(name: 'change_amount')
  final int? changeAmount;
  final List<OrderItemEntity> _items;
  @override
  List<OrderItemEntity> get items {
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
    return 'Order.entity(id: $id, name: $name, email: $email, gender: $gender, birthday: $birthday, phone: $phone, totalPrice: $totalPrice, notes: $notes, paymentMethod: $paymentMethod, paymentMethodId: $paymentMethodId, paidAmount: $paidAmount, changeAmount: $changeAmount, items: $items, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.phone, phone) || other.phone == phone) &&
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
      email,
      gender,
      birthday,
      phone,
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
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        entity,
    required TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)
        itemEntity,
  }) {
    return entity(
        id,
        name,
        email,
        gender,
        birthday,
        phone,
        totalPrice,
        notes,
        paymentMethod,
        paymentMethodId,
        paidAmount,
        changeAmount,
        items,
        updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult? Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
  }) {
    return entity?.call(
        id,
        name,
        email,
        gender,
        birthday,
        phone,
        totalPrice,
        notes,
        paymentMethod,
        paymentMethodId,
        paidAmount,
        changeAmount,
        items,
        updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(
          id,
          name,
          email,
          gender,
          birthday,
          phone,
          totalPrice,
          notes,
          paymentMethod,
          paymentMethodId,
          paidAmount,
          changeAmount,
          items,
          updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Order value) $default, {
    required TResult Function(OrderEntity value) entity,
    required TResult Function(OrderItemEntity value) itemEntity,
  }) {
    return entity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Order value)? $default, {
    TResult? Function(OrderEntity value)? entity,
    TResult? Function(OrderItemEntity value)? itemEntity,
  }) {
    return entity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Order value)? $default, {
    TResult Function(OrderEntity value)? entity,
    TResult Function(OrderItemEntity value)? itemEntity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(
      this,
    );
  }
}

abstract class OrderEntity implements Order {
  factory OrderEntity(
      {final int? id,
      required final String name,
      final String? email,
      required final String gender,
      final String? birthday,
      final String? phone,
      @JsonKey(name: 'total_price') final int? totalPrice,
      final String? notes,
      @JsonKey(name: 'payment_method') final PaymentMethodEntity? paymentMethod,
      @JsonKey(name: 'payment_method_id') final int? paymentMethodId,
      @JsonKey(name: 'paid_amount') final int? paidAmount,
      @JsonKey(name: 'change_amount') final int? changeAmount,
      required final List<OrderItemEntity> items,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$OrderEntityImpl;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  int? get id;
  String get name;
  String? get email;
  String get gender;
  String? get birthday;
  String? get phone;
  @JsonKey(name: 'total_price')
  int? get totalPrice;
  String? get notes;
  @JsonKey(name: 'payment_method')
  PaymentMethodEntity? get paymentMethod;
  @JsonKey(name: 'payment_method_id')
  int? get paymentMethodId;
  @JsonKey(name: 'paid_amount')
  int? get paidAmount;
  @JsonKey(name: 'change_amount')
  int? get changeAmount;
  List<OrderItemEntity> get items;
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderItemEntityImplCopyWith<$Res> {
  factory _$$OrderItemEntityImplCopyWith(_$OrderItemEntityImpl value,
          $Res Function(_$OrderItemEntityImpl) then) =
      __$$OrderItemEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'product_name') String productName,
      int quantity,
      @JsonKey(name: 'unit_price') int unitPrice,
      String? barcode,
      int? stock});
}

/// @nodoc
class __$$OrderItemEntityImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderItemEntityImpl>
    implements _$$OrderItemEntityImplCopyWith<$Res> {
  __$$OrderItemEntityImplCopyWithImpl(
      _$OrderItemEntityImpl _value, $Res Function(_$OrderItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? barcode = freezed,
    Object? stock = freezed,
  }) {
    return _then(_$OrderItemEntityImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemEntityImpl implements OrderItemEntity {
  const _$OrderItemEntityImpl(
      {@JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'product_name') required this.productName,
      required this.quantity,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      this.barcode,
      this.stock,
      final String? $type})
      : $type = $type ?? 'itemEntity';

  factory _$OrderItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemEntityImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final int unitPrice;
  @override
  final String? barcode;
  @override
  final int? stock;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Order.itemEntity(productId: $productId, productName: $productName, quantity: $quantity, unitPrice: $unitPrice, barcode: $barcode, stock: $stock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemEntityImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, productId, productName, quantity, unitPrice, barcode, stock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemEntityImplCopyWith<_$OrderItemEntityImpl> get copyWith =>
      __$$OrderItemEntityImplCopyWithImpl<_$OrderItemEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)
        entity,
    required TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)
        itemEntity,
  }) {
    return itemEntity(
        productId, productName, quantity, unitPrice, barcode, stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult? Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
  }) {
    return itemEntity?.call(
        productId, productName, quantity, unitPrice, barcode, stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            int? id,
            String name,
            String? email,
            String gender,
            String? birthday,
            String? phone,
            @JsonKey(name: 'total_price') int? totalPrice,
            String? notes,
            @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
            @JsonKey(name: 'payment_method_id') int? paymentMethodId,
            @JsonKey(name: 'paid_amount') int? paidAmount,
            @JsonKey(name: 'change_amount') int? changeAmount,
            List<OrderItemEntity> items,
            @JsonKey(name: 'updated_at') String? updatedAt)?
        entity,
    TResult Function(
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'product_name') String productName,
            int quantity,
            @JsonKey(name: 'unit_price') int unitPrice,
            String? barcode,
            int? stock)?
        itemEntity,
    required TResult orElse(),
  }) {
    if (itemEntity != null) {
      return itemEntity(
          productId, productName, quantity, unitPrice, barcode, stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Order value) $default, {
    required TResult Function(OrderEntity value) entity,
    required TResult Function(OrderItemEntity value) itemEntity,
  }) {
    return itemEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Order value)? $default, {
    TResult? Function(OrderEntity value)? entity,
    TResult? Function(OrderItemEntity value)? itemEntity,
  }) {
    return itemEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Order value)? $default, {
    TResult Function(OrderEntity value)? entity,
    TResult Function(OrderItemEntity value)? itemEntity,
    required TResult orElse(),
  }) {
    if (itemEntity != null) {
      return itemEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemEntityImplToJson(
      this,
    );
  }
}

abstract class OrderItemEntity implements Order {
  const factory OrderItemEntity(
      {@JsonKey(name: 'product_id') required final int productId,
      @JsonKey(name: 'product_name') required final String productName,
      required final int quantity,
      @JsonKey(name: 'unit_price') required final int unitPrice,
      final String? barcode,
      final int? stock}) = _$OrderItemEntityImpl;

  factory OrderItemEntity.fromJson(Map<String, dynamic> json) =
      _$OrderItemEntityImpl.fromJson;

  @JsonKey(name: 'product_id')
  int get productId;
  @JsonKey(name: 'product_name')
  String get productName;
  int get quantity;
  @JsonKey(name: 'unit_price')
  int get unitPrice;
  String? get barcode;
  int? get stock;
  @JsonKey(ignore: true)
  _$$OrderItemEntityImplCopyWith<_$OrderItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
