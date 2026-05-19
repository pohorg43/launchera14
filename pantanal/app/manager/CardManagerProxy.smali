.class public final Lpantanal/app/manager/CardManagerProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/manager/CardManagerProxy$Companion;
    }
.end annotation


# static fields
.field public static final CARD_CONNECTOR:Ljava/lang/String; = "&"

.field public static final CARD_PREFIX:Ljava/lang/String; = "card:"

.field public static final Companion:Lpantanal/app/manager/CardManagerProxy$Companion;

.field public static final SPLIT:Ljava/lang/String; = "&"

.field public static final TAG:Ljava/lang/String; = "CardServiceProxy"


# instance fields
.field private final callbackIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineScope:Lm7/j0;

.field private final pantanalUiDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/PantanalUIData;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceManagerProxy:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/manager/CardManagerProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/manager/CardManagerProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/CardManagerProxy;->Companion:Lpantanal/app/manager/CardManagerProxy$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;)V
    .registers 3

    const-string v0, "serviceManagerProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy;->serviceManagerProxy:Lpantanal/app/manager/ServiceManagerProxy;

    sget-object p1, Lpantanal/app/manager/util/CardScope;->INSTANCE:Lpantanal/app/manager/util/CardScope;

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy;->coroutineScope:Lm7/j0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy;->callbackMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy;->callbackIdSet:Ljava/util/HashSet;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy;->pantanalUiDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getPantanalUiDataMap$p(Lpantanal/app/manager/CardManagerProxy;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy;->pantanalUiDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getServiceManagerProxy$p(Lpantanal/app/manager/CardManagerProxy;)Lpantanal/app/manager/ServiceManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy;->serviceManagerProxy:Lpantanal/app/manager/ServiceManagerProxy;

    return-object p0
.end method

.method private final buildPreLogMsg(IIILpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 5

    if-nez p4, :cond_11

    const-string p0, "[DEBUG_"

    const-string p4, "&"

    invoke-static {p0, p1, p4, p2, p4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-static {p0, p3, p1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {p4}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildPreLogMsg$default(Lpantanal/app/manager/CardManagerProxy;IIILpantanal/app/bean/CardViewInfo;ILjava/lang/Object;)Ljava/lang/String;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/manager/CardManagerProxy;->buildPreLogMsg(IIILpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final convertToCallbackId(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 4

    const-string p0, "card:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createUICallbackKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public static synthetic createUIDataChannel$default(Lpantanal/app/manager/CardManagerProxy;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lpantanal/app/manager/CardManagerProxy;->createUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V

    return-void
.end method


# virtual methods
.method public final createUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lorg/json/JSONObject;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v0, "cb"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lpantanal/app/manager/CardManagerProxy;->convertToCallbackId(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lpantanal/app/manager/CardManagerProxy;->createUICallbackKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createUIDataChannel: callbackId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v11, "CardServiceProxy"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v10, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1;

    move-object v0, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1;-><init>(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v6, Lpantanal/app/manager/CardManagerProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lpantanal/app/manager/CardManagerProxy;->callbackIdSet:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->q(I)V

    iget-object v9, v6, Lpantanal/app/manager/CardManagerProxy;->coroutineScope:Lm7/j0;

    new-instance v11, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;

    const/4 v12, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;-><init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v9

    move-object v5, v11

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final destroyUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardViewInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lpantanal/app/manager/CardManagerProxy;->convertToCallbackId(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-static {p2}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "destroyUIDataChannel: callbackId = "

    invoke-static {v1, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "CardServiceProxy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lpantanal/app/manager/CardManagerProxy;->createUICallbackKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    move-object v2, v0

    iget-object v0, p0, Lpantanal/app/manager/CardManagerProxy;->callbackIdSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lz8/c;->r(I)V

    iget-object v6, p0, Lpantanal/app/manager/CardManagerProxy;->coroutineScope:Lm7/j0;

    const/4 v7, 0x0

    new-instance v8, Lpantanal/app/manager/CardManagerProxy$destroyUIDataChannel$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lpantanal/app/manager/CardManagerProxy$destroyUIDataChannel$1;-><init>(Lkotlin/jvm/functions/Function1;Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    move v7, p2

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy;->pantanalUiDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCurrentUIData(Lpantanal/app/bean/CardViewInfo;)Lpantanal/app/bean/PantanalUIData;
    .registers 3

    const-string v0, "cardViewInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lpantanal/app/manager/CardManagerProxy;->convertToCallbackId(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy;->pantanalUiDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/bean/PantanalUIData;

    return-object p0
.end method

.method public final replaceUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lorg/json/JSONObject;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    const-string v2, "cb"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cardViewInfo"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lpantanal/app/manager/CardManagerProxy;->convertToCallbackId(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lpantanal/app/manager/CardManagerProxy;->createUICallbackKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ly8/c;->a:Ly8/c;

    const-string v7, "replaceUIDataChannel: callbackId = "

    invoke-static {v4, v7, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CardServiceProxy"

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    move/from16 v9, v17

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v6, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;

    invoke-direct {v6, v4, v5, v1, v0}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;-><init>(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/CardManagerProxy;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v1, Lpantanal/app/manager/CardManagerProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lz8/c;->w(I)V

    iget-object v9, v1, Lpantanal/app/manager/CardManagerProxy;->coroutineScope:Lm7/j0;

    new-instance v12, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;

    move-object v0, v12

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;-><init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    const/4 v13, 0x3

    move/from16 v11, v17

    invoke-static/range {v9 .. v14}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V
    .registers 16

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p2}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v3

    invoke-virtual {p2}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v4

    invoke-virtual {p2}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lpantanal/app/manager/CardManagerProxy;->buildPreLogMsg$default(Lpantanal/app/manager/CardManagerProxy;IIILpantanal/app/bean/CardViewInfo;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requestCardAction: action = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "CardServiceProxy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lpantanal/app/manager/model/CardAction;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    const/16 v0, 0xb

    invoke-virtual {p1}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_67

    const-string v2, "life_circle"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "update_data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const/16 v0, 0x15

    :cond_67
    move v3, v0

    invoke-static {p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    invoke-static {p1}, Lpantanal/app/manager/model/CardActionKt;->getLifecycleTrackProcessCode(Lpantanal/app/manager/model/CardAction;)I

    move-result v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_76

    goto :goto_7c

    :cond_76
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :cond_7c
    :goto_7c
    iget-object v7, p0, Lpantanal/app/manager/CardManagerProxy;->coroutineScope:Lm7/j0;

    const/4 v8, 0x0

    new-instance v10, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;

    const/4 v0, 0x0

    invoke-direct {v10, p0, p1, p2, v0}, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;-><init>(Lpantanal/app/manager/CardManagerProxy;Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardViewInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lpantanal/app/manager/CardManagerProxy;->convertToCallbackId(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-static {p2}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopObserveUIDataChannel: callbackId = "

    invoke-static {v1, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "CardServiceProxy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lpantanal/app/manager/CardManagerProxy;->createUICallbackKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lz8/c;->r(I)V

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_44

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    move-object v1, v0

    iget-object v6, p0, Lpantanal/app/manager/CardManagerProxy;->coroutineScope:Lm7/j0;

    const/4 v7, 0x0

    new-instance v8, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;-><init>(Lkotlin/jvm/functions/Function1;Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x0

    move-object v2, v6

    move-object v3, v7

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy;->pantanalUiDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
