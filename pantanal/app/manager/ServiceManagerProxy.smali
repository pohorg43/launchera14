.class public final Lpantanal/app/manager/ServiceManagerProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/manager/ServiceManagerProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/manager/ServiceManagerProxy$Companion;

.field public static final KEY_CALLBACK:Ljava/lang/String; = "observeWithCallback"

.field public static final KEY_CONNECTOR:Ljava/lang/String; = "&"

.field public static final TAG:Ljava/lang/String; = "CardServiceProxyImpl"


# instance fields
.field private final clientProxyManager$delegate:Lh4/f;

.field private final configuration:Lpantanal/app/bean/Configuration;

.field private final contextProxy:Lw8/a;

.field private final observeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/manager/ServiceManagerProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/manager/ServiceManagerProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/ServiceManagerProxy;->Companion:Lpantanal/app/manager/ServiceManagerProxy$Companion;

    return-void
.end method

.method public constructor <init>(Lw8/a;Lpantanal/app/bean/Configuration;)V
    .registers 4

    const-string v0, "contextProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy;->contextProxy:Lw8/a;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy;->configuration:Lpantanal/app/bean/Configuration;

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;

    invoke-direct {p1, p0}, Lpantanal/app/manager/ServiceManagerProxy$clientProxyManager$2;-><init>(Lpantanal/app/manager/ServiceManagerProxy;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy;->clientProxyManager$delegate:Lh4/f;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy;->observeMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getSpanName(Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/manager/model/CardAction;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy;->getSpanName(Lpantanal/app/manager/model/CardAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startUTraceIntent(Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy;->startUTraceIntent(Lpantanal/app/bean/CardViewInfo;)V

    return-void
.end method

.method public static final synthetic access$unObserveWithObserverKey(Lpantanal/app/manager/ServiceManagerProxy;ILjava/lang/String;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lpantanal/app/manager/ServiceManagerProxy;->unObserveWithObserverKey(ILjava/lang/String;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getSpanName(Lpantanal/app/manager/model/CardAction;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_f

    const-string p1, "life_circle"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_72

    goto :goto_6e

    :sswitch_1a
    const-string p1, "destroy"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_6e

    :cond_23
    const-string p0, "7003"

    goto :goto_70

    :sswitch_26
    const-string p1, "unsubscribed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_6e

    :cond_2f
    const-string p0, "7005"

    goto :goto_70

    :sswitch_32
    const-string p1, "show"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_6e

    :cond_3b
    const-string p0, "1109"

    goto :goto_70

    :sswitch_3e
    const-string p1, "hide"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto :goto_6e

    :cond_47
    const-string p0, "7001"

    goto :goto_70

    :sswitch_4a
    const-string p1, "update_data"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto :goto_6e

    :cond_53
    const-string p0, "1107"

    goto :goto_70

    :sswitch_56
    const-string p1, "subscribed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto :goto_6e

    :cond_5f
    const-string p0, "1103"

    goto :goto_70

    :sswitch_62
    const-string p1, "create"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto :goto_6e

    :cond_6b
    const-string p0, "1106"

    goto :goto_70

    :cond_6e
    :goto_6e
    const-string p0, ""

    :goto_70
    return-object p0

    nop

    :sswitch_data_72
    .sparse-switch
        -0x509a5f04 -> :sswitch_62
        -0x48b433a6 -> :sswitch_56
        -0x22357aa0 -> :sswitch_4a
        0x30dd42 -> :sswitch_3e
        0x35dafd -> :sswitch_32
        0x35c12fb3 -> :sswitch_26
        0x5cd39ffa -> :sswitch_1a
    .end sparse-switch
.end method

.method private final observeByByteWithObserverKey(Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    new-instance v9, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Ll4/d;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object/from16 v1, p6

    invoke-static {v0, v9, v1}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public static synthetic observeByByteWithObserverKey$default(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 19

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_8

    :cond_7
    move-object v6, p3

    :goto_8
    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    new-instance v9, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Ll4/d;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object/from16 v1, p6

    invoke-static {v0, v9, v1}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public static synthetic observeWithCallbackId$default(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 19

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_8

    :cond_7
    move-object v5, p4

    :goto_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lpantanal/app/manager/ServiceManagerProxy;->observeWithCallbackId(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final startUTraceIntent(Lpantanal/app/bean/CardViewInfo;)V
    .registers 13

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    if-eqz p0, :cond_3d

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "startUTraceIntent,serviceId:"

    const-string v2, ",UTrace.start spanName:4000"

    invoke-static {v1, p0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardServiceProxyImpl"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "4000"

    invoke-static {p0, v1, v2, v0, v1}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    invoke-static {p1}, Ly5/p;->a(Lpantanal/app/bean/CardViewInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    const/4 v0, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2, v1}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    invoke-virtual {p1, p0}, Lpantanal/app/bean/CardViewInfo;->setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    :cond_3d
    return-void
.end method

.method private final unObserveWithObserverKey(ILjava/lang/String;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    new-instance v8, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;-><init>(Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;ILl4/d;)V

    invoke-static {v0, v8, p5}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;
    .registers 1

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy;->clientProxyManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ClientProxyManager;

    return-object p0
.end method

.method public final getConfiguration()Lpantanal/app/bean/Configuration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy;->configuration:Lpantanal/app/bean/Configuration;

    return-object p0
.end method

.method public final getObserveMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy;->observeMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy;->contextProxy:Lw8/a;

    invoke-virtual {p0}, Lw8/a;->a()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p0, "clazz"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final observeWithCallbackId(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    new-instance v10, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object/from16 v3, p5

    move-object v4, p0

    move-object v5, p4

    move-object/from16 v6, p6

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Ljava/lang/Class;Ll4/d;)V

    move-object/from16 v1, p7

    invoke-static {v0, v10, v1}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne v0, v1, :cond_1f

    return-object v0

    :cond_1f
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public final synthetic replaceObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v8, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Ll4/d;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0, v8, p5}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object p0
.end method

.method public final sendMessageToCardServer(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/model/CardAction;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    new-instance v1, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    invoke-static {v0, v1, p3}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_13

    return-object p0

    :cond_13
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final stopObserveWithCallbackId(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function1;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object p3

    new-instance v0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    invoke-static {p3, v0, p4}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_13

    return-object p0

    :cond_13
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final unObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/CardViewInfo;->getComponentName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v0, "unObserveWithCallbackId for super and normal channel  componentName:  "

    invoke-static {v0, v6}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "CardServiceProxyImpl"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    new-instance v8, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;ILpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)V

    move-object/from16 v1, p4

    invoke-static {v0, v8, v1}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne v0, v1, :cond_3f

    return-object v0

    :cond_3f
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
