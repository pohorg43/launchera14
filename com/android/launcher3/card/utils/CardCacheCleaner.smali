.class public final Lcom/android/launcher3/card/utils/CardCacheCleaner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardCacheCleaner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardCacheCleaner.kt\ncom/android/launcher3/card/utils/CardCacheCleaner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,152:1\n1855#2,2:153\n1855#2,2:155\n1855#2,2:161\n1549#2:163\n1620#2,3:164\n1855#2,2:167\n125#3:157\n152#3,3:158\n*S KotlinDebug\n*F\n+ 1 CardCacheCleaner.kt\ncom/android/launcher3/card/utils/CardCacheCleaner\n*L\n70#1:153,2\n73#1:155,2\n82#1:161,2\n94#1:163\n94#1:164,3\n94#1:167,2\n81#1:157\n81#1:158,3\n*E\n"
    }
.end annotation


# static fields
.field private static final AVOID_ANIM_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/launcher3/card/utils/CardCacheCleaner;

.field private static final INVALID_MAX_COUNT:I = 0x1e

.field private static final PARENT_MAX_LEVEL:I = 0x5

.field private static final RELEASE_DELAY:J = 0x3e8L

.field private static final RELEASE_RETRY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CardCacheCleaner"

.field private static final mCleaners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lpantanal/app/Card;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingReleaseCards:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lpantanal/app/Card;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;

    invoke-direct {v0}, Lcom/android/launcher3/card/utils/CardCacheCleaner;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->INSTANCE:Lcom/android/launcher3/card/utils/CardCacheCleaner;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->AVOID_ANIM_TYPES:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->pendingReleaseCards:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearLeakCard(Lcom/android/launcher3/card/utils/CardCacheCleaner;Lpantanal/app/Card;ILl4/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->clearLeakCard(Lpantanal/app/Card;ILl4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAVOID_ANIM_TYPES$p()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->AVOID_ANIM_TYPES:Ljava/util/List;

    return-object v0
.end method

.method public static final checkAndClearLeakCards()V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Li4/i0;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v2, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Lpantanal/app/Card;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/Card;

    sget-object v2, Lcom/android/launcher3/card/utils/CardCacheCleaner;->pendingReleaseCards:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_48

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_48
    const-string/jumbo v4, "pendingReleaseCards[it] ?: 0"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/launcher3/card/utils/CardCacheCleaner;->INSTANCE:Lcom/android/launcher3/card/utils/CardCacheCleaner;

    invoke-direct {v4, v1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->checkIsValidCard(Lpantanal/app/Card;)Z

    move-result v4

    if-nez v4, :cond_5d

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_5d
    add-int/lit8 v3, v3, -0x1

    :goto_5f
    if-gez v3, :cond_65

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_65
    const/16 v4, 0x1e

    if-le v3, v4, :cond_81

    sget-object v3, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lm7/l1;->a:Lm7/l1;

    const/4 v5, 0x0

    new-instance v7, Lcom/android/launcher3/card/utils/CardCacheCleaner$checkAndClearLeakCards$2$1;

    const/4 v3, 0x0

    invoke-direct {v7, v1, v3}, Lcom/android/launcher3/card/utils/CardCacheCleaner$checkAndClearLeakCards$2$1;-><init>(Lpantanal/app/Card;Ll4/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto :goto_88

    :cond_81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndClearLeakCards--------, pendingReleaseCards: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardCacheCleaner"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_9f
    return-void
.end method

.method private final checkIsValidCard(Lpantanal/app/Card;)Z
    .registers 3

    invoke-interface {p1}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->hasValidParents(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static final clearAllCard()V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clearAllCard "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CardCacheCleaner"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpantanal/app/Card;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3f
    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/Card;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAllCard, card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", card.getView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lpantanal/app/ILifecycle;->onDestroy()V

    invoke-interface {v1}, Lpantanal/app/IPantanalService;->release()V

    sget-object v3, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oplus/card/manager/domain/CardManager;->destroyCard(Lpantanal/app/Card;)V

    goto :goto_47

    :cond_83
    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->pendingReleaseCards:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private final clearLeakCard(Lpantanal/app/Card;ILl4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/Card;",
            "I",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lm7/y0;->b:Lm7/f0;

    new-instance v0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;-><init>(ILpantanal/app/Card;Ll4/d;)V

    invoke-static {p0, v0, p3}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_11

    return-object p0

    :cond_11
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public static synthetic clearLeakCard$default(Lcom/android/launcher3/card/utils/CardCacheCleaner;Lpantanal/app/Card;ILl4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const/16 p2, 0xa

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->clearLeakCard(Lpantanal/app/Card;ILl4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "prefix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CardCacheCleaner, register list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Li4/i0;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tcard -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    :cond_4e
    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->pendingReleaseCards:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Li4/i0;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tpendingReleaseCard -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    :cond_7c
    return-void
.end method

.method private final hasValidParents(Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_29

    const/4 v1, 0x5

    if-lt p2, v1, :cond_e

    goto :goto_29

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v1, :cond_17

    return v0

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_22

    check-cast p1, Landroid/view/View;

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->hasValidParents(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return p0
.end method

.method public static final register(Lpantanal/app/Card;I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register, card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", card.getView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCacheCleaner"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final unregister(Lpantanal/app/Card;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister, card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", card.getView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/launcher3/card/utils/CardCacheCleaner;->mCleaners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CardCacheCleaner"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
