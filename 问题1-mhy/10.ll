; ModuleID = '1.cpp'
source_filename = "1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::invalid_argument" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { i8* }
%class.Circle = type { double }

$_ZN6CircleC2Ed = comdat any

$_ZNK6Circle4areaEv = comdat any

$_ZNK6CircleltERKS_ = comdat any

$_Z8multiplyIiET_S0_S0_ = comdat any

$_Z8multiplyIdET_S0_S0_ = comdat any

$__clang_call_terminate = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@globalVar = dso_local global i32 100, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [24 x i8] c"Hello from MyNamespace!\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Value Error!\00", align 1
@_ZTISt16invalid_argument = external constant i8*
@.str.2 = private unnamed_addr constant [13 x i8] c"Color is Red\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Color is Blue\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Circle2 is smaller than Circle1.\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_1.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN11MyNamespace12printMessageEv() #4 {
  %1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3addii(i32 noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10checkValuei(i32 noundef %0) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = call i8* @__cxa_allocate_exception(i64 16) #3
  %9 = bitcast i8* %8 to %"class.std::invalid_argument"*
  invoke void @_ZNSt16invalid_argumentC1EPKc(%"class.std::invalid_argument"* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
          to label %10 unwind label %11

10:                                               ; preds = %7
  call void @__cxa_throw(i8* %8, i8* bitcast (i8** @_ZTISt16invalid_argument to i8*), i8* bitcast (void (%"class.std::invalid_argument"*)* @_ZNSt16invalid_argumentD1Ev to i8*)) #10
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %3, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %4, align 4
  call void @__cxa_free_exception(i8* %8) #3
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  br label %18

18:                                               ; preds = %15
  ret void

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

declare i8* @__cxa_allocate_exception(i64)

declare void @_ZNSt16invalid_argumentC1EPKc(%"class.std::invalid_argument"* noundef nonnull align 8 dereferenceable(16), i8* noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(%"class.std::invalid_argument"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @__cxa_throw(i8*, i8*, i8*)

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %class.Circle, align 8
  %4 = alloca %class.Circle, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::invalid_argument"*, align 8
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @globalVar, align 4
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 25)
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 4)
  %12 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef 3.141590e+00)
  store i32 0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %18 [
    i32 0, label %14
    i32 1, label %16
  ]

14:                                               ; preds = %0
  %15 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %18

16:                                               ; preds = %0
  %17 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %0, %16, %14
  call void @_ZN6CircleC2Ed(%class.Circle* noundef nonnull align 8 dereferenceable(8) %3, double noundef 5.000000e+00)
  call void @_ZN6CircleC2Ed(%class.Circle* noundef nonnull align 8 dereferenceable(8) %4, double noundef 3.000000e+00)
  %19 = call noundef double @_ZNK6Circle4areaEv(%class.Circle* noundef nonnull align 8 dereferenceable(8) %3)
  %20 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %19)
  %21 = call noundef zeroext i1 @_ZNK6CircleltERKS_(%class.Circle* noundef nonnull align 8 dereferenceable(8) %4, %class.Circle* noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  call void @_ZN11MyNamespace12printMessageEv()
  %25 = call noundef i32 @_Z8multiplyIiET_S0_S0_(i32 noundef 3, i32 noundef 4)
  %26 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %25)
  %27 = call noundef double @_Z8multiplyIdET_S0_S0_(double noundef 2.500000e+00, double noundef 3.100000e+00)
  %28 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %27)
  invoke void @_Z10checkValuei(i32 noundef -1)
          to label %29 unwind label %30

29:                                               ; preds = %24
  br label %53

30:                                               ; preds = %24
  %31 = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTISt16invalid_argument to i8*)
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %5, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTISt16invalid_argument to i8*)) #3
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @__cxa_begin_catch(i8* %39) #3
  %41 = bitcast i8* %40 to %"class.std::invalid_argument"*
  store %"class.std::invalid_argument"* %41, %"class.std::invalid_argument"** %7, align 8
  %42 = load %"class.std::invalid_argument"*, %"class.std::invalid_argument"** %7, align 8
  %43 = bitcast %"class.std::invalid_argument"* %42 to %"class.std::logic_error"*
  %44 = bitcast %"class.std::logic_error"* %43 to i8* (%"class.std::logic_error"*)***
  %45 = load i8* (%"class.std::logic_error"*)**, i8* (%"class.std::logic_error"*)*** %44, align 8
  %46 = getelementptr inbounds i8* (%"class.std::logic_error"*)*, i8* (%"class.std::logic_error"*)** %45, i64 2
  %47 = load i8* (%"class.std::logic_error"*)*, i8* (%"class.std::logic_error"*)** %46, align 8
  %48 = call noundef i8* %47(%"class.std::logic_error"* noundef nonnull align 8 dereferenceable(16) %43) #3
  %49 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef %48)
          to label %50 unwind label %54

50:                                               ; preds = %38
  %51 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %49, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %52 unwind label %54

52:                                               ; preds = %50
  call void @__cxa_end_catch()
  br label %53

53:                                               ; preds = %52, %29
  ret i32 0

54:                                               ; preds = %50, %38
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %5, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %6, align 4
  invoke void @__cxa_end_catch()
          to label %58 unwind label %64

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = insertvalue { i8*, i32 } undef, i8* %60, 0
  %63 = insertvalue { i8*, i32 } %62, i32 %61, 1
  resume { i8*, i32 } %63

64:                                               ; preds = %54
  %65 = landingpad { i8*, i32 }
          catch i8* null
  %66 = extractvalue { i8*, i32 } %65, 0
  call void @__clang_call_terminate(i8* %66) #11
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6CircleC2Ed(%class.Circle* noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca %class.Circle*, align 8
  %4 = alloca double, align 8
  store %class.Circle* %0, %class.Circle** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %class.Circle*, %class.Circle** %3, align 8
  %6 = getelementptr inbounds %class.Circle, %class.Circle* %5, i32 0, i32 0
  %7 = load double, double* %4, align 8
  store double %7, double* %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_ZNK6Circle4areaEv(%class.Circle* noundef nonnull align 8 dereferenceable(8) %0) #5 comdat align 2 {
  %2 = alloca %class.Circle*, align 8
  store %class.Circle* %0, %class.Circle** %2, align 8
  %3 = load %class.Circle*, %class.Circle** %2, align 8
  %4 = getelementptr inbounds %class.Circle, %class.Circle* %3, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %class.Circle, %class.Circle* %3, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fmul double %5, %7
  %9 = fmul double 3.141590e+00, %8
  ret double %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6CircleltERKS_(%class.Circle* noundef nonnull align 8 dereferenceable(8) %0, %class.Circle* noundef nonnull align 8 dereferenceable(8) %1) #5 comdat align 2 {
  %3 = alloca %class.Circle*, align 8
  %4 = alloca %class.Circle*, align 8
  store %class.Circle* %0, %class.Circle** %3, align 8
  store %class.Circle* %1, %class.Circle** %4, align 8
  %5 = load %class.Circle*, %class.Circle** %3, align 8
  %6 = getelementptr inbounds %class.Circle, %class.Circle* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = load %class.Circle*, %class.Circle** %4, align 8
  %9 = getelementptr inbounds %class.Circle, %class.Circle* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fcmp olt double %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z8multiplyIiET_S0_S0_(i32 noundef %0, i32 noundef %1) #5 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_Z8multiplyIdET_S0_S0_(double noundef %0, double noundef %1) #5 comdat {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fmul double %5, %6
  ret double %7
}

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #8

declare i8* @__cxa_begin_catch(i8*)

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #11
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_1.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
