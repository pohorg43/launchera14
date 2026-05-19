.class public final Lpantanal/content/gadget/GadgetConfigCenter;
.super Lpantanal/content/base/IServiceListCenter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpantanal/content/base/IServiceListCenter<",
        "Lpantanal/content/GadgetConfig;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGadgetConfigCenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GadgetConfigCenter.kt\npantanal/content/gadget/GadgetConfigCenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n766#2:109\n857#2,2:110\n1549#2:112\n1620#2,3:113\n*S KotlinDebug\n*F\n+ 1 GadgetConfigCenter.kt\npantanal/content/gadget/GadgetConfigCenter\n*L\n63#1:109\n63#1:110,2\n106#1:112\n106#1:113,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

.field private static final TAG:Ljava/lang/String; = "GadgetConfigCenter"

.field private static final observerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lpantanal/content/GadgetObserver;",
            "Lpantanal/content/ObserverWrapper<",
            "Lpantanal/content/GadgetConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/content/gadget/GadgetConfigCenter;

    invoke-direct {v0}, Lpantanal/content/gadget/GadgetConfigCenter;-><init>()V

    sput-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->observerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    new-instance v0, Lpantanal/content/gadget/GadgetDao;

    invoke-direct {v0}, Lpantanal/content/gadget/GadgetDao;-><init>()V

    invoke-direct {p0, v0}, Lpantanal/content/base/IServiceListCenter;-><init>(Lpantanal/content/base/IServiceDao;)V

    return-void
.end method

.method public static synthetic a(Lpantanal/content/GadgetObserver;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/content/gadget/GadgetConfigCenter;->register$lambda$0(Lpantanal/content/GadgetObserver;Ljava/util/List;)V

    return-void
.end method

.method private static final register$lambda$0(Lpantanal/content/GadgetObserver;Ljava/util/List;)V
    .registers 3

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lpantanal/content/GadgetObserver;->onListChanged(Ljava/util/List;)V

    return-void
.end method

.method private final registerConfigProperties(Landroid/content/Context;)V
    .registers 3

    sget-object p0, Lpantanal/content/gadget/ContextManager;->INSTANCE:Lpantanal/content/gadget/ContextManager;

    invoke-virtual {p0, p1}, Lpantanal/content/gadget/ContextManager;->register(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_14

    new-instance v0, Lpantanal/content/gadget/GadgetConfigCenter$registerConfigProperties$widgetConfigPropertiesObserver$1;

    invoke-direct {v0, p1}, Lpantanal/content/gadget/GadgetConfigCenter$registerConfigProperties$widgetConfigPropertiesObserver$1;-><init>([I)V

    invoke-virtual {p0, v0}, Lpantanal/content/gadget/ContextManager;->registerConfigProperties(Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;)V

    return-void

    :array_14
    .array-data 4
        0x1
        0x2
    .end array-data
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "GadgetConfigCenter"

    return-object p0
.end method

.method public getServiceIds(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/content/GadgetConfig;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/content/GadgetConfig;

    invoke-virtual {v0}, Lpantanal/content/GadgetConfig;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object p0
.end method

.method public bridge synthetic isContainValidSize(Ljava/lang/Object;Lpantanal/app/bean/Entrance;)Z
    .registers 3

    check-cast p1, Lpantanal/content/GadgetConfig;

    invoke-virtual {p0, p1, p2}, Lpantanal/content/gadget/GadgetConfigCenter;->isContainValidSize(Lpantanal/content/GadgetConfig;Lpantanal/app/bean/Entrance;)Z

    move-result p0

    return p0
.end method

.method public isContainValidSize(Lpantanal/content/GadgetConfig;Lpantanal/app/bean/Entrance;)Z
    .registers 3

    const-string p0, "entity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entrance"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lpantanal/content/GadgetConfig;->getSize()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public bridge synthetic isSupportEntrance(Ljava/lang/Object;I)Z
    .registers 3

    check-cast p1, Lpantanal/content/GadgetConfig;

    invoke-virtual {p0, p1, p2}, Lpantanal/content/gadget/GadgetConfigCenter;->isSupportEntrance(Lpantanal/content/GadgetConfig;I)Z

    move-result p0

    return p0
.end method

.method public isSupportEntrance(Lpantanal/content/GadgetConfig;I)Z
    .registers 6

    const-string p0, "entity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_26

    if-eq p2, v0, :cond_26

    const/16 v0, 0x40

    const/16 v2, 0x10

    if-eq p2, v2, :cond_19

    if-eq p2, v0, :cond_19

    invoke-virtual {p1, p2}, Lpantanal/content/GadgetConfig;->isSupportEntrance(I)Z

    move-result p0

    goto :goto_33

    :cond_19
    invoke-virtual {p1, v2}, Lpantanal/content/GadgetConfig;->isSupportEntrance(I)Z

    move-result p2

    if-nez p2, :cond_32

    invoke-virtual {p1, v0}, Lpantanal/content/GadgetConfig;->isSupportEntrance(I)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_32

    :cond_26
    invoke-virtual {p1, v1}, Lpantanal/content/GadgetConfig;->isSupportEntrance(I)Z

    move-result p2

    if-nez p2, :cond_32

    invoke-virtual {p1, v0}, Lpantanal/content/GadgetConfig;->isSupportEntrance(I)Z

    move-result p1

    if-eqz p1, :cond_33

    :cond_32
    :goto_32
    move p0, v1

    :cond_33
    :goto_33
    return p0
.end method

.method public final queryCurRecommendList(I)Ljava/util/List;
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/content/GadgetConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getServiceDao()Lpantanal/content/base/IServiceDao;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ly0/b;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lpantanal/content/base/IServiceDao;->getCurrentList$default(Lpantanal/content/base/IServiceDao;Ljava/util/Set;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lpantanal/content/GadgetConfig;

    sget-object v3, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    invoke-virtual {v3, v2, p1}, Lpantanal/content/gadget/GadgetConfigCenter;->isSupportEntrance(Lpantanal/content/GadgetConfig;I)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3a
    return-object v0
.end method

.method public final register(Landroid/content/Context;ILpantanal/content/GadgetObserver;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lv8/a;

    invoke-direct {v3, p3}, Lv8/a;-><init>(Lpantanal/content/GadgetObserver;)V

    sget-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->observerMap:Ljava/util/Map;

    invoke-interface {v0, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    invoke-static/range {v1 .. v6}, Lpantanal/content/base/IServiceListCenter;->register$default(Lpantanal/content/base/IServiceListCenter;ILpantanal/content/ObserverWrapper;IILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lpantanal/content/gadget/GadgetConfigCenter;->registerConfigProperties(Landroid/content/Context;)V

    return-void
.end method

.method public final unregister(Landroid/content/Context;ILpantanal/content/GadgetObserver;)V
    .registers 15

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "observer"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/content/gadget/ContextManager;->INSTANCE:Lpantanal/content/gadget/ContextManager;

    invoke-virtual {p0, p1}, Lpantanal/content/gadget/ContextManager;->unregister(Landroid/content/Context;)V

    sget-object p0, Lpantanal/content/gadget/GadgetConfigCenter;->observerMap:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lpantanal/content/ObserverWrapper;

    if-eqz v2, :cond_26

    sget-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p2

    invoke-static/range {v0 .. v5}, Lpantanal/content/base/IServiceListCenter;->unregister$default(Lpantanal/content/base/IServiceListCenter;ILpantanal/content/ObserverWrapper;IILjava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    if-nez p0, :cond_4a

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unregister failed, cannot find observerWrapper from observerMap, observer from entrance:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GadgetConfigCenter"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4a
    return-void
.end method
