import 'dart:core';

import 'package:flutter/material.dart';

class ImmutableModelClass {
  final String field1;
  final String field2;
  final String fieldN;

  ImmutableModelClass(this.field1, this.field2, this.fieldN);
}

class MutableModelClass {
  late String _field1;
  late String _field2;
  late String _fieldN;

  String get field1 => _field1;
  set field1(String value) => _field1 = value;

  String get field2 => _field2;
  set field2(String value) => _field2 = value;

  String get fieldN => _fieldN;
  set fieldN(String value) => _fieldN = value;
}

class Parent {
  @protected
  final parentField = "test";
}

class Child extends Parent {
  void printParent() => print(parentField);
}

class ServiceClass {
  void method1() {}
  void method2() {}
  void methodN() {}
}

class Model {
  final field;

  Model(this.field);

  static ModelBuilder builder() => ModelBuilder();
}

class ModelBuilder {
  var _field = "";

  ModelBuilder field(String value) {
    _field = value;
    return this;
  }

  Model build() => Model(_field);
}

void test() {
  Model.builder()
    ..field("test")
    ..build();
}
