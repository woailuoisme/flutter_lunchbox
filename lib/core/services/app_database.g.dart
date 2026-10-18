// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CartEntriesTable extends CartEntries
    with TableInfo<$CartEntriesTable, CartEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _deviceIdMeta = const VerificationMeta(
    'deviceId',
  );
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
    'device_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productDataMeta = const VerificationMeta(
    'productData',
  );
  @override
  late final GeneratedColumn<String> productData = GeneratedColumn<String>(
    'product_data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _isSelectedMeta = const VerificationMeta(
    'isSelected',
  );
  @override
  late final GeneratedColumn<bool> isSelected = GeneratedColumn<bool>(
    'is_selected',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_selected" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    deviceId,
    productId,
    productData,
    quantity,
    isSelected,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<CartEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(
        _deviceIdMeta,
        deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('product_data')) {
      context.handle(
        _productDataMeta,
        productData.isAcceptableOrUnknown(
          data['product_data']!,
          _productDataMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_productDataMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    }
    if (data.containsKey('is_selected')) {
      context.handle(
        _isSelectedMeta,
        isSelected.isAcceptableOrUnknown(data['is_selected']!, _isSelectedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CartEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      deviceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      productData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_data'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      isSelected: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_selected'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CartEntriesTable createAlias(String alias) {
    return $CartEntriesTable(attachedDatabase, alias);
  }
}

class CartEntry extends DataClass implements Insertable<CartEntry> {
  final int id;
  final String deviceId;
  final String productId;
  final String productData;
  final int quantity;
  final bool isSelected;
  final DateTime createdAt;
  final DateTime updatedAt;
  const CartEntry({
    required this.id,
    required this.deviceId,
    required this.productId,
    required this.productData,
    required this.quantity,
    required this.isSelected,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['device_id'] = Variable<String>(deviceId);
    map['product_id'] = Variable<String>(productId);
    map['product_data'] = Variable<String>(productData);
    map['quantity'] = Variable<int>(quantity);
    map['is_selected'] = Variable<bool>(isSelected);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CartEntriesCompanion toCompanion(bool nullToAbsent) {
    return CartEntriesCompanion(
      id: Value(id),
      deviceId: Value(deviceId),
      productId: Value(productId),
      productData: Value(productData),
      quantity: Value(quantity),
      isSelected: Value(isSelected),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory CartEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartEntry(
      id: serializer.fromJson<int>(json['id']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      productId: serializer.fromJson<String>(json['productId']),
      productData: serializer.fromJson<String>(json['productData']),
      quantity: serializer.fromJson<int>(json['quantity']),
      isSelected: serializer.fromJson<bool>(json['isSelected']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'deviceId': serializer.toJson<String>(deviceId),
      'productId': serializer.toJson<String>(productId),
      'productData': serializer.toJson<String>(productData),
      'quantity': serializer.toJson<int>(quantity),
      'isSelected': serializer.toJson<bool>(isSelected),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CartEntry copyWith({
    int? id,
    String? deviceId,
    String? productId,
    String? productData,
    int? quantity,
    bool? isSelected,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => CartEntry(
    id: id ?? this.id,
    deviceId: deviceId ?? this.deviceId,
    productId: productId ?? this.productId,
    productData: productData ?? this.productData,
    quantity: quantity ?? this.quantity,
    isSelected: isSelected ?? this.isSelected,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CartEntry copyWithCompanion(CartEntriesCompanion data) {
    return CartEntry(
      id: data.id.present ? data.id.value : this.id,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      productId: data.productId.present ? data.productId.value : this.productId,
      productData: data.productData.present
          ? data.productData.value
          : this.productData,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      isSelected: data.isSelected.present
          ? data.isSelected.value
          : this.isSelected,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CartEntry(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId, ')
          ..write('productId: $productId, ')
          ..write('productData: $productData, ')
          ..write('quantity: $quantity, ')
          ..write('isSelected: $isSelected, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    deviceId,
    productId,
    productData,
    quantity,
    isSelected,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartEntry &&
          other.id == this.id &&
          other.deviceId == this.deviceId &&
          other.productId == this.productId &&
          other.productData == this.productData &&
          other.quantity == this.quantity &&
          other.isSelected == this.isSelected &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CartEntriesCompanion extends UpdateCompanion<CartEntry> {
  final Value<int> id;
  final Value<String> deviceId;
  final Value<String> productId;
  final Value<String> productData;
  final Value<int> quantity;
  final Value<bool> isSelected;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CartEntriesCompanion({
    this.id = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.productId = const Value.absent(),
    this.productData = const Value.absent(),
    this.quantity = const Value.absent(),
    this.isSelected = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CartEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String deviceId,
    required String productId,
    required String productData,
    this.quantity = const Value.absent(),
    this.isSelected = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : deviceId = Value(deviceId),
       productId = Value(productId),
       productData = Value(productData),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<CartEntry> custom({
    Expression<int>? id,
    Expression<String>? deviceId,
    Expression<String>? productId,
    Expression<String>? productData,
    Expression<int>? quantity,
    Expression<bool>? isSelected,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (deviceId != null) 'device_id': deviceId,
      if (productId != null) 'product_id': productId,
      if (productData != null) 'product_data': productData,
      if (quantity != null) 'quantity': quantity,
      if (isSelected != null) 'is_selected': isSelected,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CartEntriesCompanion copyWith({
    Value<int>? id,
    Value<String>? deviceId,
    Value<String>? productId,
    Value<String>? productData,
    Value<int>? quantity,
    Value<bool>? isSelected,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
  }) {
    return CartEntriesCompanion(
      id: id ?? this.id,
      deviceId: deviceId ?? this.deviceId,
      productId: productId ?? this.productId,
      productData: productData ?? this.productData,
      quantity: quantity ?? this.quantity,
      isSelected: isSelected ?? this.isSelected,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (productData.present) {
      map['product_data'] = Variable<String>(productData.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (isSelected.present) {
      map['is_selected'] = Variable<bool>(isSelected.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartEntriesCompanion(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId, ')
          ..write('productId: $productId, ')
          ..write('productData: $productData, ')
          ..write('quantity: $quantity, ')
          ..write('isSelected: $isSelected, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CartEntriesTable cartEntries = $CartEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cartEntries];
}

typedef $$CartEntriesTableCreateCompanionBuilder =
    CartEntriesCompanion Function({
      Value<int> id,
      required String deviceId,
      required String productId,
      required String productData,
      Value<int> quantity,
      Value<bool> isSelected,
      required DateTime createdAt,
      required DateTime updatedAt,
    });
typedef $$CartEntriesTableUpdateCompanionBuilder =
    CartEntriesCompanion Function({
      Value<int> id,
      Value<String> deviceId,
      Value<String> productId,
      Value<String> productData,
      Value<int> quantity,
      Value<bool> isSelected,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });

class $$CartEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $CartEntriesTable> {
  $$CartEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productData => $composableBuilder(
    column: $table.productData,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSelected => $composableBuilder(
    column: $table.isSelected,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CartEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CartEntriesTable> {
  $$CartEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deviceId => $composableBuilder(
    column: $table.deviceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productData => $composableBuilder(
    column: $table.productData,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSelected => $composableBuilder(
    column: $table.isSelected,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CartEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CartEntriesTable> {
  $$CartEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get deviceId =>
      $composableBuilder(column: $table.deviceId, builder: (column) => column);

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get productData => $composableBuilder(
    column: $table.productData,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<bool> get isSelected => $composableBuilder(
    column: $table.isSelected,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CartEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CartEntriesTable,
          CartEntry,
          $$CartEntriesTableFilterComposer,
          $$CartEntriesTableOrderingComposer,
          $$CartEntriesTableAnnotationComposer,
          $$CartEntriesTableCreateCompanionBuilder,
          $$CartEntriesTableUpdateCompanionBuilder,
          (
            CartEntry,
            BaseReferences<_$AppDatabase, $CartEntriesTable, CartEntry>,
          ),
          CartEntry,
          PrefetchHooks Function()
        > {
  $$CartEntriesTableTableManager(_$AppDatabase db, $CartEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CartEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CartEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CartEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> deviceId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<String> productData = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<bool> isSelected = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => CartEntriesCompanion(
                id: id,
                deviceId: deviceId,
                productId: productId,
                productData: productData,
                quantity: quantity,
                isSelected: isSelected,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String deviceId,
                required String productId,
                required String productData,
                Value<int> quantity = const Value.absent(),
                Value<bool> isSelected = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
              }) => CartEntriesCompanion.insert(
                id: id,
                deviceId: deviceId,
                productId: productId,
                productData: productData,
                quantity: quantity,
                isSelected: isSelected,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CartEntriesTable, CartEntry>(table),
                  BaseReferences<_$AppDatabase, $CartEntriesTable, CartEntry>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CartEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CartEntriesTable,
      CartEntry,
      $$CartEntriesTableFilterComposer,
      $$CartEntriesTableOrderingComposer,
      $$CartEntriesTableAnnotationComposer,
      $$CartEntriesTableCreateCompanionBuilder,
      $$CartEntriesTableUpdateCompanionBuilder,
      (CartEntry, BaseReferences<_$AppDatabase, $CartEntriesTable, CartEntry>),
      CartEntry,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CartEntriesTableTableManager get cartEntries =>
      $$CartEntriesTableTableManager(_db, _db.cartEntries);
}
