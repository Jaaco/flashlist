/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class FlashlistItem extends _i1.SerializableEntity {
  FlashlistItem._({
    this.id,
    required this.name,
    required this.parentId,
    required this.orderNr,
  });

  factory FlashlistItem({
    int? id,
    required String name,
    required int parentId,
    required int orderNr,
  }) = _FlashlistItemImpl;

  factory FlashlistItem.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FlashlistItem(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      parentId:
          serializationManager.deserialize<int>(jsonSerialization['parentId']),
      orderNr:
          serializationManager.deserialize<int>(jsonSerialization['orderNr']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int parentId;

  int orderNr;

  FlashlistItem copyWith({
    int? id,
    String? name,
    int? parentId,
    int? orderNr,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'parentId': parentId,
      'orderNr': orderNr,
    };
  }
}

class _Undefined {}

class _FlashlistItemImpl extends FlashlistItem {
  _FlashlistItemImpl({
    int? id,
    required String name,
    required int parentId,
    required int orderNr,
  }) : super._(
          id: id,
          name: name,
          parentId: parentId,
          orderNr: orderNr,
        );

  @override
  FlashlistItem copyWith({
    Object? id = _Undefined,
    String? name,
    int? parentId,
    int? orderNr,
  }) {
    return FlashlistItem(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      parentId: parentId ?? this.parentId,
      orderNr: orderNr ?? this.orderNr,
    );
  }
}
