; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [46 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [92 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 45
	i64 196720943101637631, ; 1: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 22
	i64 221206711145997452, ; 2: anotacoesplus.dll => 0x311e254efca248c => 5
	i64 464346026994987652, ; 3: System.Reactive.dll => 0x671b04057e67284 => 4
	i64 799765834175365804, ; 4: System.ComponentModel.dll => 0xb1956c9f18442ac => 13
	i64 1268860745194512059, ; 5: System.Drawing.dll => 0x119be62002c19ebb => 19
	i64 1476839205573959279, ; 6: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 26
	i64 1513467482682125403, ; 7: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 44
	i64 1731380447121279447, ; 8: Newtonsoft.Json => 0x18071957e9b889d7 => 3
	i64 1767386781656293639, ; 9: System.Private.Uri.dll => 0x188704e9f5582107 => 29
	i64 1875417405349196092, ; 10: System.Drawing.Primitives => 0x1a06d2319b6c713c => 18
	i64 2102659300918482391, ; 11: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 18
	i64 2133195048986300728, ; 12: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 3
	i64 2287834202362508563, ; 13: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 7
	i64 2497223385847772520, ; 14: System.Runtime => 0x22a7eb7046413568 => 36
	i64 3325875462027654285, ; 15: System.Runtime.Numerics => 0x2e27e21c8958b48d => 33
	i64 3551103847008531295, ; 16: System.Private.CoreLib.dll => 0x31480e226177735f => 42
	i64 3571415421602489686, ; 17: System.Runtime.dll => 0x319037675df7e556 => 36
	i64 3716579019761409177, ; 18: netstandard.dll => 0x3393f0ed5c8c5c99 => 41
	i64 3933965368022646939, ; 19: System.Net.Requests => 0x369840a8bfadc09b => 27
	i64 4009997192427317104, ; 20: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 35
	i64 4073500526318903918, ; 21: System.Private.Xml.dll => 0x3887fb25779ae26e => 31
	i64 4154383907710350974, ; 22: System.ComponentModel => 0x39a7562737acb67e => 13
	i64 4187479170553454871, ; 23: System.Linq.Expressions => 0x3a1cea1e912fa117 => 22
	i64 4205801962323029395, ; 24: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 12
	i64 4809057822547766521, ; 25: System.Drawing => 0x42bd349c3145ecf9 => 19
	i64 5103417709280584325, ; 26: System.Collections.Specialized => 0x46d2fb5e161b6285 => 9
	i64 5182934613077526976, ; 27: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 9
	i64 5570799893513421663, ; 28: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 20
	i64 5573260873512690141, ; 29: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 37
	i64 6357457916754632952, ; 30: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 0
	i64 6786606130239981554, ; 31: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 17
	i64 6876862101832370452, ; 32: System.Xml.Linq => 0x5f6f85a57d108914 => 39
	i64 7083547580668757502, ; 33: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 30
	i64 7270811800166795866, ; 34: System.Linq => 0x64e71ccf51a90a5a => 24
	i64 7377312882064240630, ; 35: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 12
	i64 7488575175965059935, ; 36: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 39
	i64 7489048572193775167, ; 37: System.ObjectModel => 0x67ee71ff6b419e3f => 28
	i64 7602111570124318452, ; 38: System.Reactive => 0x698020320025a6f4 => 4
	i64 7654504624184590948, ; 39: System.Net.Http => 0x6a3a4366801b8264 => 25
	i64 7714652370974252055, ; 40: System.Private.CoreLib => 0x6b0ff375198b9c17 => 42
	i64 7735176074855944702, ; 41: Microsoft.CSharp => 0x6b58dda848e391fe => 6
	i64 8064050204834738623, ; 42: System.Collections.dll => 0x6fe942efa61731bf => 10
	i64 8087206902342787202, ; 43: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 16
	i64 8167236081217502503, ; 44: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 43
	i64 8185542183669246576, ; 45: System.Collections => 0x7198e33f4794aa70 => 10
	i64 8368701292315763008, ; 46: System.Security.Cryptography => 0x7423997c6fd56140 => 37
	i64 8563666267364444763, ; 47: System.Private.Uri => 0x76d841191140ca5b => 29
	i64 8626175481042262068, ; 48: Java.Interop => 0x77b654e585b55834 => 43
	i64 8638972117149407195, ; 49: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 6
	i64 8702320156596882678, ; 50: Firebase.dll => 0x78c4da1357adccf6 => 1
	i64 8725526185868997716, ; 51: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 16
	i64 9057635389615298436, ; 52: LiteDB => 0x7db32f65bf06d784 => 2
	i64 9296667808972889535, ; 53: LiteDB.dll => 0x8104661dcca35dbf => 2
	i64 9659729154652888475, ; 54: System.Text.RegularExpressions => 0x860e407c9991dd9b => 38
	i64 9702891218465930390, ; 55: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 8
	i64 9808709177481450983, ; 56: Mono.Android.dll => 0x881f890734e555e7 => 45
	i64 9933555792566666578, ; 57: System.Linq.Queryable.dll => 0x89db145cf475c552 => 23
	i64 10038780035334861115, ; 58: System.Net.Http.dll => 0x8b50e941206af13b => 25
	i64 10051358222726253779, ; 59: System.Private.Xml => 0x8b7d990c97ccccd3 => 31
	i64 10144742755892837524, ; 60: Firebase => 0x8cc95dc98eb5bc94 => 1
	i64 10785150219063592792, ; 61: System.Net.Primitives => 0x95ac8cfb68830758 => 26
	i64 10822644899632537592, ; 62: System.Linq.Queryable => 0x9631c23204ca5ff8 => 23
	i64 11485890710487134646, ; 63: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 32
	i64 11597940890313164233, ; 64: netstandard => 0xa0f429ca8d1805c9 => 41
	i64 12201331334810686224, ; 65: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 35
	i64 12475113361194491050, ; 66: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 0
	i64 12517810545449516888, ; 67: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 17
	i64 12550732019250633519, ; 68: System.IO.Compression => 0xae2d28465e8e1b2f => 21
	i64 13068258254871114833, ; 69: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 34
	i64 13343850469010654401, ; 70: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 44
	i64 13717397318615465333, ; 71: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 11
	i64 13881769479078963060, ; 72: System.Console.dll => 0xc0a5f3cade5c6774 => 14
	i64 14461014870687870182, ; 73: System.Net.Requests.dll => 0xc8afd8683afdece6 => 27
	i64 14622043554576106986, ; 74: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 34
	i64 14987728460634540364, ; 75: System.IO.Compression.dll => 0xcfff1ba06622494c => 21
	i64 15076659072870671916, ; 76: System.ObjectModel.dll => 0xd13b0d8c1620662c => 28
	i64 15115185479366240210, ; 77: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 20
	i64 15133485256822086103, ; 78: System.Linq.dll => 0xd204f0a9127dd9d7 => 24
	i64 15470129709384474465, ; 79: anotacoesplus => 0xd6b0f101a5141f61 => 5
	i64 15527772828719725935, ; 80: System.Console => 0xd77dbb1e38cd3d6f => 14
	i64 15609085926864131306, ; 81: System.dll => 0xd89e9cf3334914ea => 40
	i64 16154507427712707110, ; 82: System => 0xe03056ea4e39aa26 => 40
	i64 16856067890322379635, ; 83: System.Data.Common.dll => 0xe9ecc87060889373 => 15
	i64 16890310621557459193, ; 84: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 38
	i64 17008137082415910100, ; 85: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 8
	i64 17062143951396181894, ; 86: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 11
	i64 17230721278011714856, ; 87: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 30
	i64 17260702271250283638, ; 88: System.Data.Common => 0xef8a5543bba6bc76 => 15
	i64 17712670374920797664, ; 89: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 32
	i64 17777860260071588075, ; 90: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 33
	i64 18245806341561545090 ; 91: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 7
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [92 x i32] [
	i32 45, ; 0
	i32 22, ; 1
	i32 5, ; 2
	i32 4, ; 3
	i32 13, ; 4
	i32 19, ; 5
	i32 26, ; 6
	i32 44, ; 7
	i32 3, ; 8
	i32 29, ; 9
	i32 18, ; 10
	i32 18, ; 11
	i32 3, ; 12
	i32 7, ; 13
	i32 36, ; 14
	i32 33, ; 15
	i32 42, ; 16
	i32 36, ; 17
	i32 41, ; 18
	i32 27, ; 19
	i32 35, ; 20
	i32 31, ; 21
	i32 13, ; 22
	i32 22, ; 23
	i32 12, ; 24
	i32 19, ; 25
	i32 9, ; 26
	i32 9, ; 27
	i32 20, ; 28
	i32 37, ; 29
	i32 0, ; 30
	i32 17, ; 31
	i32 39, ; 32
	i32 30, ; 33
	i32 24, ; 34
	i32 12, ; 35
	i32 39, ; 36
	i32 28, ; 37
	i32 4, ; 38
	i32 25, ; 39
	i32 42, ; 40
	i32 6, ; 41
	i32 10, ; 42
	i32 16, ; 43
	i32 43, ; 44
	i32 10, ; 45
	i32 37, ; 46
	i32 29, ; 47
	i32 43, ; 48
	i32 6, ; 49
	i32 1, ; 50
	i32 16, ; 51
	i32 2, ; 52
	i32 2, ; 53
	i32 38, ; 54
	i32 8, ; 55
	i32 45, ; 56
	i32 23, ; 57
	i32 25, ; 58
	i32 31, ; 59
	i32 1, ; 60
	i32 26, ; 61
	i32 23, ; 62
	i32 32, ; 63
	i32 41, ; 64
	i32 35, ; 65
	i32 0, ; 66
	i32 17, ; 67
	i32 21, ; 68
	i32 34, ; 69
	i32 44, ; 70
	i32 11, ; 71
	i32 14, ; 72
	i32 27, ; 73
	i32 34, ; 74
	i32 21, ; 75
	i32 28, ; 76
	i32 20, ; 77
	i32 24, ; 78
	i32 5, ; 79
	i32 14, ; 80
	i32 40, ; 81
	i32 40, ; 82
	i32 15, ; 83
	i32 38, ; 84
	i32 8, ; 85
	i32 11, ; 86
	i32 30, ; 87
	i32 15, ; 88
	i32 32, ; 89
	i32 33, ; 90
	i32 7 ; 91
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
