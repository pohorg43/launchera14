.class public final Lpantanal/content/ContentManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/content/ContentManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/content/ContentManagerImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContentManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentManagerImpl.kt\npantanal/content/ContentManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n223#2,2:116\n1549#2:118\n1620#2,3:119\n*S KotlinDebug\n*F\n+ 1 ContentManagerImpl.kt\npantanal/content/ContentManagerImpl\n*L\n82#1:116,2\n95#1:118\n95#1:119,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/content/ContentManagerImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "ContentManager"


# instance fields
.field private final contextProxy:Lw8/a;

.field private final entrance:Lpantanal/app/bean/Entrance;

.field private final mCardConfigProxy:Lpantanal/content/card/CardConfigProxy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/content/ContentManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/content/ContentManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/content/ContentManagerImpl;->Companion:Lpantanal/content/ContentManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lw8/a;I)V
    .registers 4

    const-string v0, "contextProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v0, p2}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lpantanal/content/ContentManagerImpl;-><init>(Lw8/a;Lpantanal/app/bean/Entrance;)V

    return-void
.end method

.method public constructor <init>(Lw8/a;Lpantanal/app/bean/Entrance;)V
    .registers 4

    const-string v0, "contextProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entrance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/content/ContentManagerImpl;->contextProxy:Lw8/a;

    iput-object p2, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v0, Lpantanal/content/card/CardConfigProxy;

    invoke-direct {v0, p1, p2}, Lpantanal/content/card/CardConfigProxy;-><init>(Lw8/a;Lpantanal/app/bean/Entrance;)V

    iput-object v0, p0, Lpantanal/content/ContentManagerImpl;->mCardConfigProxy:Lpantanal/content/card/CardConfigProxy;

    return-void
.end method

.method private final toSeedlingSdkBean(Lcom/pantanal/server/content/domail/FluidCloudInfo;)Lpantanal/decision/FluidCloudInfo;
    .registers 10

    new-instance p0, Lpantanal/decision/FluidCloudInfo;

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getSupportEntry()I

    move-result v2

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getServiceType()I

    move-result v3

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getCloseEntry()I

    move-result v6

    invoke-virtual {p1}, Lcom/pantanal/server/content/domail/FluidCloudInfo;->getServiceSwitch()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lpantanal/decision/FluidCloudInfo;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    return-object p0
.end method


# virtual methods
.method public getCardConfig(I)Lpantanal/app/bean/CardConfigInfo;
    .registers 14

    iget-object v0, p0, Lpantanal/content/ContentManagerImpl;->mCardConfigProxy:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {v0, p1}, Lpantanal/content/card/CardConfigProxy;->getCardConfig(I)Lpantanal/app/bean/CardConfigInfo;

    move-result-object v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " getCardConfig,cardType = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",result cardConfig ="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ContentManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public getCardConfigsByServiceId(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->mCardConfigProxy:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {p0, p1}, Lpantanal/content/card/CardConfigProxy;->getCardConfigsByServiceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGadgetConfig(Ljava/lang/String;)Lpantanal/content/GadgetConfig;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p0

    invoke-virtual {v0, p0}, Lpantanal/content/gadget/GadgetConfigCenter;->queryCurRecommendList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/content/GadgetConfig;

    invoke-virtual {v0}, Lpantanal/content/GadgetConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    :cond_2c
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryFluidCloud(Ljava/lang/String;)Lpantanal/decision/FluidCloudInfo;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "serviceId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le3/a;->c:Le3/a$a;

    invoke-virtual {v3}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    iget-object v3, v0, Lpantanal/content/ContentManagerImpl;->contextProxy:Lw8/a;

    iget-object v3, v3, Lw8/a;->b:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lb3/a;->a:Lb3/a;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "queryFluidCloud serviceId : "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SeedlingServiceHelper"

    invoke-static {v4, v2}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Lb3/a;->queryFluidClouds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_41

    :cond_3f
    move v4, v3

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v4, 0x1

    :goto_42
    const/4 v5, 0x0

    if-eqz v4, :cond_47

    move-object v2, v5

    goto :goto_4d

    :cond_47
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantanal/server/content/domail/FluidCloudInfo;

    :goto_4d
    if-eqz v2, :cond_53

    invoke-direct {v0, v2}, Lpantanal/content/ContentManagerImpl;->toSeedlingSdkBean(Lcom/pantanal/server/content/domail/FluidCloudInfo;)Lpantanal/decision/FluidCloudInfo;

    move-result-object v5

    :cond_53
    iget-object v0, v0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " queryFluidCloud, serviceId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , fluidCloudInfo = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "ContentManager"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v5
.end method

.method public queryFluidClouds(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lpantanal/decision/FluidCloudInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    iget-object v1, p0, Lpantanal/content/ContentManagerImpl;->contextProxy:Lw8/a;

    iget-object v1, v1, Lw8/a;->b:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb3/a;->a:Lb3/a;

    invoke-virtual {v0, v1, p1}, Lb3/a;->queryFluidClouds(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantanal/server/content/domail/FluidCloudInfo;

    invoke-direct {p0, v1}, Lpantanal/content/ContentManagerImpl;->toSeedlingSdkBean(Lcom/pantanal/server/content/domail/FluidCloudInfo;)Lpantanal/decision/FluidCloudInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_41
    const/4 v0, 0x0

    :cond_42
    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entrance:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", queryFluidClouds, fluidCloudList = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "ContentManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 14
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

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", begin to registerCardConfigCallback"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ContentManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/f;->a(I)Lz8/b;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v0, v1}, Lz8/b;->l(Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->mCardConfigProxy:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {p0, p1}, Lpantanal/content/card/CardConfigProxy;->registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public registerGadgetConfigCallback(Lpantanal/content/GadgetObserver;)V
    .registers 14

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", begin to registerGadgetConfigCallback"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ContentManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    iget-object v1, p0, Lpantanal/content/ContentManagerImpl;->contextProxy:Lw8/a;

    iget-object v1, v1, Lw8/a;->b:Landroid/content/Context;

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p0

    invoke-virtual {v0, v1, p0, p1}, Lpantanal/content/gadget/GadgetConfigCenter;->register(Landroid/content/Context;ILpantanal/content/GadgetObserver;)V

    return-void
.end method

.method public unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 14
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

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", begin to unregisterCardConfigCallback"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ContentManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->mCardConfigProxy:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {p0, p1}, Lpantanal/content/card/CardConfigProxy;->unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public unregisterGadgetConfigCallback(Lpantanal/content/GadgetObserver;)V
    .registers 14

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", begin to unregisterGadgetConfigCallback"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "ContentManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/content/gadget/GadgetConfigCenter;->INSTANCE:Lpantanal/content/gadget/GadgetConfigCenter;

    iget-object v1, p0, Lpantanal/content/ContentManagerImpl;->contextProxy:Lw8/a;

    iget-object v1, v1, Lw8/a;->b:Landroid/content/Context;

    iget-object p0, p0, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p0

    invoke-virtual {v0, v1, p0, p1}, Lpantanal/content/gadget/GadgetConfigCenter;->unregister(Landroid/content/Context;ILpantanal/content/GadgetObserver;)V

    return-void
.end method

.method public updateFluidCloud(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)J
    .registers 27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "serviceId"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le3/a;->c:Le3/a$a;

    invoke-virtual {v4}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lb3/a;->a:Lb3/a;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_22

    move v5, v6

    goto :goto_23

    :cond_22
    move v5, v7

    :goto_23
    const-string v8, "SeedlingServiceHelper"

    const/4 v9, 0x0

    if-eqz v5, :cond_2e

    const-string v0, "content values serviceid not empty"

    invoke-static {v8, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_2e
    if-nez v2, :cond_38

    if-nez v3, :cond_38

    const-string v0, "content values closeEntry serviceSwitch is null"

    invoke-static {v8, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_38
    if-eqz v2, :cond_42

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_42

    move v5, v6

    goto :goto_43

    :cond_42
    move v5, v7

    :goto_43
    if-nez v5, :cond_76

    if-eqz v3, :cond_4e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_4e

    goto :goto_4f

    :cond_4e
    move v6, v7

    :goto_4f
    if-eqz v6, :cond_52

    goto :goto_76

    :cond_52
    const/4 v5, -0x1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_68

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_68

    const-string v0, "closeEntry"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_68
    if-eqz v3, :cond_7c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_7c

    const-string v0, "serviceSwitch"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_7c

    :cond_76
    :goto_76
    const-string v0, "check fluid cloud param fail"

    invoke-static {v8, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7b
    move-object v6, v9

    :cond_7c
    :goto_7c
    const-wide/16 v10, -0x1

    if-nez v6, :cond_87

    const-string v0, "please check the param"

    invoke-static {v8, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fe

    :cond_87
    :try_start_87
    invoke-virtual {v4}, Le3/a$a;->b()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    if-nez v0, :cond_8e

    goto :goto_a4

    :cond_8e
    const-string v5, "update fluid cloud get IUserContext"

    invoke-static {v8, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lb3/a;->f:Landroid/net/Uri;

    const-string v7, "UMS_INSERT_ADVICE_URI"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lk3/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_a2
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_a2} :catch_e8

    if-nez v7, :cond_a7

    :goto_a4
    move-object v0, v9

    move-object v5, v0

    goto :goto_b0

    :cond_a7
    :try_start_a7
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_df

    :try_start_ab
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_ad
    .catchall {:try_start_ab .. :try_end_ad} :catchall_db

    :try_start_ad
    invoke-static {v7, v9}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_b0
    if-nez v0, :cond_f7

    invoke-virtual {v4}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lb3/a;->f:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_c0
    .catch Ljava/lang/SecurityException; {:try_start_ad .. :try_end_c0} :catch_d9

    if-nez v7, :cond_c3

    goto :goto_f7

    :cond_c3
    :try_start_c3
    const-string v0, "update fluid cloud get Context"

    invoke-static {v8, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_d0

    :try_start_cc
    invoke-static {v7, v9}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_cf
    .catch Ljava/lang/SecurityException; {:try_start_cc .. :try_end_cf} :catch_d9

    goto :goto_f7

    :catchall_d0
    move-exception v0

    move-object v4, v0

    :try_start_d2
    throw v4
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    :catchall_d3
    move-exception v0

    move-object v6, v0

    :try_start_d5
    invoke-static {v7, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_d9
    .catch Ljava/lang/SecurityException; {:try_start_d5 .. :try_end_d9} :catch_d9

    :catch_d9
    move-exception v0

    goto :goto_ea

    :catchall_db
    move-exception v0

    move-object v4, v0

    move-object v9, v5

    goto :goto_e1

    :catchall_df
    move-exception v0

    move-object v4, v0

    :goto_e1
    :try_start_e1
    throw v4
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception v0

    move-object v5, v0

    :try_start_e4
    invoke-static {v7, v4}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e8
    .catch Ljava/lang/SecurityException; {:try_start_e4 .. :try_end_e8} :catch_e8

    :catch_e8
    move-exception v0

    move-object v5, v9

    :goto_ea
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "update fluid cloud SecurityException,"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    :goto_f7
    if-nez v5, :cond_fa

    goto :goto_fe

    :cond_fa
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    :goto_fe
    move-object/from16 v4, p0

    iget-object v0, v4, Lpantanal/content/ContentManagerImpl;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entrance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updateFluidCloud, serviceId = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", closeEntry = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceSwitch = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", result = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v12, Ly8/c;->a:Ly8/c;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    const-string v13, "ContentManager"

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-wide v10
.end method
