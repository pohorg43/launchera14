.class public final Lcom/oplus/utrace/utils/TraceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

.field private static final commonExecutor$delegate:Lh4/f;

.field private static final defaultSpanId$delegate:Lh4/f;

.field private static final entryCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final pid$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/utrace/utils/TraceUtil;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/TraceUtil;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const/16 v3, 0x7fff

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/oplus/utrace/utils/TraceUtil;->entryCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil$pid$2;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil$pid$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/TraceUtil;->pid$delegate:Lh4/f;

    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil$defaultSpanId$2;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil$defaultSpanId$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/TraceUtil;->defaultSpanId$delegate:Lh4/f;

    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil$commonExecutor$2;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil$commonExecutor$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/TraceUtil;->commonExecutor$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateSpanId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->generateSpanId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final decodeToBytes(Ljava/lang/String;)[B
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "s"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_10
    new-array v0, v0, [B

    instance-of v1, p0, Lh4/k$a;

    if-eqz v1, :cond_17

    move-object p0, v0

    :cond_17
    check-cast p0, [B

    return-object p0
.end method

.method public static final encodeToString([B)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encodeToString(bytes, Base64.DEFAULT)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final genSpanId()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/TraceUtil;->getDefaultSpanId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final genSpanId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_9

    sget-object p0, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    invoke-direct {p0}, Lcom/oplus/utrace/utils/TraceUtil;->getDefaultSpanId()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_9
    const-string v0, "s_"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public static final genTraceId()Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oplus/utrace/utils/TraceUtil;->entryCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    add-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    invoke-direct {v2}, Lcom/oplus/utrace/utils/TraceUtil;->getPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "7f000001%d%d%05d"

    const-string v3, "format(format, *args)"

    invoke-static {v1, v0, v2, v3}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateLogPrefix$utrace_sdk_fullRelease(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x5b

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->hexHashCode$utrace_sdk_fullRelease(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lcom/oplus/utrace/utils/TraceUtil;->hexHashCode$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getModuleName$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic generateLogPrefix$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->generateLogPrefix$utrace_sdk_fullRelease(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final generateSpanId()Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_e

    :cond_d
    move-object v1, v2

    :goto_e
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "p_"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v0}, Lcom/oplus/utrace/utils/TraceUtil;->getPid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultSpanId()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/utils/TraceUtil;->defaultSpanId$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final getPid()I
    .registers 1

    sget-object p0, Lcom/oplus/utrace/utils/TraceUtil;->pid$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final hexHashCode$utrace_sdk_fullRelease(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hexHashCode$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_a

    const-class p0, Lcom/oplus/utrace/utils/TraceUtil;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->hexHashCode$utrace_sdk_fullRelease(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isTraceId(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "traceId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "7f000001"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static final marshall(Landroid/os/Parcelable;)[B
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "parcelable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final switchOn$utrace_sdk_fullRelease()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceApp;->getMEnabled$utrace_sdk_fullRelease()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getCoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->isEnabled()Z

    move-result v0

    goto :goto_1f

    :cond_1b
    invoke-static {}, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->checkUserSwitch()Z

    move-result v0

    :goto_1f
    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public static final unmarshall(Landroid/os/Parcelable$Creator;[B)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;[B)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "creator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public final getCommonExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    sget-object p0, Lcom/oplus/utrace/utils/TraceUtil;->commonExecutor$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-commonExecutor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
