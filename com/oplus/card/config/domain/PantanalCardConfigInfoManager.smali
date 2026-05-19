.class public final Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/config/domain/ICardConfigInfoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPantanalCardConfigInfoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PantanalCardConfigInfoManager.kt\ncom/oplus/card/config/domain/PantanalCardConfigInfoManager\n+ 2 GlobalDI.kt\ncom/oplus/card/di/GlobalDI\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,195:1\n42#2,4:196\n766#3:200\n857#3,2:201\n766#3:203\n857#3,2:204\n766#3:206\n857#3,2:207\n1208#3,2:209\n1238#3,4:211\n1855#3,2:215\n1208#3,2:217\n1238#3,4:219\n1855#3,2:223\n1855#3,2:225\n1855#3,2:227\n1855#3,2:229\n*S KotlinDebug\n*F\n+ 1 PantanalCardConfigInfoManager.kt\ncom/oplus/card/config/domain/PantanalCardConfigInfoManager\n*L\n42#1:196,4\n120#1:200\n120#1:201,2\n124#1:203\n124#1:204,2\n152#1:206\n152#1:207,2\n154#1:209,2\n154#1:211,4\n179#1:215,2\n182#1:217,2\n182#1:219,4\n189#1:223,2\n164#1:225,2\n167#1:227,2\n170#1:229,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$Companion;

.field private static final TAG:Ljava/lang/String; = "PantanalCardConfigInfoManager"


# instance fields
.field private final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cardConfigCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final cardConfigInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cardConfigListInit:Z

.field private cardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final pantanalCardService$delegate:Lh4/f;

.field private final pendingCardConfigCB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private seedCardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->Companion:Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-class v0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    iput-object v1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v2}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_53

    invoke-virtual {v2}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lh4/f;

    iput-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pantanalCardService$delegate:Lh4/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    iput-object v1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigInfoList:Ljava/util/List;

    new-instance v0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$cardConfigCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$cardConfigCallback$1;-><init>(Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;)V

    iput-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigCallback:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_53
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the class are not injected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->notifyCardConfigChange$lambda$12(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onCardConfigChange(Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->onCardConfigChange(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->onCardConfigChange$lambda$8(Ljava/util/List;Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;Ljava/util/List;)V

    return-void
.end method

.method private final checkCardEnable(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 3

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/16 p1, 0x64

    if-eq p0, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method

.method private final createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pantanalCardService$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    return-object p0
.end method

.method private final notifyCardConfigChange()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_20
    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Li4/j0;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2f

    move v1, v2

    :cond_2f
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_54
    iput-object v2, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->filterCardConfigForShop(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v2, "onCardConfigChange seed card list.size: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/c1;

    invoke-direct {v2, v0}, Lcom/android/quickstep/c1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9c
    :goto_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_9c

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_b4
    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_b9
    return-void
.end method

.method private static final notifyCardConfigChange$lambda$12(Ljava/util/List;)V
    .registers 2

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardHost;->getInstance()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/LauncherCardHost;->updateCardName(Ljava/util/List;)V

    return-void
.end method

.method private final onCardConfigChange(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardConfigCallback: size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PantanalCardConfigInfoManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigInfoList:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lpantanal/app/bean/CardConfigInfo;

    invoke-static {v5}, Lcom/oplus/card/config/domain/model/CardConfigInfoKt;->toCardConfigInfo(Lpantanal/app/bean/CardConfigInfo;)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->checkCardEnable(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_5e
    const/16 v3, 0xa

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Li4/j0;->b(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_6d

    move v3, v4

    :cond_6d
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpantanal/app/bean/CardConfigInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardConfigInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfoKt;->toCardConfigInfo(Lpantanal/app/bean/CardConfigInfo;)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :cond_92
    iput-object v4, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigListInit:Z

    sget-object v1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/quickstep/f1;

    invoke-direct {v2, p1, p0, v0}, Lcom/android/quickstep/f1;-><init>(Ljava/util/List;Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->notifyCardConfigChange()V

    :cond_a3
    return-void
.end method

.method private static final onCardConfigChange$lambda$8(Ljava/util/List;Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;Ljava/util/List;)V
    .registers 7

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oldCardConfigInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCardConfigChange cardConfigInfoList.size--:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardConfigMap.size---:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/bean/CardConfigInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n+card info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_63
    invoke-interface {p2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpantanal/app/bean/CardConfigInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n-card info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_8b
    const/16 p1, 0xa

    invoke-static {p1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "—"

    invoke-static {v1, p1}, Lk7/m;->o(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "all"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lk7/m;->o(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpantanal/app/bean/CardConfigInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n.card info:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    :cond_d2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PantanalCardConfigInfoManager"

    const-string p2, "card/card_config_list"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/OplusFileLog;->dRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final filterCardConfigForShop(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDynamic()Z

    sget-object v3, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDisplayArea()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/card/manager/domain/CardManager;->isLauncherCardDisplayArea(I)Z

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getReservedFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-direct {p0, v2}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->checkCardEnable(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_5c
    return-object p1
.end method

.method public getAllConfigListForShop(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigListInit:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->filterCardConfigForShop(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_1b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->pendingCardConfigCB:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    return-void
.end method

.method public getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 2

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public final getCardConfigMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public getCardConfigMapSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getOperatingRecommendForShop(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string p0, "cb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getSeedCardConfig(Ljava/lang/String;II)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 6

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4a

    const/4 v0, 0x2

    const-string v1, "PantanalCardConfigInfoManager"

    if-eq p2, v0, :cond_1f

    const-string p2, "getSeedCardConfig: error for channel type Illegal"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    invoke-direct {p0, p1, p3}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    goto :goto_56

    :cond_1f
    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez p0, :cond_32

    goto :goto_35

    :cond_32
    invoke-virtual {p0, p3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->setSize(I)V

    :goto_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSeedCardConfig NEW_SERVICE_CHANNEL: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_4a
    iget-object p2, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->seedCardConfigMap:Ljava/util/Map;

    invoke-direct {p0, p1, p3}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->createSeedCardMapKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    :goto_56
    return-object p0
.end method

.method public isCardConfigListInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigListInit:Z

    return p0
.end method

.method public loadSeedlingPlugin(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/pantanal/application/IPantanalCardService;->loadSeedlingPlugin(Landroid/content/Context;)V

    return-void
.end method

.method public registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigListInit:Z

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method public registerServiceProxyCardCallback(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PantanalCardConfigInfoManager"

    const-string v1, "registerServiceProxyCardCallback: "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1, p0}, Lcom/oplus/card/pantanal/application/IPantanalCardService;->registerCardConfigCallback(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCardConfigMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigMap:Ljava/util/Map;

    return-void
.end method

.method public unRegisterServiceProxyCardCallback(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PantanalCardConfigInfoManager"

    const-string v1, "unRegisterServiceProxyCardCallback:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->cardConfigCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1, p0}, Lcom/oplus/card/pantanal/application/IPantanalCardService;->unregisterCardConfigCallback(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->callbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
