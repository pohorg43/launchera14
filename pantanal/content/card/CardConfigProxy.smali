.class public final Lpantanal/content/card/CardConfigProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/content/card/CardConfigProxy$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardConfigProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardConfigProxy.kt\npantanal/content/card/CardConfigProxy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,304:1\n1855#2,2:305\n1864#2,3:311\n1855#2,2:314\n11065#3:307\n11400#3,3:308\n*S KotlinDebug\n*F\n+ 1 CardConfigProxy.kt\npantanal/content/card/CardConfigProxy\n*L\n156#1:305,2\n270#1:311,3\n293#1:314,2\n264#1:307\n264#1:308,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/content/card/CardConfigProxy$Companion;

.field private static final TAG:Ljava/lang/String; = "CardConfigProxy"


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private cardConfigDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final clientProxyManager:Lpantanal/app/manager/ClientProxyManager;

.field private final entrance:Lpantanal/app/bean/Entrance;

.field private final initData:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/content/card/CardConfigProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/content/card/CardConfigProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/content/card/CardConfigProxy;->Companion:Lpantanal/content/card/CardConfigProxy$Companion;

    return-void
.end method

.method public constructor <init>(Lw8/a;Lpantanal/app/bean/Entrance;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "contextProxy"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "entrance"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    sget-object v3, Lpantanal/app/manager/ClientProxyManager;->Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

    invoke-virtual {v3, v2}, Lpantanal/app/manager/ClientProxyManager$Companion;->getInstance(Lpantanal/app/bean/Entrance;)Lpantanal/app/manager/ClientProxyManager;

    move-result-object v2

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->clientProxyManager:Lpantanal/app/manager/ClientProxyManager;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigMap:Ljava/util/Map;

    sget-object v2, Li4/y;->a:Li4/y;

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->initData:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lpantanal/content/card/CardConfigProxy$callback$1;

    invoke-direct {v2, v0}, Lpantanal/content/card/CardConfigProxy$callback$1;-><init>(Lpantanal/content/card/CardConfigProxy;)V

    iput-object v2, v0, Lpantanal/content/card/CardConfigProxy;->callback:Lkotlin/jvm/functions/Function1;

    sget-object v2, Lpantanal/foundation/userunlock/UserUnlockManager;->a:Lpantanal/foundation/userunlock/UserUnlockManager;

    iget-object v1, v1, Lw8/a;->b:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/os/UserManager;

    if-eqz v4, :cond_54

    check-cast v1, Landroid/os/UserManager;

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    :goto_55
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    :cond_5b
    if-eqz v3, :cond_73

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardConfigProxy"

    const-string v6, "User unlocked = true, try get and observe data."

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lpantanal/content/card/CardConfigProxy;->getAndObserveData()V

    goto :goto_8c

    :cond_73
    sget-object v15, Ly8/c;->a:Ly8/c;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "CardConfigProxy"

    const-string v17, "User unlocked = false, request card config data later."

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_8c
    new-instance v1, Lpantanal/content/card/a;

    invoke-direct {v1, v0}, Lpantanal/content/card/a;-><init>(Lpantanal/content/card/CardConfigProxy;)V

    const-string v0, "ob"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lpantanal/foundation/userunlock/UserUnlockManager;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final _init_$lambda$0(Lpantanal/content/card/CardConfigProxy;)V
    .registers 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/f;->a(I)Lz8/b;

    move-result-object v0

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Lz8/b;->l(Ljava/lang/String;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "CardConfigProxy"

    const-string v4, "User unlocked changed to true, try get and observe data"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/content/card/CardConfigProxy;->getAndObserveData()V

    return-void
.end method

.method public static synthetic a(Lpantanal/content/card/CardConfigProxy;)V
    .registers 1

    invoke-static {p0}, Lpantanal/content/card/CardConfigProxy;->_init_$lambda$0(Lpantanal/content/card/CardConfigProxy;)V

    return-void
.end method

.method public static final synthetic access$getCardConfigDataList$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCardConfigMap$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->cardConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$observeCardConfigChanged(Lpantanal/content/card/CardConfigProxy;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/content/card/CardConfigProxy;->observeCardConfigChanged()V

    return-void
.end method

.method public static final synthetic access$requestToPublishAllConfig(Lpantanal/content/card/CardConfigProxy;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/content/card/CardConfigProxy;->requestToPublishAllConfig()V

    return-void
.end method

.method public static final synthetic access$setData(Lpantanal/content/card/CardConfigProxy;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/card/CardConfigProxy;->setData([B)V

    return-void
.end method

.method private final dispatchCardChangeEvent()V
    .registers 13

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v1

    iget-object v2, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v2

    invoke-virtual {v1, v2}, Lz8/f;->a(I)Lz8/b;

    move-result-object v1

    iget-object v2, p0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Lz8/b;->k(I)Lz8/b;

    iget-object v3, v1, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "callback_size"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v0, v0, Lz8/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_40

    invoke-virtual {v1}, Lz8/a;->e()V

    const-string v2, "pantanl_card_config_update"

    invoke-virtual {v1, v0, v2}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v1, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v1}, Lz8/a;->f()V

    :cond_40
    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardConfigProxy"

    const-string v3, "dispatchCardChangeEvent,callback list is empty."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_5b
    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v2, Lpantanal/app/manager/util/CardScope;->INSTANCE:Lpantanal/app/manager/util/CardScope;

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->main()Lm7/f0;

    move-result-object v3

    new-instance v5, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;

    const/4 v4, 0x0

    invoke-direct {v5, v1, p0, v4}, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lpantanal/content/card/CardConfigProxy;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto :goto_61

    :cond_80
    return-void
.end method

.method private final getAndObserveData()V
    .registers 8

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v0

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;-><init>(Lpantanal/content/card/CardConfigProxy;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method private final observeCardConfigChanged()V
    .registers 15

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardConfigProxy"

    const-string v2, "observeCardConfigChanged,Try observe data from CardService start"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v12, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v12}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/f;->a(I)Lz8/b;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lz8/b;->k(I)Lz8/b;

    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy;->clientProxyManager:Lpantanal/app/manager/ClientProxyManager;

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v0, v1}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v2

    if-nez v2, :cond_81

    const-string v13, "observeCardConfigChanged,observe failed,clientProxy is null."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardConfigProxy"

    move-object v0, v11

    move-object v2, v13

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p0

    invoke-virtual {v0, p0}, Lz8/f;->a(I)Lz8/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msg"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lz8/b;->k(I)Lz8/b;

    iget-object v0, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_68

    const-string v1, "configs"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    invoke-virtual {v12}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v0, v0, Lz8/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lz8/a;->e()V

    const-string v1, "pantanl_card_config_update"

    invoke-virtual {p0, v0, v1}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lz8/a;->f()V

    :cond_80
    return-void

    :cond_81
    sget-object v0, Lpantanal/content/card/CardConfigProxy;->Companion:Lpantanal/content/card/CardConfigProxy$Companion;

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-static {v0, v1}, Lpantanal/content/card/CardConfigProxy$Companion;->access$getCardConfigCallbackId(Lpantanal/content/card/CardConfigProxy$Companion;I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    iget-object v5, p0, Lpantanal/content/card/CardConfigProxy;->callback:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v9}, Lcom/oplus/channel/server/ClientProxy$DefaultImpls;->observe$default(Lcom/oplus/channel/server/ClientProxy;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p0

    invoke-static {v0, p0}, Lpantanal/content/card/CardConfigProxy$Companion;->access$getCardConfigCallbackId(Lpantanal/content/card/CardConfigProxy$Companion;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "observeCardConfigChanged,Try observe data from CardService end, observe callbackId = "

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 p0, 0x0

    const-string v1, "CardConfigProxy"

    move-object v0, v11

    move-object v10, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final requestToPublishAllConfig()V
    .registers 21

    move-object/from16 v0, p0

    sget-object v12, Ly8/c;->a:Ly8/c;

    const-string v2, "CardConfigProxy"

    const-string v3, "Try get all data from CardService start"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Lpantanal/app/manager/model/CardAction;

    const/4 v2, 0x2

    new-array v2, v2, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v4, "configuration_list_key"

    const-string v5, "publish_configuration_list"

    invoke-direct {v3, v4, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lpantanal/content/card/CardConfigProxy;->Companion:Lpantanal/content/card/CardConfigProxy$Companion;

    iget-object v4, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v4}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    invoke-static {v3, v4}, Lpantanal/content/card/CardConfigProxy$Companion;->access$getCardConfigCallbackId(Lpantanal/content/card/CardConfigProxy$Companion;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "configuration_observer_id"

    invoke-direct {v4, v5, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/4 v14, 0x5

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, -0x1

    const/4 v15, -0x1

    iget-object v2, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getHost()I

    move-result v2

    const-string v4, "[cardType = -1, "

    const-string v5, "cardId = -1, "

    invoke-static {v4, v5}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hostId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StringBuilder()\n        …)\n            .toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v5}, Lz8/f$a;->a()Lz8/f;

    move-result-object v5

    iget-object v6, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v6}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v6

    invoke-virtual {v5, v6}, Lz8/f;->a(I)Lz8/b;

    move-result-object v5

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Lz8/b;->k(I)Lz8/b;

    iget-object v5, v0, Lpantanal/content/card/CardConfigProxy;->clientProxyManager:Lpantanal/app/manager/ClientProxyManager;

    iget-object v0, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v5, v0}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v0

    if-nez v0, :cond_c9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardConfigProxy"

    const-string v2, "requestToPublishAllConfig,send requet failed,clientProxy is null."

    move-object v0, v12

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_c9
    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object v13, v1

    move/from16 v16, v2

    invoke-static/range {v13 .. v19}, Lpantanal/app/manager/util/ProtoDataUtilKt;->toCardActionProto$default(Lpantanal/app/manager/model/CardAction;IIILpantanal/app/bean/CardViewInfo;ILjava/lang/Object;)Lpantanal/app/nano/CardActionProto;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const-string v2, "toByteArray(action.toCar…to(type, cardId, hostId))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/oplus/channel/server/ClientProxy;->request([BZLjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardConfigProxy"

    const-string v2, "Try get all data from CardService end"

    move-object v0, v12

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final setData([B)V
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lpantanal/content/nano/CardConfigInfoListProto;

    invoke-direct {v2}, Lpantanal/content/nano/CardConfigInfoListProto;-><init>()V

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lpantanal/content/nano/CardConfigInfoListProto;

    iget-object v2, v2, Lpantanal/content/nano/CardConfigInfoListProto;->list:[Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;

    const-string v3, "mergeFrom(CardConfigInfo… bytes)\n            .list"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_24
    if-ge v6, v4, :cond_44

    aget-object v7, v2, v6

    sget-object v8, Lpantanal/app/bean/CardConfigInfo;->Companion:Lpantanal/app/bean/CardConfigInfo$Companion;

    const-string v9, "it"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lpantanal/app/bean/CardConfigInfo$Companion;->fromProto(Lpantanal/content/nano/CardConfigInfoListProto$CardConfigInfoProto;)Lpantanal/app/bean/CardConfigInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpantanal/app/bean/CardConfigInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_44
    iput-object v3, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_95

    check-cast v6, Lpantanal/app/bean/CardConfigInfo;

    iget-object v4, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigMap:Ljava/util/Map;

    invoke-virtual {v6}, Lpantanal/app/bean/CardConfigInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lpantanal/app/bean/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lpantanal/app/bean/CardConfigInfo;->getType()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-type:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_52

    :cond_95
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_9a
    sget-object v3, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v3}, Lz8/f$a;->a()Lz8/f;

    move-result-object v3

    iget-object v4, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v4}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    invoke-virtual {v3, v4}, Lz8/f;->a(I)Lz8/b;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cardTypes"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Lz8/b;->k(I)Lz8/b;

    iget-object v4, v3, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_c8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "config_size"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    iget-object v3, v3, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_d9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly8/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "configs"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d9
    sget-object v6, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    iget-object v3, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x5dc

    if-gt v4, v7, :cond_f5

    goto :goto_12e

    :cond_f5
    div-int/lit16 v7, v4, 0x5dc

    rem-int/lit16 v8, v4, 0x5dc

    if-lez v8, :cond_fd

    add-int/lit8 v7, v7, 0x1

    :cond_fd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v5

    :goto_103
    if-ge v9, v7, :cond_125

    mul-int/lit16 v10, v9, 0x5dc

    add-int/lit8 v11, v9, 0x1

    mul-int/lit16 v12, v11, 0x5dc

    if-le v12, v4, :cond_10e

    move v12, v4

    :cond_10e
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v12, "substring(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v7, -0x1

    if-ge v9, v10, :cond_123

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_123
    move v9, v11

    goto :goto_103

    :cond_125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "result.toString()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_12e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notify card change to entrance:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",total size:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cardConfigs:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "CardConfigProxy"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/content/card/CardConfigProxy;->initData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-direct/range {p0 .. p0}, Lpantanal/content/card/CardConfigProxy;->dispatchCardChangeEvent()V

    return-void
.end method


# virtual methods
.method public final getCardConfig(I)Lpantanal/app/bean/CardConfigInfo;
    .registers 2

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->cardConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/bean/CardConfigInfo;

    return-object p0
.end method

.method public final getCardConfigsByServiceId(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardConfigProxy"

    const-string v4, "getCardConfigsByServiceId return empty,because cache data is empty."

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    :cond_25
    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/bean/CardConfigInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_45
    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const-string v1, "getCardConfigsByServiceId serviceId = "

    const-string v2, ",configSize = "

    const-string v4, ",list = "

    invoke-static {v1, p1, v2, p0, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "CardConfigProxy"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getEntrance()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cb"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v3, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already Registered CardConfigChange Callback called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "CardConfigProxy"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_35
    iget-object v2, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    iget-object v3, v0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lpantanal/content/card/CardConfigProxy;->initData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    iget-object v5, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Register CardConfigChange Callback called for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", configCallback size:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", initData:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", config size:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "CardConfigProxy"

    move-object v7, v3

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v4, v0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v4}, Lz8/f$a;->a()Lz8/f;

    move-result-object v5

    iget-object v6, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v6}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v6

    invoke-virtual {v5, v6}, Lz8/f;->a(I)Lz8/b;

    move-result-object v5

    iget-object v6, v0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Lz8/b;->k(I)Lz8/b;

    iget-object v5, v5, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_b6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "callback_size"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    iget-object v5, v0, Lpantanal/content/card/CardConfigProxy;->initData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_134

    iget-object v5, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    iget-object v6, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initData is true, just reply config to entrance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "CardConfigProxy"

    move-object v10, v3

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v4}, Lz8/f$a;->a()Lz8/f;

    move-result-object v2

    iget-object v3, v0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v3}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lz8/f;->a(I)Lz8/b;

    move-result-object v2

    iget-object v3, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lz8/b;->k(I)Lz8/b;

    iget-object v5, v2, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_116

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "config_size"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_116
    invoke-virtual {v4}, Lz8/f$a;->a()Lz8/f;

    move-result-object v3

    iget-object v3, v3, Lz8/f;->b:Landroid/content/Context;

    if-eqz v3, :cond_12e

    invoke-virtual {v2}, Lz8/a;->e()V

    const-string v4, "pantanl_card_config_update"

    invoke-virtual {v2, v3, v4}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v2, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v2}, Lz8/a;->f()V

    :cond_12e
    iget-object v0, v0, Lpantanal/content/card/CardConfigProxy;->cardConfigDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14c

    :cond_134
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "CardConfigProxy"

    const-string v12, "Waiting for init data."

    move-object v10, v3

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lpantanal/content/card/CardConfigProxy;->getAndObserveData()V

    :goto_14c
    return-void
.end method

.method public final unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/content/card/CardConfigProxy;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/f;->a(I)Lz8/b;

    move-result-object v0

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy;->callbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v1, "unregister"

    invoke-virtual {v0, v1}, Lz8/b;->l(Ljava/lang/String;)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lz8/b;->k(I)Lz8/b;

    iget-object v1, v0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_37

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "callback_size"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object p0

    iget-object p0, p0, Lz8/f;->b:Landroid/content/Context;

    if-eqz p0, :cond_4f

    invoke-virtual {v0}, Lz8/a;->e()V

    const-string p1, "pantanl_card_config_update"

    invoke-virtual {v0, p0, p1}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, v0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v0}, Lz8/a;->f()V

    :cond_4f
    return-void
.end method
