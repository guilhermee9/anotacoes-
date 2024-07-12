; ModuleID = 'typemaps.x86.ll'
source_filename = "typemaps.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

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

@java_type_count = dso_local local_unnamed_addr constant i32 105, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [2 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"A\F3\1A\E9\0A6sM\B4\86\9Fc(\EB\FC\C0", ; module_uuid: e91af341-360a-4d73-b486-9f6328ebfcc0
		i32 102, ; uint32_t entry_count (0x66)
		i32 34, ; uint32_t duplicate_count (0x22)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\A6I-&L\F8\22@\AB2\0F\A0\D0)\DD\0E", ; module_uuid: 262d49a6-f84c-4022-ab32-0fa0d029dd0e
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: anotacoesplus
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 1
], align 4

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [105 x i32] [
	i32 12341354, ; 0: 0xbc506a => java/lang/Object
	i32 32078366, ; 1: 0x1e97a1e => java/security/cert/Certificate
	i32 138171443, ; 2: 0x83c5433 => javax/net/ssl/SSLSessionContext
	i32 176697843, ; 3: 0xa8831f3 => java/lang/IllegalArgumentException
	i32 269199815, ; 4: 0x100ba9c7 => javax/security/cert/X509Certificate
	i32 393371378, ; 5: 0x17725ef2 => mono/java/lang/RunnableImplementor
	i32 412771173, ; 6: 0x189a6365 => java/lang/Long
	i32 419359493, ; 7: 0x18feeb05 => java/util/Iterator
	i32 420482824, ; 8: 0x19100f08 => java/net/ConnectException
	i32 531198748, ; 9: 0x1fa9731c => mono/android/runtime/OutputStreamAdapter
	i32 581097368, ; 10: 0x22a2d798 => java/nio/channels/FileChannel
	i32 584231583, ; 11: 0x22d2aa9f => java/lang/IllegalStateException
	i32 591810476, ; 12: 0x23464fac => android/os/Bundle
	i32 619060219, ; 13: 0x24e61bfb => java/net/URL
	i32 692920175, ; 14: 0x294d1f6f => java/util/ArrayList
	i32 780408360, ; 15: 0x2e841628 => java/lang/CharSequence
	i32 780987551, ; 16: 0x2e8cec9f => java/io/PrintWriter
	i32 793918146, ; 17: 0x2f523ac2 => java/lang/Integer
	i32 806800039, ; 18: 0x3016caa7 => java/lang/Thread
	i32 838682992, ; 19: 0x31fd4970 => java/lang/NullPointerException
	i32 876646173, ; 20: 0x34408f1d => javax/net/ssl/TrustManager
	i32 893363610, ; 21: 0x353fa59a => java/lang/Short
	i32 1018791985, ; 22: 0x3cb98831 => android/widget/EditText
	i32 1026507328, ; 23: 0x3d2f4240 => java/net/SocketAddress
	i32 1077629184, ; 24: 0x403b5100 => java/util/function/Consumer
	i32 1090939588, ; 25: 0x41066ac4 => javax/net/ssl/KeyManagerFactory
	i32 1142011573, ; 26: 0x4411b6b5 => java/util/Enumeration
	i32 1227075600, ; 27: 0x4923b010 => javax/security/cert/Certificate
	i32 1270561450, ; 28: 0x4bbb3aaa => java/net/SocketTimeoutException
	i32 1298454265, ; 29: 0x4d64d6f9 => java/lang/Throwable
	i32 1323697755, ; 30: 0x4ee6065b => javax/net/ssl/SSLContext
	i32 1335098580, ; 31: 0x4f93fcd4 => java/util/Collection
	i32 1368421702, ; 32: 0x51907546 => java/lang/ClassCastException
	i32 1373631042, ; 33: 0x51dff242 => javax/net/ssl/KeyManager
	i32 1425790689, ; 34: 0x54fbd6e1 => java/lang/SecurityException
	i32 1428048664, ; 35: 0x551e4b18 => java/net/HttpURLConnection
	i32 1475682991, ; 36: 0x57f522af => java/util/HashMap
	i32 1476293262, ; 37: 0x57fe728e => javax/security/auth/Subject
	i32 1489594546, ; 38: 0x58c968b2 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 1496689759, ; 39: 0x5935ac5f => crc64664e22fff8d6e907/CadastroActivity
	i32 1506774891, ; 40: 0x59cf8f6b => android/widget/Button
	i32 1586851388, ; 41: 0x5e956e3c => android/os/Handler
	i32 1637959351, ; 42: 0x61a146b7 => java/security/Principal
	i32 1646348278, ; 43: 0x622147f6 => android/view/View
	i32 1649695927, ; 44: 0x62545cb7 => java/lang/RuntimeException
	i32 1657134862, ; 45: 0x62c5df0e => java/lang/IndexOutOfBoundsException
	i32 1680835779, ; 46: 0x642f84c3 => java/lang/Byte
	i32 1718265030, ; 47: 0x666aa4c6 => java/lang/Character
	i32 1755285137, ; 48: 0x689f8691 => java/util/Random
	i32 1758490869, ; 49: 0x68d070f5 => android/os/BaseBundle
	i32 1807220671, ; 50: 0x6bb7ffbf => android/view/View$OnClickListener
	i32 1851730788, ; 51: 0x6e5f2b64 => java/lang/Runnable
	i32 1944129628, ; 52: 0x73e1105c => java/io/OutputStream
	i32 1985929388, ; 53: 0x765ee0ac => android/app/Activity
	i32 1987841337, ; 54: 0x767c0d39 => java/lang/Boolean
	i32 2008064836, ; 55: 0x77b0a344 => android/content/Intent
	i32 2027782872, ; 56: 0x78dd82d8 => android/view/ContextThemeWrapper
	i32 2080685156, ; 57: 0x7c04bc64 => java/security/SecureRandom
	i32 2269094561, ; 58: 0x873fa2a1 => java/net/UnknownServiceException
	i32 2270923754, ; 59: 0x875b8bea => java/net/Proxy$Type
	i32 2284656609, ; 60: 0x882d17e1 => android/app/Application
	i32 2363729366, ; 61: 0x8ce3a5d6 => java/lang/Enum
	i32 2411404453, ; 62: 0x8fbb1ca5 => java/lang/UnsupportedOperationException
	i32 2443438835, ; 63: 0x91a3eaf3 => java/net/SocketException
	i32 2478193563, ; 64: 0x93b63b9b => crc64664e22fff8d6e907/LoginActivity
	i32 2479144898, ; 65: 0x93c4bfc2 => crc6419490110754ef000/MainActivity
	i32 2558143838, ; 66: 0x987a2d5e => java/io/FileInputStream
	i32 2654672461, ; 67: 0x9e3b164d => java/io/InterruptedIOException
	i32 2664928003, ; 68: 0x9ed79303 => javax/net/ssl/HostnameVerifier
	i32 2687778660, ; 69: 0xa0343f64 => android/widget/TextView
	i32 2762684487, ; 70: 0xa4ab3847 => java/lang/Float
	i32 2815615939, ; 71: 0xa7d2e3c3 => android/os/Build
	i32 2874673969, ; 72: 0xab580b31 => java/lang/StackTraceElement
	i32 2933762856, ; 73: 0xaeddab28 => android/util/AttributeSet
	i32 2942792700, ; 74: 0xaf6773fc => java/lang/Exception
	i32 2983720033, ; 75: 0xb1d7f461 => mono/android/TypeManager
	i32 3032808825, ; 76: 0xb4c4fd79 => java/io/StringWriter
	i32 3300906352, ; 77: 0xc4bfd570 => javax/net/ssl/SSLSession
	i32 3319735188, ; 78: 0xc5df2394 => java/net/Proxy
	i32 3409419575, ; 79: 0xcb379d37 => javax/net/ssl/HttpsURLConnection
	i32 3423467887, ; 80: 0xcc0df96f => java/lang/Number
	i32 3519931621, ; 81: 0xd1cde4e5 => java/net/URLConnection
	i32 3576242387, ; 82: 0xd52920d3 => android/runtime/JavaProxyThrowable
	i32 3666243682, ; 83: 0xda867062 => java/lang/String
	i32 3669061717, ; 84: 0xdab17055 => java/net/InetSocketAddress
	i32 3683323802, ; 85: 0xdb8b0f9a => mono/android/runtime/JavaObject
	i32 3702230909, ; 86: 0xdcab8f7d => java/lang/Double
	i32 3715861037, ; 87: 0xdd7b8a2d => android/os/Build$VERSION
	i32 3722843854, ; 88: 0xdde616ce => javax/net/SocketFactory
	i32 3726680736, ; 89: 0xde20a2a0 => java/net/ProtocolException
	i32 3882570516, ; 90: 0xe76b5314 => java/lang/Class
	i32 3900581163, ; 91: 0xe87e252b => java/io/InputStream
	i32 3912451735, ; 92: 0xe9334697 => java/security/KeyStore
	i32 3960999444, ; 93: 0xec180e14 => android/widget/Toast
	i32 3969984744, ; 94: 0xeca128e8 => mono/android/runtime/InputStreamAdapter
	i32 3975001277, ; 95: 0xecedb4bd => javax/net/ssl/SSLSocketFactory
	i32 3993327007, ; 96: 0xee05559f => android/content/ContextWrapper
	i32 4020308495, ; 97: 0xefa10a0f => java/lang/Error
	i32 4051772911, ; 98: 0xf18125ef => android/content/Context
	i32 4098107575, ; 99: 0xf44428b7 => mono/android/view/View_OnClickListenerImplementor
	i32 4101363546, ; 100: 0xf475d75a => java/io/Writer
	i32 4118878202, ; 101: 0xf58117fa => android/os/Looper
	i32 4148593869, ; 102: 0xf74684cd => javax/net/ssl/TrustManagerFactory
	i32 4157808693, ; 103: 0xf7d32035 => java/io/IOException
	i32 4232707919 ; 104: 0xfc49ff4f => java/util/HashSet
], align 4

@module0_managed_to_java = internal dso_local constant [102 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 87; uint32_t java_map_index (0x57)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554659, ; uint32_t type_token_id (0x20000e3)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 76; uint32_t java_map_index (0x4c)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 75; uint32_t java_map_index (0x4b)
	} ; 101
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [34 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554648, ; uint32_t type_token_id (0x20000d8)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554660, ; uint32_t type_token_id (0x20000e4)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 80; uint32_t java_map_index (0x50)
	} ; 33
], align 4

@module1_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 64; uint32_t java_map_index (0x40)
	} ; 2
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [105 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 0
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 1
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 2
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 3
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 4
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 5
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 6
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 7
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 8
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 9
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 10
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 11
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 12
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 13
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 14
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 15
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 16
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 17
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 18
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 19
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 20
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 21
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 22
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 23
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 24
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 25
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 26
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 27
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 28
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 29
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 30
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 31
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 32
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 33
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 34
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 35
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 36
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 37
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 38
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 39
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 40
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 41
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 42
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 43
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 44
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 45
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 46
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 47
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 48
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 49
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 50
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 51
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 52
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 53
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 54
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 55
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 56
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 57
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 58
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 59
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 60
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 61
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 62
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 63
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 64
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 65
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 66
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 67
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 68
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 69
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 70
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 71
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 72
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 73
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 74
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 75
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 76
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 77
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 78
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 79
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 90; uint32_t java_name_index (0x5a)
	}, ; 80
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554659, ; uint32_t type_token_id (0x20000e3)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 81
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 82
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 83
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 84
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 85
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 86
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 87
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 88
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 89
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 90
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 91
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 92
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 93
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 94
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 95
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 96
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 97
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 98
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 99
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 100
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 101
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 102
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 103
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 37; uint32_t java_name_index (0x25)
	} ; 104
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [105 x ptr] [
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
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104 ; 104
], align 4

; Strings
@.str.0 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"android/widget/Toast\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.93 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.100 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"crc6419490110754ef000/MainActivity\00", align 1
@.str.103 = private unnamed_addr constant [39 x i8] c"crc64664e22fff8d6e907/CadastroActivity\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"crc64664e22fff8d6e907/LoginActivity\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [14 x i8] c"anotacoesplus\00", align 1

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
