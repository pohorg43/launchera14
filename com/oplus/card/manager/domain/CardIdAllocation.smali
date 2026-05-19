.class public final Lcom/oplus/card/manager/domain/CardIdAllocation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/CardIdAllocation$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardIdAllocation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardIdAllocation.kt\ncom/oplus/card/manager/domain/CardIdAllocation\n+ 2 GlobalDI.kt\ncom/oplus/card/di/GlobalDI\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n42#2,4:160\n1855#3,2:164\n1855#3,2:167\n1855#3,2:169\n1855#3,2:171\n1#4:166\n*S KotlinDebug\n*F\n+ 1 CardIdAllocation.kt\ncom/oplus/card/manager/domain/CardIdAllocation\n*L\n33#1:160,4\n122#1:164,2\n138#1:167,2\n144#1:169,2\n149#1:171,2\n*E\n"
    }
.end annotation


# static fields
.field private static final BASE_CARD_ID:I = 0xf4240

.field public static final Companion:Lcom/oplus/card/manager/domain/CardIdAllocation$Companion;

.field private static final TAG:Ljava/lang/String; = "CardIdPolicy"


# instance fields
.field private final cardIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cardIdRepository$delegate:Lh4/f;

.field private final coroutineScope:Lm7/j0;

.field private final finishList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private hasInit:Z

.field private final pendingAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/manager/domain/CardIdAllocation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/CardIdAllocation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/CardIdAllocation;->Companion:Lcom/oplus/card/manager/domain/CardIdAllocation$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/oplus/card/manager/domain/CardIdAllocation;-><init>(Lm7/j0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lm7/j0;)V
    .registers 9

    const-class v0, Lcom/oplus/card/manager/domain/ICardIdRepository;

    const-string v1, "coroutineScope"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->coroutineScope:Lm7/j0;

    sget-object v1, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {v1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lh4/f;

    iput-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdRepository$delegate:Lh4/f;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->pendingAction:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->finishList:Ljava/util/List;

    const/4 v2, 0x0

    new-instance v4, Lcom/oplus/card/manager/domain/CardIdAllocation$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/oplus/card/manager/domain/CardIdAllocation$1;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;Ll4/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void

    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the class are not injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lm7/j0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lcom/oplus/card/util/CardScope;->INSTANCE:Lcom/oplus/card/util/CardScope;

    :cond_6
    invoke-direct {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;-><init>(Lm7/j0;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->saveCardIds$lambda$0(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getCardIdRepository(Lcom/oplus/card/manager/domain/CardIdAllocation;)Lcom/oplus/card/manager/domain/ICardIdRepository;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/CardIdAllocation;->getCardIdRepository()Lcom/oplus/card/manager/domain/ICardIdRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initCardIdMap(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->initCardIdMap(Ljava/util/List;)V

    return-void
.end method

.method private final addCardId(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCardIdRepository()Lcom/oplus/card/manager/domain/ICardIdRepository;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdRepository$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/ICardIdRepository;

    return-object p0
.end method

.method private final initCardIdMap(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/oplus/card/manager/domain/CardIdAllocation;->addCardId(II)V

    goto :goto_4

    :cond_1c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->hasInit:Z

    iget-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->pendingAction:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_25

    :cond_35
    iget-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->pendingAction:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->finishList:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_40

    :cond_50
    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->finishList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static final saveCardIds$lambda$0(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cardIdInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->saveCardIds(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final allocateCardId(I)I
    .registers 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "allocateCardId: "

    const-string v1, "Card"

    const-string v2, "CardIdPolicy"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->hasInit:Z

    if-nez v0, :cond_23

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allocateCardId, cardIdMap is not init: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_23
    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    const v2, 0xf4240

    if-eqz v0, :cond_69

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_46

    move-object v3, v1

    goto :goto_60

    :cond_46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4c

    move-object v3, v4

    goto :goto_4c

    :cond_60
    :goto_60
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_69

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6a

    :cond_69
    move v0, v2

    :goto_6a
    if-ge v0, v2, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v0

    :goto_6e
    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->addCardId(II)V

    iget-object v3, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->coroutineScope:Lm7/j0;

    const/4 v4, 0x0

    new-instance v6, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;

    invoke-direct {v6, p0, p1, v2, v1}, Lcom/oplus/card/manager/domain/CardIdAllocation$allocateCardId$1;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;IILl4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return v2
.end method

.method public final deleteCardId(II)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/card/cache/CardCache;->removeCardCache(II)V

    return-void
.end method

.method public final deleteInstantCardId(II)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/card/cache/CardCache;->removeInstantCardCache(II)V

    return-void
.end method

.method public final monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V
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

    iget-boolean v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->hasInit:Z

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_12

    :cond_d
    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->finishList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    return-void
.end method

.method public final saveCardIds(Ljava/util/List;)V
    .registers 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->hasInit:Z

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCardIds, cardIdMap is not init: cardIdInfos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "CardIdPolicy"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->pendingAction:Ljava/util/List;

    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/model/CardIdInfo;

    iget-object v2, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_66

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_66

    goto :goto_67

    :cond_66
    move v3, v4

    :goto_67
    if-nez v3, :cond_37

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardIdInfo;->getCardId()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->addCardId(II)V

    goto :goto_37

    :cond_75
    iget-object v3, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->coroutineScope:Lm7/j0;

    const/4 v4, 0x0

    new-instance v6, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;Ll4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final useCardId(II)V
    .registers 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->cardIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_2f

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation;->addCardId(II)V

    iget-object v2, p0, Lcom/oplus/card/manager/domain/CardIdAllocation;->coroutineScope:Lm7/j0;

    const/4 v3, 0x0

    new-instance v5, Lcom/oplus/card/manager/domain/CardIdAllocation$useCardId$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/oplus/card/manager/domain/CardIdAllocation$useCardId$1;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;IILl4/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_2f
    return-void
.end method
