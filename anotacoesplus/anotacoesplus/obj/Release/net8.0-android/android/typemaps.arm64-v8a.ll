; ModuleID = 'typemaps.arm64-v8a.ll'
source_filename = "typemaps.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 2, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 41, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [2 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c":R\A8\AAa\F5\E3O\A1R\93\88t\8B\F1:", ; module_uuid: aaa8523a-f561-4fe3-a152-9388748bf13a
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: anotacoesplus
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\DE\B1\86c\FA\A3\B8H\B2\8D\F7C\92\9E\07\18", ; module_uuid: 6386b1de-a3fa-48b8-b28d-f743929e0718
		i32 39, ; uint32_t entry_count (0x27)
		i32 9, ; uint32_t duplicate_count (0x9)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 1
], align 8

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [41 x i64] [
	i64 128182020419974451, ; 0: 0x1c764de51b97533 => java/lang/String
	i64 318564728890166633, ; 1: 0x46bc4eedf778d69 => android/widget/Button
	i64 361870449891484378, ; 2: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 3: 0x50b1e841ce2e57a => android/widget/TextView
	i64 870874870088288028, ; 4: 0xc15f8148b6d471c => java/lang/Exception
	i64 1317579852464953526, ; 5: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 6: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1747499027921055994, ; 7: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1831728799718484971, ; 8: 0x196b9ba37012abeb => java/io/IOException
	i64 2164140653916027403, ; 9: 0x1e08927568a57a0b => java/io/InputStream
	i64 2972252214977986258, ; 10: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3476617847597562063, ; 11: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 4305371449952891808, ; 12: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 5214467817578676657, ; 13: 0x485d82da477bc1b1 => java/lang/Error
	i64 8190305621607579207, ; 14: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8487642170263250902, ; 15: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8587172038193766563, ; 16: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 9667515047141612341, ; 17: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9869939015140501507, ; 18: 0x88f9113db837e803 => android/app/Activity
	i64 11112718717483603117, ; 19: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11573301743732151818, ; 20: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11954228872253987625, ; 21: 0xa5e5f3d2b66adb29 => android/view/View
	i64 12228984007958404582, ; 22: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12279463879061343880, ; 23: 0xaa696b56afb10e88 => crc64664e22fff8d6e907/LoginActivity
	i64 12476375190645835422, ; 24: 0xad24fd221af1069e => android/os/Looper
	i64 13402779434266666368, ; 25: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13770727111868296170, ; 26: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13805562342397192842, ; 27: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13877554026709814142, ; 28: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 14031640676547298208, ; 29: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14167891754637755728, ; 30: 0xc49e767c735e8550 => java/lang/Object
	i64 14206023932851353817, ; 31: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14649586819325063784, ; 32: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14940408132235664607, ; 33: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 15142650489578038267, ; 34: 0xd22580641d31a3fb => java/lang/StackTraceElement
	i64 15633873768898914415, ; 35: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 16314168557433322311, ; 36: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16542847110558016359, ; 37: 0xe593ffcc9e686367 => android/app/Application
	i64 16621565151774740693, ; 38: 0xe6aba970d28b90d5 => crc6419490110754ef000/MainActivity
	i64 16723123314454325679, ; 39: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 17125416866214736517 ; 40: 0xeda9b3e7cd367285 => java/io/OutputStream
], align 8

@module0_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 23; uint32_t java_map_index (0x17)
	} ; 1
], align 4

@module1_managed_to_java = internal dso_local constant [39 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 25; uint32_t java_map_index (0x19)
	} ; 38
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 16; uint32_t java_map_index (0x10)
	} ; 8
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [41 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 0
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 1
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 2
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 3
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 4
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 5
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 6
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 7
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 8
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 9
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 10
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 11
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 12
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 13
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 14
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 15
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 16
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 17
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 18
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 19
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 20
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 21
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 22
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 23
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 24
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 25
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 26
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 27
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 28
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 29
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 30
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 31
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 32
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 33
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 34
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 35
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 36
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 37
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 38
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 39
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 26; uint32_t java_name_index (0x1a)
	} ; 40
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [41 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40 ; 40
], align 8

; Strings
@.str.0 = private unnamed_addr constant [35 x i8] c"crc6419490110754ef000/MainActivity\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"crc64664e22fff8d6e907/LoginActivity\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [14 x i8] c"anotacoesplus\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1

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
