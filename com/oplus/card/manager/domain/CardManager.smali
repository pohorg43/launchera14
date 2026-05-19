.class public final Lcom/oplus/card/manager/domain/CardManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/ICardManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;,
        Lcom/oplus/card/manager/domain/CardManager$Companion;,
        Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardManager.kt\ncom/oplus/card/manager/domain/CardManager\n+ 2 GlobalDI.kt\ncom/oplus/card/di/GlobalDI\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,488:1\n42#2,4:489\n42#2,4:493\n1855#3,2:497\n1855#3:499\n1855#3,2:500\n1856#3:502\n1855#3,2:503\n1855#3,2:505\n*S KotlinDebug\n*F\n+ 1 CardManager.kt\ncom/oplus/card/manager/domain/CardManager\n*L\n63#1:489,4\n74#1:493,4\n294#1:497,2\n306#1:499\n307#1:500,2\n306#1:502\n331#1:503,2\n338#1:505,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

.field private static final NOTIFY_CARD_CONFIG_CHANGE_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "CardManager"

.field private static final instance:Lcom/oplus/card/manager/domain/CardManager;


# instance fields
.field private final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cardConfigInfoManager$delegate:Lh4/f;

.field private cardConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

.field private final cardListChangeCB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final cardModelList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private createWithEmptyConfig:Z

.field private final innerConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

.field private final pantanalCardService$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/CardManager;->instance:Lcom/oplus/card/manager/domain/CardManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/card/manager/domain/CardIdAllocation;)V
    .registers 7

    const-class v0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    const-class v1, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    const-string v2, "cardIdAllocation"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    sget-object p1, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "the class are not injected"

    if-eqz v2, :cond_8e

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lh4/f;

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigInfoManager$delegate:Lh4/f;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    new-instance v1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/card/manager/domain/CardManager;)V

    iput-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lh4/f;

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager;->pantanalCardService$delegate:Lh4/f;

    return-void

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/manager/domain/CardIdAllocation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_a

    new-instance p1, Lcom/oplus/card/manager/domain/CardIdAllocation;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;-><init>(Lm7/j0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/manager/domain/CardManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable$lambda$0(Lcom/oplus/card/manager/domain/CardManager;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/oplus/card/manager/domain/CardManager;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->instance:Lcom/oplus/card/manager/domain/CardManager;

    return-object v0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->removeModel$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->removeModel$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;III)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    if-ne v1, p2, :cond_25

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    if-ne v1, p3, :cond_25

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result v0

    if-ne v0, p4, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_4

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    return-object p1
.end method

.method public static final getInstance()Lcom/oplus/card/manager/domain/CardManager;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    return-object v0
.end method

.method private final getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->pantanalCardService$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    return-object p0
.end method

.method private final isEnableCache(Lpantanal/app/Card;Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 4

    instance-of p0, p1, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    iget-object p0, p2, Lcom/android/launcher3/card/LauncherCardInfo;->groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lpantanal/app/groupcard/GroupCardInfo;->getGroupChildCardDataInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    if-ne p0, v0, :cond_19

    move p0, v0

    goto :goto_1a

    :cond_19
    move p0, p1

    :goto_1a
    if-eqz p0, :cond_1d

    move p1, v0

    :cond_1d
    return p1
.end method

.method private final notifyCardConfigChangeIfNeed(Lcom/oplus/card/config/domain/model/CardConfigInfo;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->notifyCardConfigChange$OplusLauncher_RealmePallExportAallRelease(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private static final notifyCardConfigChangeRunnable$lambda$0(Lcom/oplus/card/manager/domain/CardManager;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigListChange()V

    return-void
.end method

.method private final notifyCardConfigListChange()V
    .registers 3

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "notifyCardConfigListChange"

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->checkInvalidAndNoPermissionCard()V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;->onListChange()V

    goto :goto_33

    :cond_43
    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private final removeModel(Ljava/util/Set;III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;III)Z"
        }
    .end annotation

    new-instance p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/card/manager/domain/CardManager$removeModel$1;-><init>(III)V

    new-instance p2, Lcom/android/launcher/folder/download/b;

    const/16 p3, 0xa

    invoke-direct {p2, p0, p3}, Lcom/android/launcher/folder/download/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, p2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private final removeModel(Ljava/util/Set;Lpantanal/app/Card;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            ">;",
            "Lpantanal/app/Card;",
            ")Z"
        }
    .end annotation

    new-instance p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$2;

    invoke-direct {p0, p2}, Lcom/oplus/card/manager/domain/CardManager$removeModel$2;-><init>(Lpantanal/app/Card;)V

    new-instance p2, Lcom/android/launcher/folder/download/model/c;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0}, Lcom/android/launcher/folder/download/model/c;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, p2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static final removeModel$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeModel$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public allocateCardId(I)I
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->allocateCardId(I)I

    move-result p0

    return p0
.end method

.method public final clearCardModels()V
    .registers 3

    const-string v0, "clearCardModels: cardModelList = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public createCard(IIILcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 21
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v1, p5

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    const-string v6, "reuseTask"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCard: type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cardId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", hostId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", seedParams = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "LauncherCard"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v6, p1, p2, v4}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v6

    if-eqz v6, :cond_64

    invoke-virtual {v6}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v10

    if-nez v10, :cond_59

    const-string v6, "createCard: cardModel.card from cardModelList is null, try to recreate it"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v6, p1, p2, v4}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    goto :goto_64

    :cond_59
    const-string v0, "createCard: The card already exists. Return"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_64
    :goto_64
    const/4 v6, 0x1

    if-ne v4, v6, :cond_6c

    iget-object v10, v0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {v10, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->useCardId(II)V

    :cond_6c
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v10

    invoke-interface {v10, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v10

    if-nez v10, :cond_82

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result v11

    if-lez v11, :cond_82

    iput-boolean v6, v0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    :cond_82
    if-eqz v5, :cond_9b

    if-eqz v1, :cond_9b

    instance-of v6, v1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v6, :cond_9b

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;

    move-result-object v6

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    invoke-interface {v6, v5, v1, v11, v12}, Lcom/oplus/card/pantanal/application/IPantanalCardService;->createCard(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Landroid/os/Bundle;Z)Lpantanal/app/Card;

    move-result-object v1

    goto :goto_9c

    :cond_9b
    const/4 v1, 0x0

    :goto_9c
    move-object v11, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCard: pantanalCard = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/oplus/card/manager/domain/model/CardModel;

    move-object v1, v12

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object v5, v10

    move-object/from16 v6, p4

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/oplus/card/manager/domain/model/CardModel;-><init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lpantanal/app/Card;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v12, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v1

    if-eqz v1, :cond_d4

    iget-object v0, v0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    :cond_d4
    const-string v0, "createCard, CardPermission disallowed."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    return-object v12
.end method

.method public createCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 16
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reuseTask"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v3, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v4, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iget-object v6, p1, Lcom/android/launcher3/card/LauncherCardInfo;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    const-string v0, "createCard: isGroupCard = "

    const-string v1, " type = "

    const-string v5, ", cardId = "

    invoke-static {v0, p3, v1, v2, v5}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", hostId = "

    const-string v7, ", seedParams = "

    invoke-static {v1, v3, v5, v4, v7}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "LauncherCard"

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v5

    if-eqz v5, :cond_69

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v5

    instance-of v5, v5, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    if-eqz v5, :cond_4c

    goto :goto_69

    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " The card already exists. Return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_69
    :goto_69
    const-string v5, " cardModel.card: "

    invoke-static {v0, p3, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from cardModelList , need to recreate it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    :cond_87
    const/4 v0, 0x1

    if-ne v4, v0, :cond_8f

    iget-object v1, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/card/manager/domain/CardIdAllocation;->useCardId(II)V

    :cond_8f
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v5

    if-nez v5, :cond_a5

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result v1

    if-lez v1, :cond_a5

    iput-boolean v0, p0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    :cond_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCard start isGroupCard = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-eqz p2, :cond_cf

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardManager;->getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;

    move-result-object v1

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, p2, p1, v10, p3}, Lcom/oplus/card/pantanal/application/IPantanalCardService;->createCard(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Landroid/os/Bundle;Z)Lpantanal/app/Card;

    move-result-object p2

    goto :goto_d0

    :cond_cf
    move-object p2, v9

    :goto_d0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCard end isGroupCard = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/oplus/card/manager/domain/model/CardModel;

    move-object v1, v10

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oplus/card/manager/domain/model/CardModel;-><init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lpantanal/app/Card;)V

    if-eqz p3, :cond_117

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p3

    if-eqz p3, :cond_100

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p3

    if-eqz p3, :cond_100

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v9

    :cond_100
    const/4 p3, 0x0

    if-eqz v9, :cond_10a

    invoke-virtual {v9}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    if-ne v1, v0, :cond_10a

    goto :goto_10b

    :cond_10a
    move v0, p3

    :goto_10b
    if-eqz v0, :cond_117

    const-string p3, "CardManager"

    const-string v0, "createCard launcher onResume cardModel.onShow()"

    invoke-static {p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/oplus/card/manager/domain/model/CardModel;->onShow()V

    :cond_117
    invoke-direct {p0, p2, p1}, Lcom/oplus/card/manager/domain/CardManager;->isEnableCache(Lpantanal/app/Card;Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p4, v10, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createCard: Card = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isEnableCache = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-eqz p1, :cond_14e

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {p0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_14e
    const-string p0, "createCard, CardPermission disallowed."

    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_153
    return-object v10
.end method

.method public deleteCardId(III)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->isQuickAppCard(I)Z

    move-result p3

    if-eqz p3, :cond_f

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->deleteInstantCardId(II)V

    goto :goto_14

    :cond_f
    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->deleteCardId(II)V

    :cond_14
    :goto_14
    return-void
.end method

.method public destroyCard(III)V
    .registers 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "destroyCard: type = "

    const-string v2, ", cardId = "

    const-string v3, ", hostId = "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    return-void
.end method

.method public final destroyCard(Lpantanal/app/Card;)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyCard: card = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", card.getView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;Lpantanal/app/Card;)Z

    return-void
.end method

.method public final getAllCardConfigList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/domain/CardManager$getAllCardConfigList$1;

    invoke-direct {v1, p0}, Lcom/oplus/card/manager/domain/CardManager$getAllCardConfigList$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getAllConfigListForShop(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    return-object p0
.end method

.method public final getAllConfigListForShop(Ljava/util/List;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardConfigInfoManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    return-object p0
.end method

.method public final getCardMinWidthAndHeightInfo(ILandroid/content/Context;)Landroid/graphics/Point;
    .registers 4

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0, p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinWidthAndHeight(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final getCreateWithEmptyConfig()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    return p0
.end method

.method public final getInnerConfigMap()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->innerConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSeedCardConfigInfo(Lpantanal/decision/ServiceInfo;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 4

    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-virtual {p1}, Lpantanal/decision/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lpantanal/decision/ServiceInfo;->getChannelType()I

    move-result p1

    invoke-interface {p0, v0, p1, p2}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getSeedCardConfig(Ljava/lang/String;II)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    return-object p0
.end method

.method public getShowingTypes()Ljava/util/Set;
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public final initCardGroupSDK()V
    .registers 4

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    :cond_f
    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lpantanal/app/bean/Entrance;->LAUNCHER:Lpantanal/app/bean/Entrance;

    new-instance v2, Lcom/oplus/card/manager/domain/CardManager$initCardGroupSDK$1;

    invoke-direct {v2}, Lcom/oplus/card/manager/domain/CardManager$initCardGroupSDK$1;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lpantanal/app/groupcard/CardGroupSdk;->init(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V

    return-void
.end method

.method public final isCardAvailable(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDisplayArea()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->isLauncherCardDisplayArea(I)Z

    move-result p0

    return p0
.end method

.method public final isCardConfigListInit()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->isCardConfigListInit()Z

    move-result p0

    return p0
.end method

.method public final isCardModeCreate(III)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isCardSettingOptionEnable(I)Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return p1

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSettingUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_17

    const/4 p1, 0x1

    :cond_17
    return p1
.end method

.method public final isLauncherCardDisplayArea(I)Z
    .registers 2

    if-eqz p1, :cond_9

    const/4 p0, 0x2

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public final isQuickAppCard(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    return p1
.end method

.method public final isSeedlingCard(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method public final isSeedlingCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 2

    const-string p0, "configInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/16 p1, 0x64

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "finish"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onCardConfigChange(Ljava/util/List;)V
    .registers 65
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "list"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v3, "CardManager onCardConfigChange list.size:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, v0, Lcom/oplus/card/manager/domain/CardManager;->notifyCardConfigChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_129

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iget-object v3, v0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_4b
    :goto_4b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v4

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v5

    if-ne v4, v5, :cond_4b

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v33

    if-eqz v33, :cond_a5

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const v60, 0x3fffeff

    const/16 v61, 0x0

    invoke-static/range {v33 .. v61}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->copy$default(Lcom/oplus/card/config/domain/model/CardConfigInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v4

    goto :goto_a6

    :cond_a5
    const/4 v4, 0x0

    :goto_a6
    move-object v15, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v62, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x3fffeff

    const/16 v31, 0x0

    move-object/from16 p1, v3

    move-object v3, v2

    invoke-static/range {v3 .. v31}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->copy$default(Lcom/oplus/card/config/domain/model/CardConfigInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v3

    move-object/from16 v4, v62

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10a

    sget-object v3, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v4, "onCardConfigChange notifyCardConfigChange old:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/oplus/card/manager/domain/model/CardModel;->notifyCardConfigChange$OplusLauncher_RealmePallExportAallRelease(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    goto :goto_10c

    :cond_10a
    move-object/from16 v3, p1

    :goto_10c
    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_11e

    invoke-virtual {v4}, Lcom/android/launcher3/card/seed/SeedParams;->getCategory()I

    move-result v4

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v6

    if-ne v4, v6, :cond_11e

    const/4 v5, 0x1

    :cond_11e
    if-nez v5, :cond_4b

    invoke-virtual {v2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/card/manager/domain/model/CardModel;->saveCardCategory2DB(I)V

    goto/16 :goto_4b

    :cond_129
    return-void
.end method

.method public final reCreateCard(Landroid/content/Context;IIILcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/oplus/card/manager/domain/model/CardModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)",
            "Lcom/oplus/card/manager/domain/model/CardModel;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reuseTask"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "reCreateCard: type = "

    const-string v2, ", cardId = "

    const-string v3, ", hostId = "

    invoke-static {v1, p2, v2, p3, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/oplus/card/manager/domain/CardManager;->findModel(Ljava/util/Set;III)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardModelList:Ljava/util/Set;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;III)Z

    :cond_32
    new-instance v5, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v5, p5}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p1

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/card/manager/domain/CardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    return-object p0
.end method

.method public final reFetchCardList(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->isCardConfigListInit()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->unRegisterCardCallback(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->registerCardCallback(Landroid/content/Context;)V

    const-string p0, "LauncherCard"

    const-string p1, " reFetchCardList "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerCardCallback(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->loadSeedlingPlugin(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->registerServiceProxyCardCallback(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p1

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager$registerCardCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/card/manager/domain/CardManager$registerCardCallback$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public registerChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final removeCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardListChangeCB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final requestPullConfig()V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result p0

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    sget-object v1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPullConfig cardConfigMapSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isPermissionAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    if-nez p0, :cond_3f

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p0

    if-eqz p0, :cond_3f

    const-string p0, "requestPullConfig registerCardCallback"

    invoke-virtual {v1, p0}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public saveCardInfos(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardIdInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->cardIdAllocation:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->saveCardIds(Ljava/util/List;)V

    return-void
.end method

.method public final setCreateWithEmptyConfig(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/CardManager;->createWithEmptyConfig:Z

    return-void
.end method

.method public final unRegisterCardCallback(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->unRegisterServiceProxyCardCallback(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p1

    new-instance v0, Lcom/oplus/card/manager/domain/CardManager$unRegisterCardCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/card/manager/domain/CardManager$unRegisterCardCallback$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public unregisterChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager;->callbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
