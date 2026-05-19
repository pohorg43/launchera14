.class public final Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonString$utrace_lib_release(Ljava/lang/String;)Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
    .registers 10

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, v0

    :goto_10
    if-nez p1, :cond_13

    goto :goto_4e

    :cond_13
    sget-object p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;

    :try_start_15
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_20
    instance-of p1, p0, Lh4/k$a;

    if-eqz p1, :cond_25

    move-object p0, v0

    :cond_25
    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_2a

    goto :goto_4e

    :cond_2a
    const-string p1, "key_max_pending_records_l1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "key_max_pending_records_l2"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "key_delay_addtrace_list"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    if-lez p1, :cond_4e

    if-lez v1, :cond_4e

    cmp-long p0, v5, v3

    if-gtz p0, :cond_48

    goto :goto_4e

    :cond_48
    new-instance p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;-><init>(IIJ)V

    move-object v0, p0

    :cond_4e
    :goto_4e
    if-nez v0, :cond_5c

    new-instance v0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;-><init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_5c
    return-object v0
.end method
