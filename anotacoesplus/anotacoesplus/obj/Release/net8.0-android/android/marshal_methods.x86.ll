; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [46 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [92 x i32] [
	i32 39109920, ; 0: Newtonsoft.Json.dll => 0x254c520 => 3
	i32 117431740, ; 1: System.Runtime.InteropServices => 0x6ffddbc => 32
	i32 205061960, ; 2: System.ComponentModel => 0xc38ff48 => 13
	i32 230752869, ; 3: Microsoft.CSharp.dll => 0xdc10265 => 6
	i32 393699800, ; 4: Firebase => 0x177761d8 => 1
	i32 395744057, ; 5: _Microsoft.Android.Resource.Designer => 0x17969339 => 0
	i32 442565967, ; 6: System.Collections => 0x1a61054f => 10
	i32 459347974, ; 7: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 35
	i32 469710990, ; 8: System.dll => 0x1bff388e => 40
	i32 498788369, ; 9: System.ObjectModel => 0x1dbae811 => 28
	i32 530272170, ; 10: System.Linq.Queryable => 0x1f9b4faa => 23
	i32 610194910, ; 11: System.Reactive.dll => 0x245ed5de => 4
	i32 672442732, ; 12: System.Collections.Concurrent => 0x2814a96c => 7
	i32 690569205, ; 13: System.Xml.Linq.dll => 0x29293ff5 => 39
	i32 759454413, ; 14: System.Net.Requests => 0x2d445acd => 27
	i32 775507847, ; 15: System.IO.Compression => 0x2e394f87 => 21
	i32 804715423, ; 16: System.Data.Common => 0x2ff6fb9f => 15
	i32 823281589, ; 17: System.Private.Uri.dll => 0x311247b5 => 29
	i32 830298997, ; 18: System.IO.Compression.Brotli => 0x317d5b75 => 20
	i32 904024072, ; 19: System.ComponentModel.Primitives.dll => 0x35e25008 => 11
	i32 955402788, ; 20: Newtonsoft.Json => 0x38f24a24 => 3
	i32 992768348, ; 21: System.Collections.dll => 0x3b2c715c => 10
	i32 1019214401, ; 22: System.Drawing => 0x3cbffa41 => 19
	i32 1036536393, ; 23: System.Drawing.Primitives.dll => 0x3dc84a49 => 18
	i32 1044663988, ; 24: System.Linq.Expressions.dll => 0x3e444eb4 => 22
	i32 1082857460, ; 25: System.ComponentModel.TypeConverter => 0x408b17f4 => 12
	i32 1098259244, ; 26: System => 0x41761b2c => 40
	i32 1324164729, ; 27: System.Linq => 0x4eed2679 => 24
	i32 1408764838, ; 28: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 34
	i32 1462112819, ; 29: System.IO.Compression.dll => 0x57261233 => 21
	i32 1480492111, ; 30: System.IO.Compression.Brotli.dll => 0x583e844f => 20
	i32 1543031311, ; 31: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 38
	i32 1639515021, ; 32: System.Net.Http.dll => 0x61b9038d => 25
	i32 1639986890, ; 33: System.Text.RegularExpressions => 0x61c036ca => 38
	i32 1657153582, ; 34: System.Runtime => 0x62c6282e => 36
	i32 1677501392, ; 35: System.Net.Primitives.dll => 0x63fca3d0 => 26
	i32 1679769178, ; 36: System.Security.Cryptography => 0x641f3e5a => 37
	i32 1763938596, ; 37: System.Diagnostics.TraceSource.dll => 0x69239124 => 17
	i32 1780572499, ; 38: Mono.Android.Runtime.dll => 0x6a216153 => 44
	i32 1824722060, ; 39: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 34
	i32 1858542181, ; 40: System.Linq.Expressions => 0x6ec71a65 => 22
	i32 1910275211, ; 41: System.Collections.NonGeneric.dll => 0x71dc7c8b => 8
	i32 1939592360, ; 42: System.Private.Xml.Linq => 0x739bd4a8 => 30
	i32 2045470958, ; 43: System.Private.Xml => 0x79eb68ee => 31
	i32 2070888862, ; 44: System.Diagnostics.TraceSource => 0x7b6f419e => 17
	i32 2079903147, ; 45: System.Runtime.dll => 0x7bf8cdab => 36
	i32 2127167465, ; 46: System.Console => 0x7ec9ffe9 => 14
	i32 2142473426, ; 47: System.Collections.Specialized => 0x7fb38cd2 => 9
	i32 2193016926, ; 48: System.ObjectModel.dll => 0x82b6c85e => 28
	i32 2201231467, ; 49: System.Net.Http => 0x8334206b => 25
	i32 2305521784, ; 50: System.Private.CoreLib.dll => 0x896b7878 => 42
	i32 2353062107, ; 51: System.Net.Primitives => 0x8c40e0db => 26
	i32 2435356389, ; 52: System.Console.dll => 0x912896e5 => 14
	i32 2471841756, ; 53: netstandard.dll => 0x93554fdc => 41
	i32 2475788418, ; 54: Java.Interop.dll => 0x93918882 => 43
	i32 2562349572, ; 55: Microsoft.CSharp => 0x98ba5a04 => 6
	i32 2617129537, ; 56: System.Private.Xml.dll => 0x9bfe3a41 => 31
	i32 2665622720, ; 57: System.Drawing.Primitives => 0x9ee22cc0 => 18
	i32 2676780864, ; 58: System.Data.Common.dll => 0x9f8c6f40 => 15
	i32 2724373263, ; 59: System.Runtime.Numerics.dll => 0xa262a30f => 33
	i32 2909740682, ; 60: System.Private.CoreLib => 0xad6f1e8a => 42
	i32 2959614098, ; 61: System.ComponentModel.dll => 0xb0682092 => 13
	i32 3038032645, ; 62: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 0
	i32 3059408633, ; 63: Mono.Android.Runtime => 0xb65adef9 => 44
	i32 3059793426, ; 64: System.ComponentModel.Primitives => 0xb660be12 => 11
	i32 3242740180, ; 65: anotacoesplus.dll => 0xc14849d4 => 5
	i32 3265493905, ; 66: System.Linq.Queryable.dll => 0xc2a37b91 => 23
	i32 3316684772, ; 67: System.Net.Requests.dll => 0xc5b097e4 => 27
	i32 3322403133, ; 68: Firebase.dll => 0xc607d93d => 1
	i32 3366347497, ; 69: Java.Interop => 0xc8a662e9 => 43
	i32 3430777524, ; 70: netstandard => 0xcc7d82b4 => 41
	i32 3471940407, ; 71: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 12
	i32 3476120550, ; 72: Mono.Android => 0xcf3163e6 => 45
	i32 3480570183, ; 73: anotacoesplus => 0xcf754947 => 5
	i32 3509114376, ; 74: System.Xml.Linq => 0xd128d608 => 39
	i32 3596207933, ; 75: LiteDB.dll => 0xd659c73d => 2
	i32 3608519521, ; 76: System.Linq.dll => 0xd715a361 => 24
	i32 3629588173, ; 77: LiteDB => 0xd8571ecd => 2
	i32 3672681054, ; 78: Mono.Android.dll => 0xdae8aa5e => 45
	i32 3731644420, ; 79: System.Reactive => 0xde6c6004 => 4
	i32 3748608112, ; 80: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 16
	i32 3792276235, ; 81: System.Collections.NonGeneric => 0xe2098b0b => 8
	i32 3802395368, ; 82: System.Collections.Specialized.dll => 0xe2a3f2e8 => 9
	i32 3823082795, ; 83: System.Security.Cryptography.dll => 0xe3df9d2b => 37
	i32 3849253459, ; 84: System.Runtime.InteropServices.dll => 0xe56ef253 => 32
	i32 3896106733, ; 85: System.Collections.Concurrent.dll => 0xe839deed => 7
	i32 4068434129, ; 86: System.Private.Xml.Linq.dll => 0xf27f60d1 => 30
	i32 4099507663, ; 87: System.Drawing.dll => 0xf45985cf => 19
	i32 4100113165, ; 88: System.Private.Uri => 0xf462c30d => 29
	i32 4181436372, ; 89: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 35
	i32 4213026141, ; 90: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 16
	i32 4274976490 ; 91: System.Runtime.Numerics => 0xfecef6ea => 33
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [92 x i32] [
	i32 3, ; 0
	i32 32, ; 1
	i32 13, ; 2
	i32 6, ; 3
	i32 1, ; 4
	i32 0, ; 5
	i32 10, ; 6
	i32 35, ; 7
	i32 40, ; 8
	i32 28, ; 9
	i32 23, ; 10
	i32 4, ; 11
	i32 7, ; 12
	i32 39, ; 13
	i32 27, ; 14
	i32 21, ; 15
	i32 15, ; 16
	i32 29, ; 17
	i32 20, ; 18
	i32 11, ; 19
	i32 3, ; 20
	i32 10, ; 21
	i32 19, ; 22
	i32 18, ; 23
	i32 22, ; 24
	i32 12, ; 25
	i32 40, ; 26
	i32 24, ; 27
	i32 34, ; 28
	i32 21, ; 29
	i32 20, ; 30
	i32 38, ; 31
	i32 25, ; 32
	i32 38, ; 33
	i32 36, ; 34
	i32 26, ; 35
	i32 37, ; 36
	i32 17, ; 37
	i32 44, ; 38
	i32 34, ; 39
	i32 22, ; 40
	i32 8, ; 41
	i32 30, ; 42
	i32 31, ; 43
	i32 17, ; 44
	i32 36, ; 45
	i32 14, ; 46
	i32 9, ; 47
	i32 28, ; 48
	i32 25, ; 49
	i32 42, ; 50
	i32 26, ; 51
	i32 14, ; 52
	i32 41, ; 53
	i32 43, ; 54
	i32 6, ; 55
	i32 31, ; 56
	i32 18, ; 57
	i32 15, ; 58
	i32 33, ; 59
	i32 42, ; 60
	i32 13, ; 61
	i32 0, ; 62
	i32 44, ; 63
	i32 11, ; 64
	i32 5, ; 65
	i32 23, ; 66
	i32 27, ; 67
	i32 1, ; 68
	i32 43, ; 69
	i32 41, ; 70
	i32 12, ; 71
	i32 45, ; 72
	i32 5, ; 73
	i32 39, ; 74
	i32 2, ; 75
	i32 24, ; 76
	i32 2, ; 77
	i32 45, ; 78
	i32 4, ; 79
	i32 16, ; 80
	i32 8, ; 81
	i32 9, ; 82
	i32 37, ; 83
	i32 32, ; 84
	i32 7, ; 85
	i32 30, ; 86
	i32 19, ; 87
	i32 29, ; 88
	i32 35, ; 89
	i32 16, ; 90
	i32 33 ; 91
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
