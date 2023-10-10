// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_secure_info.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalSecureInfoCollection on Isar {
  IsarCollection<LocalSecureInfo> get localSecureInfos => this.collection();
}

const LocalSecureInfoSchema = CollectionSchema(
  name: r'LocalSecureInfo',
  id: -6606015295072796814,
  properties: {
    r'bankAccount': PropertySchema(
      id: 0,
      name: r'bankAccount',
      type: IsarType.string,
    ),
    r'bankCode': PropertySchema(
      id: 1,
      name: r'bankCode',
      type: IsarType.string,
    ),
    r'bankType': PropertySchema(
      id: 2,
      name: r'bankType',
      type: IsarType.byte,
      enumMap: _LocalSecureInfobankTypeEnumValueMap,
    ),
    r'cardNumber': PropertySchema(
      id: 3,
      name: r'cardNumber',
      type: IsarType.string,
    ),
    r'cardPassword': PropertySchema(
      id: 4,
      name: r'cardPassword',
      type: IsarType.string,
    ),
    r'createdTime': PropertySchema(
      id: 5,
      name: r'createdTime',
      type: IsarType.long,
    ),
    r'creditCardType': PropertySchema(
      id: 6,
      name: r'creditCardType',
      type: IsarType.byte,
      enumMap: _LocalSecureInfocreditCardTypeEnumValueMap,
    ),
    r'cvv': PropertySchema(
      id: 7,
      name: r'cvv',
      type: IsarType.string,
    ),
    r'expirationDate': PropertySchema(
      id: 8,
      name: r'expirationDate',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 9,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'holderName': PropertySchema(
      id: 10,
      name: r'holderName',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 11,
      name: r'id',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 12,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'localSecureInfoType': PropertySchema(
      id: 13,
      name: r'localSecureInfoType',
      type: IsarType.byte,
      enumMap: _LocalSecureInfolocalSecureInfoTypeEnumValueMap,
    ),
    r'loginAccount': PropertySchema(
      id: 14,
      name: r'loginAccount',
      type: IsarType.string,
    ),
    r'note': PropertySchema(
      id: 15,
      name: r'note',
      type: IsarType.string,
    ),
    r'password': PropertySchema(
      id: 16,
      name: r'password',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 17,
      name: r'title',
      type: IsarType.string,
    ),
    r'updatedTime': PropertySchema(
      id: 18,
      name: r'updatedTime',
      type: IsarType.long,
    ),
    r'webUrl': PropertySchema(
      id: 19,
      name: r'webUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _localSecureInfoEstimateSize,
  serialize: _localSecureInfoSerialize,
  deserialize: _localSecureInfoDeserialize,
  deserializeProp: _localSecureInfoDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _localSecureInfoGetId,
  getLinks: _localSecureInfoGetLinks,
  attach: _localSecureInfoAttach,
  version: '3.1.0+1',
);

int _localSecureInfoEstimateSize(
  LocalSecureInfo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bankAccount;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bankCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cardNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cardPassword;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cvv;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.expirationDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.holderName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.imageUrl.length * 3;
  {
    final value = object.loginAccount;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.note.length * 3;
  {
    final value = object.password;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  {
    final value = object.webUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _localSecureInfoSerialize(
  LocalSecureInfo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bankAccount);
  writer.writeString(offsets[1], object.bankCode);
  writer.writeByte(offsets[2], object.bankType.index);
  writer.writeString(offsets[3], object.cardNumber);
  writer.writeString(offsets[4], object.cardPassword);
  writer.writeLong(offsets[5], object.createdTime);
  writer.writeByte(offsets[6], object.creditCardType.index);
  writer.writeString(offsets[7], object.cvv);
  writer.writeString(offsets[8], object.expirationDate);
  writer.writeLong(offsets[9], object.hashCode);
  writer.writeString(offsets[10], object.holderName);
  writer.writeString(offsets[11], object.id);
  writer.writeString(offsets[12], object.imageUrl);
  writer.writeByte(offsets[13], object.localSecureInfoType.index);
  writer.writeString(offsets[14], object.loginAccount);
  writer.writeString(offsets[15], object.note);
  writer.writeString(offsets[16], object.password);
  writer.writeString(offsets[17], object.title);
  writer.writeLong(offsets[18], object.updatedTime);
  writer.writeString(offsets[19], object.webUrl);
}

LocalSecureInfo _localSecureInfoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalSecureInfo(
    bankAccount: reader.readStringOrNull(offsets[0]),
    bankCode: reader.readStringOrNull(offsets[1]),
    bankType: _LocalSecureInfobankTypeValueEnumMap[
            reader.readByteOrNull(offsets[2])] ??
        BankType.unKnown,
    cardNumber: reader.readStringOrNull(offsets[3]),
    cardPassword: reader.readStringOrNull(offsets[4]),
    createdTime: reader.readLong(offsets[5]),
    creditCardType: _LocalSecureInfocreditCardTypeValueEnumMap[
            reader.readByteOrNull(offsets[6])] ??
        CreditCardType.unKnown,
    cvv: reader.readStringOrNull(offsets[7]),
    expirationDate: reader.readStringOrNull(offsets[8]),
    holderName: reader.readStringOrNull(offsets[10]),
    id: reader.readString(offsets[11]),
    imageUrl: reader.readString(offsets[12]),
    localSecureInfoType: _LocalSecureInfolocalSecureInfoTypeValueEnumMap[
            reader.readByteOrNull(offsets[13])] ??
        LocalSecureInfoType.login,
    loginAccount: reader.readStringOrNull(offsets[14]),
    note: reader.readString(offsets[15]),
    password: reader.readStringOrNull(offsets[16]),
    title: reader.readString(offsets[17]),
    updatedTime: reader.readLong(offsets[18]),
    webUrl: reader.readStringOrNull(offsets[19]),
  );
  return object;
}

P _localSecureInfoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (_LocalSecureInfobankTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          BankType.unKnown) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (_LocalSecureInfocreditCardTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          CreditCardType.unKnown) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (_LocalSecureInfolocalSecureInfoTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          LocalSecureInfoType.login) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _LocalSecureInfobankTypeEnumValueMap = {
  'bankAccount': 0,
  'creditCard': 1,
  'unKnown': 2,
};
const _LocalSecureInfobankTypeValueEnumMap = {
  0: BankType.bankAccount,
  1: BankType.creditCard,
  2: BankType.unKnown,
};
const _LocalSecureInfocreditCardTypeEnumValueMap = {
  'visa': 0,
  'masterCard': 1,
  'other': 2,
  'unKnown': 3,
};
const _LocalSecureInfocreditCardTypeValueEnumMap = {
  0: CreditCardType.visa,
  1: CreditCardType.masterCard,
  2: CreditCardType.other,
  3: CreditCardType.unKnown,
};
const _LocalSecureInfolocalSecureInfoTypeEnumValueMap = {
  'login': 0,
  'bank': 1,
  'note': 2,
  'unKnown': 3,
};
const _LocalSecureInfolocalSecureInfoTypeValueEnumMap = {
  0: LocalSecureInfoType.login,
  1: LocalSecureInfoType.bank,
  2: LocalSecureInfoType.note,
  3: LocalSecureInfoType.unKnown,
};

Id _localSecureInfoGetId(LocalSecureInfo object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _localSecureInfoGetLinks(LocalSecureInfo object) {
  return [];
}

void _localSecureInfoAttach(
    IsarCollection<dynamic> col, Id id, LocalSecureInfo object) {}

extension LocalSecureInfoQueryWhereSort
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QWhere> {
  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalSecureInfoQueryWhere
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QWhereClause> {
  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LocalSecureInfoQueryFilter
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QFilterCondition> {
  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankAccount',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankAccount',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankAccount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankAccount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankAccount',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankAccountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankAccount',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bankCode',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bankCode',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bankCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bankCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bankCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bankCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bankCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankTypeEqualTo(BankType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bankType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankTypeGreaterThan(
    BankType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bankType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankTypeLessThan(
    BankType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bankType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      bankTypeBetween(
    BankType lower,
    BankType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bankType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cardNumber',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cardNumber',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cardNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cardNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cardPassword',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cardPassword',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardPassword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cardPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cardPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardPassword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cardPasswordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      createdTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdTime',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      createdTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdTime',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      createdTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdTime',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      createdTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      creditCardTypeEqualTo(CreditCardType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creditCardType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      creditCardTypeGreaterThan(
    CreditCardType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creditCardType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      creditCardTypeLessThan(
    CreditCardType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creditCardType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      creditCardTypeBetween(
    CreditCardType lower,
    CreditCardType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creditCardType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cvv',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cvv',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cvv',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cvv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cvv',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvv',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      cvvIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cvv',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expirationDate',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expirationDate',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expirationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expirationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expirationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expirationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expirationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expirationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expirationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expirationDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expirationDate',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      expirationDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expirationDate',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'holderName',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'holderName',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'holderName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'holderName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holderName',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      holderNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'holderName',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      localSecureInfoTypeEqualTo(LocalSecureInfoType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localSecureInfoType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      localSecureInfoTypeGreaterThan(
    LocalSecureInfoType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localSecureInfoType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      localSecureInfoTypeLessThan(
    LocalSecureInfoType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localSecureInfoType',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      localSecureInfoTypeBetween(
    LocalSecureInfoType lower,
    LocalSecureInfoType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localSecureInfoType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginAccount',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginAccount',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginAccount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginAccount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginAccount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginAccount',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      loginAccountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginAccount',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'note',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      noteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'password',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'password',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      updatedTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      updatedTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      updatedTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      updatedTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'webUrl',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'webUrl',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'webUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'webUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'webUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterFilterCondition>
      webUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'webUrl',
        value: '',
      ));
    });
  }
}

extension LocalSecureInfoQueryObject
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QFilterCondition> {}

extension LocalSecureInfoQueryLinks
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QFilterCondition> {}

extension LocalSecureInfoQuerySortBy
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QSortBy> {
  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByBankAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccount', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByBankAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccount', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByBankCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankCode', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByBankCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankCode', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByBankType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankType', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByBankTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankType', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCardNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCardNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCardPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardPassword', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCardPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardPassword', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCreatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCreatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCreditCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditCardType', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByCreditCardTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditCardType', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortByCvvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByHolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByHolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByLocalSecureInfoType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localSecureInfoType', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByLocalSecureInfoTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localSecureInfoType', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByLoginAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginAccount', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByLoginAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginAccount', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByUpdatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByUpdatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> sortByWebUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      sortByWebUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.desc);
    });
  }
}

extension LocalSecureInfoQuerySortThenBy
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QSortThenBy> {
  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByBankAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccount', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByBankAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankAccount', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByBankCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankCode', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByBankCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankCode', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByBankType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankType', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByBankTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bankType', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCardNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCardNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCardPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardPassword', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCardPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardPassword', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCreatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCreatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTime', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCreditCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditCardType', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByCreditCardTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditCardType', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByCvv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByCvvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvv', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByHolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByHolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByLocalSecureInfoType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localSecureInfoType', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByLocalSecureInfoTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localSecureInfoType', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByLoginAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginAccount', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByLoginAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginAccount', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByUpdatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByUpdatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.desc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy> thenByWebUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.asc);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QAfterSortBy>
      thenByWebUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.desc);
    });
  }
}

extension LocalSecureInfoQueryWhereDistinct
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> {
  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByBankAccount({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankAccount', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByBankCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByBankType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bankType');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByCardNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByCardPassword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardPassword', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByCreatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdTime');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByCreditCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creditCardType');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByCvv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cvv', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByExpirationDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expirationDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByHolderName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holderName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByLocalSecureInfoType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localSecureInfoType');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByLoginAccount({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginAccount', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByNote(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'note', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct>
      distinctByUpdatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedTime');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfo, QDistinct> distinctByWebUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'webUrl', caseSensitive: caseSensitive);
    });
  }
}

extension LocalSecureInfoQueryProperty
    on QueryBuilder<LocalSecureInfo, LocalSecureInfo, QQueryProperty> {
  QueryBuilder<LocalSecureInfo, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations>
      bankAccountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankAccount');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations> bankCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankCode');
    });
  }

  QueryBuilder<LocalSecureInfo, BankType, QQueryOperations> bankTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bankType');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations>
      cardNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardNumber');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations>
      cardPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardPassword');
    });
  }

  QueryBuilder<LocalSecureInfo, int, QQueryOperations> createdTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdTime');
    });
  }

  QueryBuilder<LocalSecureInfo, CreditCardType, QQueryOperations>
      creditCardTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creditCardType');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations> cvvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cvv');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations>
      expirationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expirationDate');
    });
  }

  QueryBuilder<LocalSecureInfo, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations>
      holderNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holderName');
    });
  }

  QueryBuilder<LocalSecureInfo, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalSecureInfo, String, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<LocalSecureInfo, LocalSecureInfoType, QQueryOperations>
      localSecureInfoTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localSecureInfoType');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations>
      loginAccountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginAccount');
    });
  }

  QueryBuilder<LocalSecureInfo, String, QQueryOperations> noteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'note');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<LocalSecureInfo, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<LocalSecureInfo, int, QQueryOperations> updatedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedTime');
    });
  }

  QueryBuilder<LocalSecureInfo, String?, QQueryOperations> webUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'webUrl');
    });
  }
}
