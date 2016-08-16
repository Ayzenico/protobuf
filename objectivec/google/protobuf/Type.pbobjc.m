// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/protobuf/type.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/Type.pbobjc.h>
 #import <Protobuf/Any.pbobjc.h>
 #import <Protobuf/SourceContext.pbobjc.h>
#else
 #import "google/protobuf/Type.pbobjc.h"
 #import "google/protobuf/Any.pbobjc.h"
 #import "google/protobuf/SourceContext.pbobjc.h"
#endif
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GPBTypeRoot

@implementation GPBTypeRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GPBTypeRoot_FileDescriptor

static GPBFileDescriptor *GPBTypeRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.protobuf"
                                                 objcPrefix:@"GPB"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum GPBSyntax

GPBEnumDescriptor *GPBSyntax_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "SyntaxProto2\000SyntaxProto3\000";
    static const int32_t values[] = {
        GPBSyntax_SyntaxProto2,
        GPBSyntax_SyntaxProto3,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GPBSyntax)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GPBSyntax_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GPBSyntax_IsValidValue(int32_t value__) {
  switch (value__) {
    case GPBSyntax_SyntaxProto2:
    case GPBSyntax_SyntaxProto3:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - GPBType

@implementation GPBType

@dynamic name;
@dynamic fieldsArray, fieldsArray_Count;
@dynamic oneofsArray, oneofsArray_Count;
@dynamic optionsArray, optionsArray_Count;
@dynamic hasSourceContext, sourceContext;
@dynamic syntax;

typedef struct GPBType__storage_ {
  uint32_t _has_storage_[1];
  GPBSyntax syntax;
  NSString *name;
  NSMutableArray *fieldsArray;
  NSMutableArray *oneofsArray;
  NSMutableArray *optionsArray;
  GPBSourceContext *sourceContext;
} GPBType__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GPBType_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GPBType__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fieldsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBField),
        .number = GPBType_FieldNumber_FieldsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBType__storage_, fieldsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "oneofsArray",
        .dataTypeSpecific.className = NULL,
        .number = GPBType_FieldNumber_OneofsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBType__storage_, oneofsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "optionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBOption),
        .number = GPBType_FieldNumber_OptionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBType__storage_, optionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sourceContext",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBSourceContext),
        .number = GPBType_FieldNumber_SourceContext,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GPBType__storage_, sourceContext),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "syntax",
        .dataTypeSpecific.enumDescFunc = GPBSyntax_EnumDescriptor,
        .number = GPBType_FieldNumber_Syntax,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GPBType__storage_, syntax),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GPBType class]
                                     rootClass:[GPBTypeRoot class]
                                          file:GPBTypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GPBType__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GPBType_Syntax_RawValue(GPBType *message) {
  GPBDescriptor *descriptor = [GPBType descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBType_FieldNumber_Syntax];
  return GPBGetMessageInt32Field(message, field);
}

void SetGPBType_Syntax_RawValue(GPBType *message, int32_t value) {
  GPBDescriptor *descriptor = [GPBType descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBType_FieldNumber_Syntax];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GPBField

@implementation GPBField

@dynamic kind;
@dynamic cardinality;
@dynamic number;
@dynamic name;
@dynamic typeURL;
@dynamic oneofIndex;
@dynamic packed;
@dynamic optionsArray, optionsArray_Count;
@dynamic jsonName;
@dynamic defaultValue;

typedef struct GPBField__storage_ {
  uint32_t _has_storage_[1];
  GPBField_Kind kind;
  GPBField_Cardinality cardinality;
  int32_t number;
  int32_t oneofIndex;
  NSString *name;
  NSString *typeURL;
  NSMutableArray *optionsArray;
  NSString *jsonName;
  NSString *defaultValue;
} GPBField__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "kind",
        .dataTypeSpecific.enumDescFunc = GPBField_Kind_EnumDescriptor,
        .number = GPBField_FieldNumber_Kind,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GPBField__storage_, kind),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "cardinality",
        .dataTypeSpecific.enumDescFunc = GPBField_Cardinality_EnumDescriptor,
        .number = GPBField_FieldNumber_Cardinality,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GPBField__storage_, cardinality),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "number",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_Number,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GPBField__storage_, number),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_Name,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GPBField__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "typeURL",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_TypeURL,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GPBField__storage_, typeURL),
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "oneofIndex",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_OneofIndex,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GPBField__storage_, oneofIndex),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "packed",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_Packed,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "optionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBOption),
        .number = GPBField_FieldNumber_OptionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBField__storage_, optionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "jsonName",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_JsonName,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GPBField__storage_, jsonName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "defaultValue",
        .dataTypeSpecific.className = NULL,
        .number = GPBField_FieldNumber_DefaultValue,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(GPBField__storage_, defaultValue),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GPBField class]
                                     rootClass:[GPBTypeRoot class]
                                          file:GPBTypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GPBField__storage_)
                                         flags:0];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\006\004\241!!\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GPBField_Kind_RawValue(GPBField *message) {
  GPBDescriptor *descriptor = [GPBField descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBField_FieldNumber_Kind];
  return GPBGetMessageInt32Field(message, field);
}

void SetGPBField_Kind_RawValue(GPBField *message, int32_t value) {
  GPBDescriptor *descriptor = [GPBField descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBField_FieldNumber_Kind];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GPBField_Cardinality_RawValue(GPBField *message) {
  GPBDescriptor *descriptor = [GPBField descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBField_FieldNumber_Cardinality];
  return GPBGetMessageInt32Field(message, field);
}

void SetGPBField_Cardinality_RawValue(GPBField *message, int32_t value) {
  GPBDescriptor *descriptor = [GPBField descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBField_FieldNumber_Cardinality];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum GPBField_Kind

GPBEnumDescriptor *GPBField_Kind_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "TypeUnknown\000TypeDouble\000TypeFloat\000TypeInt"
        "64\000TypeUint64\000TypeInt32\000TypeFixed64\000Type"
        "Fixed32\000TypeBool\000TypeString\000TypeGroup\000Ty"
        "peMessage\000TypeBytes\000TypeUint32\000TypeEnum\000"
        "TypeSfixed32\000TypeSfixed64\000TypeSint32\000Typ"
        "eSint64\000";
    static const int32_t values[] = {
        GPBField_Kind_TypeUnknown,
        GPBField_Kind_TypeDouble,
        GPBField_Kind_TypeFloat,
        GPBField_Kind_TypeInt64,
        GPBField_Kind_TypeUint64,
        GPBField_Kind_TypeInt32,
        GPBField_Kind_TypeFixed64,
        GPBField_Kind_TypeFixed32,
        GPBField_Kind_TypeBool,
        GPBField_Kind_TypeString,
        GPBField_Kind_TypeGroup,
        GPBField_Kind_TypeMessage,
        GPBField_Kind_TypeBytes,
        GPBField_Kind_TypeUint32,
        GPBField_Kind_TypeEnum,
        GPBField_Kind_TypeSfixed32,
        GPBField_Kind_TypeSfixed64,
        GPBField_Kind_TypeSint32,
        GPBField_Kind_TypeSint64,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GPBField_Kind)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GPBField_Kind_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GPBField_Kind_IsValidValue(int32_t value__) {
  switch (value__) {
    case GPBField_Kind_TypeUnknown:
    case GPBField_Kind_TypeDouble:
    case GPBField_Kind_TypeFloat:
    case GPBField_Kind_TypeInt64:
    case GPBField_Kind_TypeUint64:
    case GPBField_Kind_TypeInt32:
    case GPBField_Kind_TypeFixed64:
    case GPBField_Kind_TypeFixed32:
    case GPBField_Kind_TypeBool:
    case GPBField_Kind_TypeString:
    case GPBField_Kind_TypeGroup:
    case GPBField_Kind_TypeMessage:
    case GPBField_Kind_TypeBytes:
    case GPBField_Kind_TypeUint32:
    case GPBField_Kind_TypeEnum:
    case GPBField_Kind_TypeSfixed32:
    case GPBField_Kind_TypeSfixed64:
    case GPBField_Kind_TypeSint32:
    case GPBField_Kind_TypeSint64:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum GPBField_Cardinality

GPBEnumDescriptor *GPBField_Cardinality_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "CardinalityUnknown\000CardinalityOptional\000C"
        "ardinalityRequired\000CardinalityRepeated\000";
    static const int32_t values[] = {
        GPBField_Cardinality_CardinalityUnknown,
        GPBField_Cardinality_CardinalityOptional,
        GPBField_Cardinality_CardinalityRequired,
        GPBField_Cardinality_CardinalityRepeated,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GPBField_Cardinality)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GPBField_Cardinality_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GPBField_Cardinality_IsValidValue(int32_t value__) {
  switch (value__) {
    case GPBField_Cardinality_CardinalityUnknown:
    case GPBField_Cardinality_CardinalityOptional:
    case GPBField_Cardinality_CardinalityRequired:
    case GPBField_Cardinality_CardinalityRepeated:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - GPBEnum

@implementation GPBEnum

@dynamic name;
@dynamic enumvalueArray, enumvalueArray_Count;
@dynamic optionsArray, optionsArray_Count;
@dynamic hasSourceContext, sourceContext;
@dynamic syntax;

typedef struct GPBEnum__storage_ {
  uint32_t _has_storage_[1];
  GPBSyntax syntax;
  NSString *name;
  NSMutableArray *enumvalueArray;
  NSMutableArray *optionsArray;
  GPBSourceContext *sourceContext;
} GPBEnum__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GPBEnum_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GPBEnum__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "enumvalueArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBEnumValue),
        .number = GPBEnum_FieldNumber_EnumvalueArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBEnum__storage_, enumvalueArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "optionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBOption),
        .number = GPBEnum_FieldNumber_OptionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBEnum__storage_, optionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sourceContext",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBSourceContext),
        .number = GPBEnum_FieldNumber_SourceContext,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GPBEnum__storage_, sourceContext),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "syntax",
        .dataTypeSpecific.enumDescFunc = GPBSyntax_EnumDescriptor,
        .number = GPBEnum_FieldNumber_Syntax,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GPBEnum__storage_, syntax),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GPBEnum class]
                                     rootClass:[GPBTypeRoot class]
                                          file:GPBTypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GPBEnum__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GPBEnum_Syntax_RawValue(GPBEnum *message) {
  GPBDescriptor *descriptor = [GPBEnum descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBEnum_FieldNumber_Syntax];
  return GPBGetMessageInt32Field(message, field);
}

void SetGPBEnum_Syntax_RawValue(GPBEnum *message, int32_t value) {
  GPBDescriptor *descriptor = [GPBEnum descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GPBEnum_FieldNumber_Syntax];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GPBEnumValue

@implementation GPBEnumValue

@dynamic name;
@dynamic number;
@dynamic optionsArray, optionsArray_Count;

typedef struct GPBEnumValue__storage_ {
  uint32_t _has_storage_[1];
  int32_t number;
  NSString *name;
  NSMutableArray *optionsArray;
} GPBEnumValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GPBEnumValue_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GPBEnumValue__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "number",
        .dataTypeSpecific.className = NULL,
        .number = GPBEnumValue_FieldNumber_Number,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GPBEnumValue__storage_, number),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "optionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBOption),
        .number = GPBEnumValue_FieldNumber_OptionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GPBEnumValue__storage_, optionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GPBEnumValue class]
                                     rootClass:[GPBTypeRoot class]
                                          file:GPBTypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GPBEnumValue__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GPBOption

@implementation GPBOption

@dynamic name;
@dynamic hasValue, value;

typedef struct GPBOption__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  GPBAny *value;
} GPBOption__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GPBOption_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GPBOption__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "value",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBAny),
        .number = GPBOption_FieldNumber_Value,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GPBOption__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GPBOption class]
                                     rootClass:[GPBTypeRoot class]
                                          file:GPBTypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GPBOption__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
