// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.25.0-devel
// 	protoc        v3.12.4
// source: query.proto

package query

import (
	proto "github.com/golang/protobuf/proto"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// This is a compile-time assertion that a sufficiently up-to-date version
// of the legacy proto package is being used.
const _ = proto.ProtoPackageIsVersion4

type Query_Severity int32

const (
	Query_ERROR   Query_Severity = 0
	Query_WARNING Query_Severity = 1
)

// Enum value maps for Query_Severity.
var (
	Query_Severity_name = map[int32]string{
		0: "ERROR",
		1: "WARNING",
	}
	Query_Severity_value = map[string]int32{
		"ERROR":   0,
		"WARNING": 1,
	}
)

func (x Query_Severity) Enum() *Query_Severity {
	p := new(Query_Severity)
	*p = x
	return p
}

func (x Query_Severity) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (Query_Severity) Descriptor() protoreflect.EnumDescriptor {
	return file_query_proto_enumTypes[0].Descriptor()
}

func (Query_Severity) Type() protoreflect.EnumType {
	return &file_query_proto_enumTypes[0]
}

func (x Query_Severity) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use Query_Severity.Descriptor instead.
func (Query_Severity) EnumDescriptor() ([]byte, []int) {
	return file_query_proto_rawDescGZIP(), []int{0, 0}
}

type Query struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Description   string           `protobuf:"bytes,1,opt,name=description,proto3" json:"description,omitempty"`
	Id            string           `protobuf:"bytes,2,opt,name=id,proto3" json:"id,omitempty"`
	Alerts        []*Query_Alert   `protobuf:"bytes,4,rep,name=alerts,proto3" json:"alerts,omitempty"`
	KeyValuePairs map[int32]string `protobuf:"bytes,5,rep,name=keyValuePairs,proto3" json:"keyValuePairs,omitempty" protobuf_key:"varint,1,opt,name=key,proto3" protobuf_val:"bytes,2,opt,name=value,proto3"`
}

func (x *Query) Reset() {
	*x = Query{}
	if protoimpl.UnsafeEnabled {
		mi := &file_query_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Query) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Query) ProtoMessage() {}

func (x *Query) ProtoReflect() protoreflect.Message {
	mi := &file_query_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Query.ProtoReflect.Descriptor instead.
func (*Query) Descriptor() ([]byte, []int) {
	return file_query_proto_rawDescGZIP(), []int{0}
}

func (x *Query) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *Query) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Query) GetAlerts() []*Query_Alert {
	if x != nil {
		return x.Alerts
	}
	return nil
}

func (x *Query) GetKeyValuePairs() map[int32]string {
	if x != nil {
		return x.KeyValuePairs
	}
	return nil
}

type QuerySuite struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Queries []*Query `protobuf:"bytes,1,rep,name=queries,proto3" json:"queries,omitempty"`
}

func (x *QuerySuite) Reset() {
	*x = QuerySuite{}
	if protoimpl.UnsafeEnabled {
		mi := &file_query_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *QuerySuite) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*QuerySuite) ProtoMessage() {}

func (x *QuerySuite) ProtoReflect() protoreflect.Message {
	mi := &file_query_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use QuerySuite.ProtoReflect.Descriptor instead.
func (*QuerySuite) Descriptor() ([]byte, []int) {
	return file_query_proto_rawDescGZIP(), []int{1}
}

func (x *QuerySuite) GetQueries() []*Query {
	if x != nil {
		return x.Queries
	}
	return nil
}

type Query_Alert struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Msg string `protobuf:"bytes,1,opt,name=msg,proto3" json:"msg,omitempty"`
	Loc int64  `protobuf:"varint,2,opt,name=loc,proto3" json:"loc,omitempty"`
}

func (x *Query_Alert) Reset() {
	*x = Query_Alert{}
	if protoimpl.UnsafeEnabled {
		mi := &file_query_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Query_Alert) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Query_Alert) ProtoMessage() {}

func (x *Query_Alert) ProtoReflect() protoreflect.Message {
	mi := &file_query_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Query_Alert.ProtoReflect.Descriptor instead.
func (*Query_Alert) Descriptor() ([]byte, []int) {
	return file_query_proto_rawDescGZIP(), []int{0, 0}
}

func (x *Query_Alert) GetMsg() string {
	if x != nil {
		return x.Msg
	}
	return ""
}

func (x *Query_Alert) GetLoc() int64 {
	if x != nil {
		return x.Loc
	}
	return 0
}

var File_query_proto protoreflect.FileDescriptor

var file_query_proto_rawDesc = []byte{
	0x0a, 0x0b, 0x71, 0x75, 0x65, 0x72, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xb3, 0x02,
	0x0a, 0x05, 0x51, 0x75, 0x65, 0x72, 0x79, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72,
	0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x64, 0x65,
	0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x24, 0x0a, 0x06, 0x61, 0x6c, 0x65,
	0x72, 0x74, 0x73, 0x18, 0x04, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0c, 0x2e, 0x51, 0x75, 0x65, 0x72,
	0x79, 0x2e, 0x41, 0x6c, 0x65, 0x72, 0x74, 0x52, 0x06, 0x61, 0x6c, 0x65, 0x72, 0x74, 0x73, 0x12,
	0x3f, 0x0a, 0x0d, 0x6b, 0x65, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x50, 0x61, 0x69, 0x72, 0x73,
	0x18, 0x05, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x19, 0x2e, 0x51, 0x75, 0x65, 0x72, 0x79, 0x2e, 0x4b,
	0x65, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x50, 0x61, 0x69, 0x72, 0x73, 0x45, 0x6e, 0x74, 0x72,
	0x79, 0x52, 0x0d, 0x6b, 0x65, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x50, 0x61, 0x69, 0x72, 0x73,
	0x1a, 0x2b, 0x0a, 0x05, 0x41, 0x6c, 0x65, 0x72, 0x74, 0x12, 0x10, 0x0a, 0x03, 0x6d, 0x73, 0x67,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6d, 0x73, 0x67, 0x12, 0x10, 0x0a, 0x03, 0x6c,
	0x6f, 0x63, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x03, 0x6c, 0x6f, 0x63, 0x1a, 0x40, 0x0a,
	0x12, 0x4b, 0x65, 0x79, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x50, 0x61, 0x69, 0x72, 0x73, 0x45, 0x6e,
	0x74, 0x72, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05,
	0x52, 0x03, 0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01, 0x22,
	0x22, 0x0a, 0x08, 0x53, 0x65, 0x76, 0x65, 0x72, 0x69, 0x74, 0x79, 0x12, 0x09, 0x0a, 0x05, 0x45,
	0x52, 0x52, 0x4f, 0x52, 0x10, 0x00, 0x12, 0x0b, 0x0a, 0x07, 0x57, 0x41, 0x52, 0x4e, 0x49, 0x4e,
	0x47, 0x10, 0x01, 0x22, 0x2e, 0x0a, 0x0a, 0x51, 0x75, 0x65, 0x72, 0x79, 0x53, 0x75, 0x69, 0x74,
	0x65, 0x12, 0x20, 0x0a, 0x07, 0x71, 0x75, 0x65, 0x72, 0x69, 0x65, 0x73, 0x18, 0x01, 0x20, 0x03,
	0x28, 0x0b, 0x32, 0x06, 0x2e, 0x51, 0x75, 0x65, 0x72, 0x79, 0x52, 0x07, 0x71, 0x75, 0x65, 0x72,
	0x69, 0x65, 0x73, 0x42, 0x0e, 0x5a, 0x0c, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x73, 0x2f, 0x71, 0x75,
	0x65, 0x72, 0x79, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_query_proto_rawDescOnce sync.Once
	file_query_proto_rawDescData = file_query_proto_rawDesc
)

func file_query_proto_rawDescGZIP() []byte {
	file_query_proto_rawDescOnce.Do(func() {
		file_query_proto_rawDescData = protoimpl.X.CompressGZIP(file_query_proto_rawDescData)
	})
	return file_query_proto_rawDescData
}

var file_query_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_query_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_query_proto_goTypes = []interface{}{
	(Query_Severity)(0), // 0: Query.Severity
	(*Query)(nil),       // 1: Query
	(*QuerySuite)(nil),  // 2: QuerySuite
	(*Query_Alert)(nil), // 3: Query.Alert
	nil,                 // 4: Query.KeyValuePairsEntry
}
var file_query_proto_depIdxs = []int32{
	3, // 0: Query.alerts:type_name -> Query.Alert
	4, // 1: Query.keyValuePairs:type_name -> Query.KeyValuePairsEntry
	1, // 2: QuerySuite.queries:type_name -> Query
	3, // [3:3] is the sub-list for method output_type
	3, // [3:3] is the sub-list for method input_type
	3, // [3:3] is the sub-list for extension type_name
	3, // [3:3] is the sub-list for extension extendee
	0, // [0:3] is the sub-list for field type_name
}

func init() { file_query_proto_init() }
func file_query_proto_init() {
	if File_query_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_query_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Query); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_query_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*QuerySuite); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_query_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Query_Alert); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_query_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_query_proto_goTypes,
		DependencyIndexes: file_query_proto_depIdxs,
		EnumInfos:         file_query_proto_enumTypes,
		MessageInfos:      file_query_proto_msgTypes,
	}.Build()
	File_query_proto = out.File
	file_query_proto_rawDesc = nil
	file_query_proto_goTypes = nil
	file_query_proto_depIdxs = nil
}
