.class public final Lpantanal/app/instant/engine/InstantAppCardClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/engine/InstantAppCardClient$InitState;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInstantAppCardClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstantAppCardClient.kt\npantanal/app/instant/engine/InstantAppCardClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n1549#2:313\n1620#2,3:314\n*S KotlinDebug\n*F\n+ 1 InstantAppCardClient.kt\npantanal/app/instant/engine/InstantAppCardClient\n*L\n221#1:313\n221#1:314,3\n*E\n"
    }
.end annotation


# static fields
.field private static final ENGINE_SUPPORT_RPK_UPGRADE_VERSION:I = 0x12

.field public static final INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

.field private static final M_INTERCEPTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lpantanal/app/instant/IInstantCardInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InstantCardClient"

.field private static final hadSetInterceptor:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

.field private static interceptorCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private static final interceptorProxy:Lpantanal/app/instant/engine/InstantAppCardClient$interceptorProxy$1;

.field private static final listener:Lpantanal/app/instant/engine/InstantAppCardClient$listener$1;

.field private static final pendingInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nearme/instant/xcard/ICardEngineCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-direct {v0}, Lpantanal/app/instant/engine/InstantAppCardClient;-><init>()V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->M_INTERCEPTOR_MAP:Ljava/util/HashMap;

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient$interceptorProxy$1;

    invoke-direct {v0}, Lpantanal/app/instant/engine/InstantAppCardClient$interceptorProxy$1;-><init>()V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->interceptorProxy:Lpantanal/app/instant/engine/InstantAppCardClient$interceptorProxy$1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->hadSetInterceptor:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-direct {v0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;-><init>()V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->pendingInitCallbacks:Ljava/util/List;

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient$listener$1;

    invoke-direct {v0}, Lpantanal/app/instant/engine/InstantAppCardClient$listener$1;-><init>()V

    sput-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->listener:Lpantanal/app/instant/engine/InstantAppCardClient$listener$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lpantanal/app/instant/IInstantCardMemCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/instant/engine/InstantAppCardClient;->setCardMemoryInfoCallback$lambda$5(Lpantanal/app/instant/IInstantCardMemCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getHadSetInterceptor$p()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->hadSetInterceptor:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$getInitState$p()Lpantanal/app/instant/engine/InstantAppCardClient$InitState;
    .registers 1

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    return-object v0
.end method

.method public static final synthetic access$getInterceptorCallback$p()Lkotlin/jvm/functions/Function0;
    .registers 1

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->interceptorCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getM_INTERCEPTOR_MAP$p()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->M_INTERCEPTOR_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getPendingInitCallbacks$p()Ljava/util/List;
    .registers 1

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->pendingInitCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lpantanal/app/instant/IInstantCardStatusCallback;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/instant/engine/InstantAppCardClient;->queryStatus$lambda$2(Lpantanal/app/instant/IInstantCardStatusCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(ZLpantanal/app/ILaunchInterceptor;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lpantanal/app/instant/engine/InstantAppCardClient;->setLaunchInterceptor$lambda$3(ZLpantanal/app/ILaunchInterceptor;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function1;Ljava/lang/String;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lpantanal/app/instant/engine/InstantAppCardClient;->upgradeRpk$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;II)V

    return-void
.end method

.method private static final queryStatus$lambda$2(Lpantanal/app/instant/IInstantCardStatusCallback;Ljava/util/List;)V
    .registers 7

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nearme/instant/xcard/CardStatus;

    new-instance v2, Lpantanal/app/instant/InstantCardStatus;

    invoke-virtual {v1}, Lcom/nearme/instant/xcard/CardStatus;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card.uri"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nearme/instant/xcard/CardStatus;->getStatus()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lpantanal/app/instant/InstantCardStatus;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_38
    const/4 v0, 0x0

    :cond_39
    invoke-interface {p0, v0}, Lpantanal/app/instant/IInstantCardStatusCallback;->onGetStatusList(Ljava/util/List;)V

    return-void
.end method

.method private static final setCardMemoryInfoCallback$lambda$5(Lpantanal/app/instant/IInstantCardMemCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCardMemoryInfoCallback, receive from instant engine, pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "InstantCardClient"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lpantanal/app/instant/IInstantCardMemCallback;->cardMemoryInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final setLaunchInterceptor$lambda$3(ZLpantanal/app/ILaunchInterceptor;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V
    .registers 25

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    const-string v4, "$cb"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v6, :cond_1f

    const-string v5, "__view__"

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Landroid/view/View;

    if-eqz v7, :cond_1f

    check-cast v5, Landroid/view/View;

    goto :goto_20

    :cond_1f
    move-object v5, v4

    :goto_20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLaunchInterceptorV1 receive intent from instantApp, cardName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "，enableV2Callback="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", clickedView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v9, Ly8/c;->a:Ly8/c;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "InstantCardClient"

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v7, "intent"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_7e

    sget-object v4, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    new-array v0, v9, [Landroid/content/Intent;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v8

    invoke-static {v0}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v4

    move-object/from16 v3, p3

    move-object v4, v7

    move-object v5, v8

    move-object/from16 v6, p4

    invoke-interface/range {v0 .. v6}, Lpantanal/app/ILaunchInterceptor;->onStartActivityV2(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_8e

    :cond_7e
    sget-object v0, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    new-array v5, v9, [Landroid/content/Intent;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v5, v8

    invoke-static {v5}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v4, v0, v3, v2}, Lpantanal/app/ILaunchInterceptor;->onStartActivity(Landroid/view/View;Lpantanal/app/bean/CardCategory;Ljava/lang/String;Ljava/util/List;)V

    :goto_8e
    return-void
.end method

.method private static final upgradeRpk$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/String;II)V
    .registers 27

    move-object/from16 v0, p0

    const-string v1, "$resultCallback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_24

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-static/range {p1 .. p1}, Ly8/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " Download success"

    invoke-static {v2, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardClient"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_46

    :cond_24
    sget-object v12, Ly8/c;->a:Ly8/c;

    invoke-static/range {p1 .. p1}, Ly8/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " Download fail, errorCode = "

    move/from16 v3, p3

    invoke-static {v1, v2, v3}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    const-string v13, "InstantCardClient"

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_46
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;
    .registers 13

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_21

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "cardClient not init, please try later"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_21
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/nearme/instant/xcard/CardClient;->createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public final destroy()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "InstantCardClient"

    const-string v2, "destroy begin"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->setState(I)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->M_INTERCEPTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nearme/instant/xcard/CardClient;->destroy()V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->hadSetInterceptor:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    sput-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->interceptorCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final getAppInfo(Ljava/lang/String;)Lorg/hapjs/card/api/AppInfo;
    .registers 13

    const-string p0, "pkg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_21

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "cardClient not init, please try later"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_21
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/nearme/instant/xcard/CardClient;->getAppInfo(Ljava/lang/String;)Lorg/hapjs/card/api/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInitState()Lpantanal/app/instant/engine/InstantAppCardClient$InitState;
    .registers 1

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    return-object p0
.end method

.method public final declared-synchronized initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Lkotlin/jvm/functions/Function0;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nearme/instant/xcard/ICardEngineCallback;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_7
    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "setInterceptor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v5, "InstantCardClient"

    sget-object v15, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initAsync init state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v4, Lpantanal/app/instant/engine/InstantAppCardClient;->interceptorCallback:Lkotlin/jvm/functions/Function0;

    if-nez v4, :cond_40

    sput-object v2, Lpantanal/app/instant/engine/InstantAppCardClient;->interceptorCallback:Lkotlin/jvm/functions/Function0;

    :cond_40
    invoke-virtual {v15}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitializing()Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v5, "InstantCardClient"

    const-string v6, "initAsync isInitializing add to pending task. "

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_5d
    invoke-virtual {v15}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_78

    const-string v5, "InstantCardClient"

    const-string v6, "initAsync already init. call onInitSuccess."

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitSuccess()V

    goto :goto_86

    :cond_78
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->setState(I)V

    sget-object v2, Lpantanal/app/instant/engine/InstantAppCardClient;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lpantanal/app/instant/engine/InstantAppCardClient;->listener:Lpantanal/app/instant/engine/InstantAppCardClient$listener$1;

    invoke-static {v0, v1}, Lcom/nearme/instant/xcard/CardClient;->initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;)V
    :try_end_86
    .catchall {:try_start_7 .. :try_end_86} :catchall_88

    :goto_86
    monitor-exit p0

    return-void

    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final putCardInterceptor(Ljava/lang/String;Lpantanal/app/instant/IInstantCardInterceptor;)V
    .registers 14

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cardInterceptor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_25

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "cardClient not init, please try later"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_25
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->M_INTERCEPTOR_MAP:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lpantanal/app/instant/engine/InstantAppCardClient;->interceptorProxy:Lpantanal/app/instant/engine/InstantAppCardClient$interceptorProxy$1;

    invoke-virtual {p0, p1}, Lcom/nearme/instant/xcard/CardClient;->setCardInterceptor(Lcom/nearme/instant/xcard/IInterceptor;)Z

    return-void
.end method

.method public final varargs queryStatus(Landroid/content/Context;Lpantanal/app/instant/IInstantCardStatusCallback;[Ljava/lang/String;)V
    .registers 15

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uri"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_2a

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "cardClient not init, please try later"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_2a
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    new-instance v0, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v0, p2}, Lcom/android/exceptionmonitor/util/d;-><init>(Lpantanal/app/instant/IInstantCardStatusCallback;)V

    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/nearme/instant/xcard/CardClient;->queryStatus(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardStatusListener;[Ljava/lang/String;)V

    return-void
.end method

.method public final setCardMemoryInfoCallback(Lpantanal/app/instant/IInstantCardMemCallback;)V
    .registers 26

    move-object/from16 v0, p1

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {v1}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "InstantCardClient"

    const-string v4, "setCardMemoryInfoCallback, cardClient not init, please try later"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_22
    sget-object v13, Ly8/c;->a:Ly8/c;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "InstantCardClient"

    const-string v15, "setCardMemoryInfoCallback..."

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object v1

    new-instance v2, Landroidx/core/view/a;

    invoke-direct {v2, v0}, Landroidx/core/view/a;-><init>(Lpantanal/app/instant/IInstantCardMemCallback;)V

    invoke-virtual {v1, v2}, Lcom/nearme/instant/xcard/CardClient;->setCardMemoryInfoCallback(Lcom/nearme/instant/xcard/ICardMessageCallback;)V

    return-void
.end method

.method public final setLaunchInterceptor(Lpantanal/app/ILaunchInterceptor;Z)V
    .registers 28

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "cb"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {v2}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "InstantCardClient"

    const-string v5, "setLaunchInterceptor cardClient not init, please try later"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_24
    sget-object v14, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLaunchInterceptor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to instantApp, cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", enableV2Callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "InstantCardClient"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object v2

    new-instance v3, Lt8/c;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lt8/c;-><init>(ZLpantanal/app/ILaunchInterceptor;I)V

    invoke-virtual {v2, v3}, Lcom/nearme/instant/xcard/CardClient;->setLaunchInterceptorV1(Lcom/nearme/instant/xcard/ILaunchInterceptorV1;)V

    return-void
.end method

.method public final setLocationProvider(Lpantanal/app/instant/IInstantAppLocationProvider;)Z
    .registers 13

    const-string p0, "providerInstantApp"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_21

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "setLocationProvider, cardClient not init, please try later"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_21
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1;

    invoke-direct {v0, p1}, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1;-><init>(Lpantanal/app/instant/IInstantAppLocationProvider;)V

    invoke-virtual {p0, v0}, Lcom/nearme/instant/xcard/CardClient;->setLocationProvider(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider;)Z

    move-result p0

    return p0
.end method

.method public final upgradeRpk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pkg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resultCallback"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->initState:Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_2f

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "cardClient not init, please try later"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_2f
    invoke-static {p1}, Lcom/nearme/instant/xcard/CardClient;->getCardPlatformVersion(Landroid/content/Context;)I

    move-result p0

    const/16 p1, 0x12

    if-ge p0, p1, :cond_4a

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardClient"

    const-string v2, "cardPlatformVersion < 18, download not supported"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_56

    :cond_4a
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object p0

    new-instance p1, Landroidx/core/view/inputmethod/a;

    invoke-direct {p1, p4}, Landroidx/core/view/inputmethod/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p2, p3, p1}, Lcom/nearme/instant/xcard/CardClient;->download(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/DownloadListener;)V

    :goto_56
    return-void
.end method
