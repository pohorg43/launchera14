.class public Lcom/oplus/util/OplusGcSupressionExtImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusGcSupressionExtImpl$Build;
    }
.end annotation


# static fields
.field private static final SUPRESSION_TIMEOUT:I = 0x320

.field private static final SUPRESSION_TYPE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OplusGcSupressionExtImpl"

.field private static sDesupressionGC:Ljava/lang/reflect/Method;

.field private static sGetRuntime:Ljava/lang/reflect/Method;

.field private static sIsSupressionFeatureEnabled:Z

.field private static sObj:Ljava/lang/Object;

.field private static sSupressionGC:Ljava/lang/reflect/Method;

.field private static sVmRuntime:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "OplusGcSupressionExtImpl"

    const-string v1, "sys.gcsupression.optimize.enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    sput-boolean v2, Lcom/oplus/util/OplusGcSupressionExtImpl;->sIsSupressionFeatureEnabled:Z

    :cond_d
    :try_start_d
    sget-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sVmRuntime:Ljava/lang/Class;

    if-nez v1, :cond_4a

    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sVmRuntime:Ljava/lang/Class;

    const-string v3, "getRuntime"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sGetRuntime:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sObj:Ljava/lang/Object;

    sget-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sVmRuntime:Ljava/lang/Class;

    const-string v3, "SupressionGC"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sSupressionGC:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sVmRuntime:Ljava/lang/Class;

    const-string v3, "DesupressionGC"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v5, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sDesupressionGC:Ljava/lang/reflect/Method;

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer: sIsSupressionFeatureEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oplus/util/OplusGcSupressionExtImpl;->sIsSupressionFeatureEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_60} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_60} :catch_61

    goto :goto_72

    :catch_61
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_6a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/util/OplusGcSupressionExtImpl$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/util/OplusGcSupressionExtImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/util/OplusGcSupressionExtImpl;
    .registers 1

    invoke-static {}, Lcom/oplus/util/OplusGcSupressionExtImpl$Build;->access$000()Lcom/oplus/util/OplusGcSupressionExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callGcDesupression()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusGcSupressionExtImpl;->callGcDesupression(I)V

    return-void
.end method

.method public callGcDesupression(I)V
    .registers 7

    const-string p0, "OplusGcSupressionExtImpl"

    sget-boolean v0, Lcom/oplus/util/OplusGcSupressionExtImpl;->sIsSupressionFeatureEnabled:Z

    if-eqz v0, :cond_41

    :try_start_6
    sget-object v0, Lcom/oplus/util/OplusGcSupressionExtImpl;->sDesupressionGC:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callGcDesupression type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_2c

    goto :goto_41

    :catch_2c
    move-exception p1

    const-string v0, "callGcDesupression : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return-void
.end method

.method public callGcSupression()V
    .registers 3

    const/4 v0, 0x3

    const/16 v1, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/oplus/util/OplusGcSupressionExtImpl;->callGcSupression(II)V

    return-void
.end method

.method public callGcSupression(II)V
    .registers 8

    const-string p0, "OplusGcSupressionExtImpl"

    sget-boolean v0, Lcom/oplus/util/OplusGcSupressionExtImpl;->sIsSupressionFeatureEnabled:Z

    if-eqz v0, :cond_48

    :try_start_6
    sget-object v0, Lcom/oplus/util/OplusGcSupressionExtImpl;->sSupressionGC:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/oplus/util/OplusGcSupressionExtImpl;->sObj:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callGcSupression type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_33

    goto :goto_48

    :catch_33
    move-exception p1

    const-string p2, "callGcSupression : "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    return-void
.end method
