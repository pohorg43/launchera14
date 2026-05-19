.class public final Lpantanal/app/seedling/SeedlingCardImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/IPantanalService;
.implements Lpantanal/app/SeedlingCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/seedling/SeedlingCardImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/seedling/SeedlingCardImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingCard"


# instance fields
.field private final cardManager$delegate:Lh4/f;

.field private final cardTag:Ljava/lang/String;

.field private final cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field private clientCallback:Lpantanal/app/OnLoadCallback;

.field private final configuration:Lpantanal/app/bean/Configuration;

.field private context:Landroid/content/Context;

.field private engine:Lpantanal/app/seedling/SeedlingEngine;

.field private final engineCardLoadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

.field private isDragging:Z

.field private isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastEngineView:Landroid/view/View;

.field private lastShouldShow:Z

.field private volatile localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

.field private final proxy:Lpantanal/app/manager/ServiceManagerProxy;

.field private volatile uiDataInterceptor:Lpantanal/app/UIDataInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/SeedlingCardImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/seedling/SeedlingCardImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardImpl;->Companion:Lpantanal/app/seedling/SeedlingCardImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
    .registers 16

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p4, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p3}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    invoke-virtual {p3}, Lpantanal/app/bean/CardViewInfo;->isDragging()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isDragging:Z

    invoke-virtual {p3}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lpantanal/decision/ServiceInfo;->getNewSeedlingCardOptions()Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getShouldShow()Z

    move-result p2

    :cond_3e
    iput-boolean p2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->lastShouldShow:Z

    new-instance p1, Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;

    invoke-direct {p1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$cardManager$2;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardManager$delegate:Lh4/f;

    new-instance p1, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;

    invoke-direct {p1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engineCardLoadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init SeedlingCardImpl,configuration is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",cardViewInfo is"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->initCardManager()V

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->initSeedlingEngine()V

    return-void
.end method

.method public static final synthetic access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$destroyUIDataChannel(Lpantanal/app/seedling/SeedlingCardImpl;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->destroyUIDataChannel()V

    return-void
.end method

.method public static final synthetic access$getCardManager(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/manager/CardManagerProxy;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardTag$p(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public static final synthetic access$getClientCallback$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/OnLoadCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->clientCallback:Lpantanal/app/OnLoadCallback;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/Configuration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    return-object p0
.end method

.method public static final synthetic access$getContext(Lpantanal/app/seedling/SeedlingCardImpl;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lpantanal/app/seedling/SeedlingCardImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEngine$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/seedling/SeedlingEngine;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    return-object p0
.end method

.method public static final synthetic access$getProxy$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/manager/ServiceManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    return-object p0
.end method

.method public static final synthetic access$onInterceptUIDataAndRenderView(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->onInterceptUIDataAndRenderView(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public static final synthetic access$receiveUIData(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->receiveUIData(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public static final synthetic access$renderEngineView(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->renderEngineView(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public static final synthetic access$setClientCallback$p(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/OnLoadCallback;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->clientCallback:Lpantanal/app/OnLoadCallback;

    return-void
.end method

.method public static final synthetic access$setLastEngineView$p(Lpantanal/app/seedling/SeedlingCardImpl;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->lastEngineView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$utraceStart(Lpantanal/app/seedling/SeedlingCardImpl;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3

    invoke-direct {p0, p1, p2}, Lpantanal/app/seedling/SeedlingCardImpl;->utraceStart(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method private final buildPreLogMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final calCardLoadTimeOut()I
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getLoadCardTimeOut()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getLoadCardTimeOut()I

    move-result p0

    return p0

    :cond_10
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getLoadTimeout()I

    move-result p0

    return p0
.end method

.method private final checkShouldStopRefreshingCard()Z
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->lastEngineView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",checkShouldStopRefreshingCard return false,because last engineView is null."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_22
    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->shouldInterruptCreatingCard()Z

    move-result v1

    if-nez v1, :cond_45

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",checkShouldStopRefreshingCard return false,because shouldInterruptCreatingCard return false."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_45
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getWaitCardDataTimeOut()I

    move-result v1

    if-gtz v1, :cond_81

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getWaitCardDataTimeOut()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",checkShouldStopRefreshingCard return false,not set waitCardDataTimeOut,curVal = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_81
    sget-object v14, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",checkShouldStopRefreshingCard return true,need stop card data refreshing ."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "SeedlingCard"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private final debugSeedlingUiData(Lpantanal/app/bean/PantanalUIData;)V
    .registers 26

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/PantanalUIData;->getSeedlingUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v1

    if-eqz v1, :cond_40

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " debugSeedlingUiData, panta seedlingUIData:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onInterceptUIDataAndRenderView"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingCard"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_63

    :cond_40
    sget-object v13, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v2, ",debugSeedlingUiData,panta seedlingUIData is null "

    invoke-static {v1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "SeedlingCard"

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_63
    return-void
.end method

.method private final destroyUIDataChannel()V
    .registers 16

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->r(I)V

    iget-boolean v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isDragging:Z

    const-string v1, ",cardManager is null,"

    const-string v2, ", begin to destroyUIDataChannel,isDragging = "

    const/4 v3, 0x0

    if-eqz v0, :cond_53

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v3, Lpantanal/app/seedling/SeedlingCardImpl$destroyUIDataChannel$1;

    invoke-direct {v3, p0}, Lpantanal/app/seedling/SeedlingCardImpl$destroyUIDataChannel$1;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v3, v4}, Lpantanal/app/manager/CardManagerProxy;->stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    :cond_25
    if-nez v3, :cond_92

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isDragging:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingCard"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_92

    :cond_53
    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_65

    new-instance v3, Lpantanal/app/seedling/SeedlingCardImpl$destroyUIDataChannel$3;

    invoke-direct {v3, p0}, Lpantanal/app/seedling/SeedlingCardImpl$destroyUIDataChannel$3;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v3, v4}, Lpantanal/app/manager/CardManagerProxy;->destroyUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    :cond_65
    if-nez v3, :cond_92

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isDragging:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingCard"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_92
    :goto_92
    return-void
.end method

.method private final getCardManager()Lpantanal/app/manager/CardManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/CardManagerProxy;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 13

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, ",this card is release"

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_22
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;
    .registers 15

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p0, ", engine is null"

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingCard"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_1c
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lpantanal/app/seedling/SeedlingEngine;->getISeedling()Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v0

    goto :goto_24

    :cond_23
    move-object v0, v1

    :goto_24
    if-nez v0, :cond_3d

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p0, ", iSeedling is null"

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingCard"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_3d
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingEngine;->getISeedling()Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v1

    :cond_45
    return-object v1
.end method

.method private final handleDataWasIntercepted(Lpantanal/app/bean/PantanalUIData;)V
    .registers 23

    move-object/from16 v1, p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v2, v1, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    iget-object v3, v1, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDataWasIntercepted,engine = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "SeedlingCard"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v2, v1, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lz8/c;->n(I)Lz8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v3

    sget-object v4, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v3, v1, Lpantanal/app/seedling/SeedlingCardImpl;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v3}, Lpantanal/app/manager/ServiceManagerProxy;->getUserId()Ljava/lang/Integer;

    move-result-object v3

    iget-object v14, v1, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v4, "data"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "suffixMsg"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v13, :cond_74

    const-string v2, "takeUriPermissionIfNeed error, because context is null, "

    invoke-static {v2, v14}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "UriUtils"

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_260

    :cond_74
    const-string v4, "content:"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v4, v5, v6}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_95

    const-string v2, "takeUriPermissionIfNeed not need, because data does not contain content:, just ignore "

    invoke-static {v2, v14}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "UriUtils"

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_260

    :cond_95
    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v6}, Lk7/q;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\""

    invoke-static {v2, v4, v7, v6}, Lk7/q;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const-string v6, "\\"

    const-string v7, ""

    invoke-static {v2, v6, v7, v5, v4}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v3, :cond_198

    const-string v2, "originUri"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "maybeAddUserId"

    const/4 v2, -0x2

    if-eq v11, v2, :cond_13b

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    invoke-virtual {v12}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_13b

    const-string v2, " uri change, add userId:"

    invoke-static {v10, v2, v11}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v3, "UriUtils"

    move-object v2, v0

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move/from16 v20, v11

    move/from16 v11, v17

    move-object/from16 p1, v12

    move-object/from16 v12, v18

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v12, v20

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move v1, v12

    move-object v12, v2

    goto :goto_157

    :cond_13b
    move-object/from16 v19, v10

    move-object/from16 p1, v12

    move v12, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/16 v16, 0x0

    const-string v3, "UriUtils"

    const-string v4, "maybeAddUserId uri not change, use originUri"

    move-object v2, v0

    move v1, v12

    move-object/from16 v12, v16

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v12, p1

    :goto_157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultUri:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originUri:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v1, 0x0

    const-string v3, "UriUtils"

    move-object v2, v0

    move-object/from16 p1, v15

    move-object v15, v12

    move-object v12, v1

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v1, "resultUri"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1a1

    :cond_198
    move-object v1, v12

    move-object/from16 p1, v15

    const-string v2, "{\n            originUri\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    :goto_1a1
    const-string v1, "context"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetUri"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "takePersistableUserUriPermission"

    :try_start_1ad
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const-string v3, "UriUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success, targetUri:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1da
    .catchall {:try_start_1ad .. :try_end_1da} :catchall_1db

    goto :goto_1e0

    :catchall_1db
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1e0
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_216

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error, targetUri:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "UriUtils"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_216
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Lh4/k$a;

    if-eqz v2, :cond_21d

    move-object v0, v1

    :cond_21d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeUriPermissionIfNeed need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isSucceed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", targetUri:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", src:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "UriUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v1, p0

    :goto_260
    iget-object v0, v1, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz v0, :cond_267

    invoke-virtual {v0}, Lpantanal/app/seedling/SeedlingEngine;->notifyCardDataWasIntercepted()V

    :cond_267
    return-void
.end method

.method private final handleDataWasNotIntercepted()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, ",handleDataWasNotIntercepted begin."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingCard"

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

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string v0, ",onInterceptUIDataAndRenderView,handleDataWasNotIntercepted, context is null"

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_3b
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lz8/c;->n(I)Lz8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->checkShouldStopRefreshingCard()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v1, ",handleDataWasNotIntercepted: "

    const-string v2, ",not intercept data,but need stop card data refreshing."

    invoke-static {v0, v1, p0, v2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_69
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    if-eqz v2, :cond_76

    invoke-virtual {v2}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v1

    :cond_76
    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lpantanal/app/seedling/SeedlingEngine;->obtainView([BLandroid/content/Context;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :cond_82
    if-nez v1, :cond_a1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v1, ",,handleDataWasNotIntercepted: "

    const-string v2, ",not intercept data,but engine is null,do nothing."

    invoke-static {v0, v1, p0, v2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a1
    return-void
.end method

.method private final handleDataWithNoInterceptor(Ljava/util/Map;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ",handleDataWithNoInterceptor, context is null"

    if-nez v1, :cond_23

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_23
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    iget-object v5, v0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    const/4 v6, 0x0

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v5

    goto :goto_36

    :cond_35
    move-object v5, v6

    :goto_36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", handleDataWithNoInterceptor: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "SeedlingCard"

    move-object v14, v1

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v3}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lz8/c;->n(I)Lz8/c;

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz v3, :cond_8f

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    if-eqz v4, :cond_83

    invoke-virtual {v4}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v6

    :cond_83
    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v6, v4}, Lpantanal/app/seedling/SeedlingEngine;->obtainView([BLandroid/content/Context;)V

    sget-object v6, Lh4/z;->a:Lh4/z;

    :cond_8f
    if-nez v6, :cond_af

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "SeedlingCard"

    move-object v14, v1

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_af
    const-string v0, "uiDataInterceptor"

    const-string v1, "null"

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final handleEndTraceNode(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1d

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string p1, ",handleEndTraceNode, myUTraceIntentContext is null"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1d
    invoke-static {p1, p2}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    const/4 p0, 0x0

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, p2, v0}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    return-void
.end method

.method private final handleStrongRemindLevel(Lpantanal/app/bean/PantanalUIData;)Lpantanal/app/bean/PantanalUIData;
    .registers 16

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getSeedlingUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v0

    if-nez v0, :cond_21

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string v0, ",handleStrongRemindLevel seedlingUIData is null"

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p1

    :cond_21
    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lpantanal/decision/ServiceInfo;->getSeedlingType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v2

    :goto_34
    const/4 v3, 0x1

    if-nez v1, :cond_38

    goto :goto_94

    :cond_38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_94

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getRemindLevel()I

    move-result v1

    iget-object v3, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lpantanal/decision/ServiceInfo;->isSupportStrongRemind()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_52
    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", remindLevel = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",isSupportStrongRemind = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v1, :cond_ae

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->setRemindLevel(I)V

    invoke-virtual {p1, v0}, Lpantanal/app/bean/PantanalUIData;->setSeedlingUIData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    goto :goto_ae

    :cond_94
    :goto_94
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string v0, ",seedlingType is not live"

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_ae
    :goto_ae
    return-object p1
.end method

.method private final handleUTraceContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 14

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_35

    :cond_a
    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onInterceptUIDataAndRenderView,serviceId:"

    const-string v4, ",UTrace.start spanName:4001"

    invoke-static {v3, v0, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingCard"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "4001"

    invoke-static {v0, v1, v3, v2, v1}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    :goto_35
    if-eqz v1, :cond_3c

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0, v1}, Lpantanal/app/bean/CardViewInfo;->setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    :cond_3c
    return-object v1
.end method

.method private final initCardManager()V
    .registers 16

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-boolean v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isDragging:Z

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_51

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$initCardManager$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$initCardManager$1;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v0, v1, v2, v3, p0}, Lpantanal/app/manager/CardManagerProxy;->createUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V

    goto :goto_51

    :cond_2b
    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init SeedlingCardImpl,isDragging = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",no need to createUIDataChannel"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingCard"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_51
    :goto_51
    return-void
.end method

.method private final initSeedlingEngine()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {v0}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object v0

    sget-object v1, Lpantanal/app/bean/Mode;->LIFECYCLE:Lpantanal/app/bean/Mode;

    if-eq v0, v1, :cond_16

    new-instance v0, Lpantanal/app/seedling/SeedlingEngine;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engineCardLoadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    invoke-direct {v0, v1, v2, p0}, Lpantanal/app/seedling/SeedlingEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/seedling/OnSeedlingCardLoadCallback;Lpantanal/app/Card;)V

    iput-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    goto :goto_42

    :cond_16
    sget-object v3, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init SeedlingCardImpl,configuration.mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",no need to create seedling engine!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_42
    return-void
.end method

.method private final needParseData()Z
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->isAODorHeadset()Z

    move-result p0

    return p0
.end method

.method private final onInterceptUIDataAndRenderView(Lpantanal/app/bean/PantanalUIData;)V
    .registers 19

    move-object/from16 v0, p0

    sget-object v12, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v3

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onInterceptUIDataAndRenderView: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pantanalUiData.data.size: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

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

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->handleUTraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v13

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Ly5/p;->a(Lpantanal/app/bean/CardViewInfo;)Ljava/util/Map;

    move-result-object v14

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lz8/c;->n(I)Lz8/c;

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    if-nez v1, :cond_59

    invoke-direct {v0, v14}, Lpantanal/app/seedling/SeedlingCardImpl;->handleDataWithNoInterceptor(Ljava/util/Map;)V

    invoke-direct {v0, v13, v14}, Lpantanal/app/seedling/SeedlingCardImpl;->handleEndTraceNode(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    return-void

    :cond_59
    invoke-direct/range {p0 .. p1}, Lpantanal/app/seedling/SeedlingCardImpl;->debugSeedlingUiData(Lpantanal/app/bean/PantanalUIData;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    invoke-interface {v1, v15}, Lpantanal/app/UIDataInterceptor;->onReceiveUIData(Lpantanal/app/bean/PantanalUIData;)Z

    move-result v11

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,onInterceptUIDataAndRenderView: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needIntercept: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/16 v16, 0x0

    const-string v2, "SeedlingCard"

    move-object v1, v12

    move v12, v11

    move-object/from16 v11, v16

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v12, :cond_a2

    invoke-direct/range {p0 .. p1}, Lpantanal/app/seedling/SeedlingCardImpl;->handleDataWasIntercepted(Lpantanal/app/bean/PantanalUIData;)V

    goto :goto_a5

    :cond_a2
    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->handleDataWasNotIntercepted()V

    :goto_a5
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "needIntercept"

    invoke-interface {v14, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v13, v14}, Lpantanal/app/seedling/SeedlingCardImpl;->handleEndTraceNode(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    return-void
.end method

.method private final packCardAction(Lpantanal/app/manager/model/CardAction;Ljava/lang/String;)Lpantanal/app/manager/model/CardAction;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lpantanal/app/manager/model/CardAction;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/manager/model/CardAction;->getAction()I

    move-result v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/manager/model/CardAction;->getShouldForceFetch()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/manager/model/CardAction;->getShouldNotify()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZ)V

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_51

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",packCardAction:origin params:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingCard"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v2}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_51
    sget-object v3, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v3}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_UPDATE_DATA()Lpantanal/app/manager/model/CardAction;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_60

    move v4, v5

    goto :goto_68

    :cond_60
    invoke-virtual {v3}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_HOST_CHANGE()Lpantanal/app/manager/model/CardAction;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_68
    const-string v6, ",engine is null,fillActionData failed."

    const/4 v7, 0x0

    if-eqz v4, :cond_97

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz v1, :cond_7a

    invoke-virtual {v2}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lpantanal/app/seedling/SeedlingEngine;->fillActionData(Ljava/util/Map;Z)V

    sget-object v7, Lh4/z;->a:Lh4/z;

    :cond_7a
    if-nez v7, :cond_f8

    sget-object v8, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingCard"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_f8

    :cond_97
    invoke-virtual {v3}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_SIZE_CHANGE()Lpantanal/app/manager/model/CardAction;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz v1, :cond_b0

    invoke-virtual {v2}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v1, v3, v4}, Lpantanal/app/seedling/SeedlingEngine;->fillActionDataBySizeChanged(Ljava/util/Map;Ljava/lang/String;)V

    sget-object v7, Lh4/z;->a:Lh4/z;

    :cond_b0
    if-nez v7, :cond_f8

    sget-object v8, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingCard"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_f8

    :cond_cd
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz v1, :cond_dc

    invoke-virtual {v2}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v3, v4, v5, v7}, Lpantanal/app/seedling/SeedlingEngine;->fillActionData$default(Lpantanal/app/seedling/SeedlingEngine;Ljava/util/Map;ZILjava/lang/Object;)V

    sget-object v7, Lh4/z;->a:Lh4/z;

    :cond_dc
    if-nez v7, :cond_f8

    sget-object v8, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingCard"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_f8
    :goto_f8
    return-object v2
.end method

.method public static synthetic packCardAction$default(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/manager/model/CardAction;Ljava/lang/String;ILjava/lang/Object;)Lpantanal/app/manager/model/CardAction;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-direct {p0, p1, p2}, Lpantanal/app/seedling/SeedlingCardImpl;->packCardAction(Lpantanal/app/manager/model/CardAction;Ljava/lang/String;)Lpantanal/app/manager/model/CardAction;

    move-result-object p0

    return-object p0
.end method

.method private final receiveUIData(Lpantanal/app/bean/PantanalUIData;)V
    .registers 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lz8/c;->v(I)Lz8/c;

    invoke-direct/range {p0 .. p1}, Lpantanal/app/seedling/SeedlingCardImpl;->handleStrongRemindLevel(Lpantanal/app/bean/PantanalUIData;)Lpantanal/app/bean/PantanalUIData;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v2

    const-string v4, ", begin to receiveUIData but card is release"

    invoke-static {v2, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_36
    invoke-virtual {v1}, Lpantanal/app/bean/PantanalUIData;->getSeedlingUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v14

    if-eqz v14, :cond_a7

    invoke-direct {v0, v14}, Lpantanal/app/seedling/SeedlingCardImpl;->shouldShow(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Z

    move-result v2

    move/from16 v20, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0x3fffdf

    const/16 v38, 0x0

    invoke-static/range {v14 .. v38}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->copy$default(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpantanal/app/bean/PantanalUIData;->setSeedlingUIData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",shouldShow="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",newData="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingCard"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a7
    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", begin to receiveUIData tag = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",data size = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "SeedlingCard"

    move-object v15, v2

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->needParseData()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, ",start parseDataByEngine"

    invoke-static {v3, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "SeedlingCard"

    move-object v15, v2

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v2, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;

    invoke-direct {v2, v1, v0}, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;-><init>(Lpantanal/app/bean/PantanalUIData;Lpantanal/app/seedling/SeedlingCardImpl;)V

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Lpantanal/app/seedling/SeedlingEngine;->getISeedling()Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v0

    if-eqz v0, :cond_12a

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v1

    sget-object v4, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v3, v2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->parseDataByEngine(Ljava/lang/String;Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;)V

    goto :goto_12a

    :cond_127
    invoke-direct {v0, v1}, Lpantanal/app/seedling/SeedlingCardImpl;->onInterceptUIDataAndRenderView(Lpantanal/app/bean/PantanalUIData;)V

    :cond_12a
    :goto_12a
    return-void
.end method

.method private final renderEngineView(Lpantanal/app/bean/PantanalUIData;)V
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-nez p1, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",renderEngineView,obtainView: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cardEngine: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", data is null : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_64

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string p1, ",onInterceptUIDataAndRenderView return, context is null."

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_64
    iget-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-nez p1, :cond_82

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string p1, ",onInterceptUIDataAndRenderView,renderEngineView failed,seedlingEngine is null!"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingCard"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_82
    if-eqz p1, :cond_98

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v0

    goto :goto_8e

    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p0}, Lpantanal/app/seedling/SeedlingEngine;->obtainView([BLandroid/content/Context;)V

    :cond_98
    return-void
.end method

.method private final shouldShow(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getImportance()I

    move-result v1

    invoke-virtual {v0, v1}, Lpantanal/app/bean/Entrance;->shouldShowInEntrance(I)Z

    move-result v1

    invoke-virtual {v0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_23

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getRequestHideStatusBar()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    and-int/2addr v1, p1

    :cond_23
    iput-boolean v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->lastShouldShow:Z

    goto :goto_28

    :cond_26
    iget-boolean v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->lastShouldShow:Z

    :goto_28
    return v1
.end method

.method private final utraceStart(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 16

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    const-string v1, "SecondTermTraceContext"

    invoke-virtual {v0, v1}, Lpantanal/app/bean/CardViewInfo;->getUTraceCodeContext(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parentCtx="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingCard"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {v0, v1, p2, p1, v1}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p2

    if-eqz p2, :cond_7f

    const/4 v0, 0x3

    new-array v0, v0, [Lh4/j;

    const/4 v1, 0x0

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "service_id"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getEntranceName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "entrance"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh4/j;

    const-string v3, "card_category"

    invoke-direct {v2, v3, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, p1

    invoke-static {v0}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    const-string p1, "lifeCycleTraceContext"

    invoke-virtual {p0, p1, p2}, Lpantanal/app/bean/CardViewInfo;->setUTraceCodeContext(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V

    move-object v1, p2

    :cond_7f
    return-object v1
.end method


# virtual methods
.method public getCardEngineType()Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
    .registers 2

    const-string v0, "getCardEngineType"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getCardEngineType()Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    move-result-object p0

    if-nez p0, :cond_10

    :cond_e
    sget-object p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_UNKNOWN:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    :cond_10
    return-object p0
.end method

.method public getCardType()Lpantanal/app/bean/CardCategory;
    .registers 1

    sget-object p0, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    return-object p0
.end method

.method public getCodeContext()Ljava/lang/String;
    .registers 2

    const-string v0, "getCodeContext"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getCodeContext()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getCurrentPageId()Ljava/lang/String;
    .registers 2

    const-string v0, "getCurrentPageId"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getCurrentPageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    :cond_e
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingEngine;->getPageIdGetter()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    move-object v0, p0

    if-nez v0, :cond_25

    const-string v0, ""

    :cond_25
    return-object v0
.end method

.method public getInnerCard()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingEngine;->getISeedling()Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 2

    const-string v0, "getServiceId"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_e
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    const-string v0, "getTimestamp"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getTimestamp()J

    move-result-wide v0

    goto :goto_13

    :cond_d
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getTimestamp()J

    move-result-wide v0

    :goto_13
    return-wide v0
.end method

.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 2

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    if-nez v0, :cond_12

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, p0}, Lpantanal/app/manager/CardManagerProxy;->getCurrentUIData(Lpantanal/app/bean/CardViewInfo;)Lpantanal/app/bean/PantanalUIData;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_12
    return-object v0
.end method

.method public getUpkVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "getUpkVersion"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getUpkVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    :cond_e
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingEngine;->getUpkVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    move-object v0, p0

    if-nez v0, :cond_1d

    const-string v0, ""

    :cond_1d
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->lastEngineView:Landroid/view/View;

    return-object p0
.end method

.method public getViewBySize(I)Landroid/view/View;
    .registers 3

    const-string v0, "getViewBySize"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getViewBySize(I)Landroid/view/View;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getViewListBySize(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "getViewListBySize"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getViewListBySize(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_10

    :cond_e
    sget-object p0, Li4/y;->a:Li4/y;

    :cond_10
    return-object p0
.end method

.method public getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewProperty,view = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_3c

    invoke-virtual {p0, p1, p2}, Lpantanal/app/seedling/SeedlingEngine;->getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return-object p0
.end method

.method public getViewScreenShot()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingEngine;->getViewScreenShot()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 5

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$load$1;

    invoke-direct {v1, p0, p1, p2}, Lpantanal/app/seedling/SeedlingCardImpl$load$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    const-string p0, "1104"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public load(Lpantanal/app/OnLoadCallback;)V
    .registers 14

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", begin to load card: config = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->calCardLoadTimeOut()I

    move-result v2

    invoke-static {v1, v2, p1}, Lpantanal/app/TimeoutExtKt;->createTimeOutLoadCallback(Ljava/lang/String;ILpantanal/app/OnLoadCallback;)Lpantanal/app/TimeOutLoadCallback;

    move-result-object p1

    invoke-virtual {p1}, Lpantanal/app/TimeOutLoadCallback;->startLoadCountDown()V

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", begin to load but card is release"

    invoke-static {v1, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_5e
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v1}, Lz8/c;->A(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    return-void
.end method

.method public notifyCanStartAnimation(Landroid/view/View;Z)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyCanStartAnimation"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->notifyCanStartAnimation(Landroid/view/View;Z)V

    :cond_10
    return-void
.end method

.method public notifyLiteReload()V
    .registers 2

    const-string v0, "notifyLiteReload"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->notifyLiteReload()V

    :cond_b
    return-void
.end method

.method public notifySizeChange(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v4, "notifySizeChange, [oldSize, newSize]:["

    const-string v5, ", "

    const-string v6, "],cardTag:"

    invoke-static {v4, v1, v5, v2, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v4, v3, v5}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v6, Ly8/c;->a:Ly8/c;

    const-string v7, "SeedlingCard"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v2

    if-eqz v2, :cond_52

    sget-object v3, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v3}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_SIZE_CHANGE()Lpantanal/app/manager/model/CardAction;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lpantanal/app/seedling/SeedlingCardImpl;->packCardAction(Lpantanal/app/manager/model/CardAction;Ljava/lang/String;)Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2, v1, v0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_52
    return-void
.end method

.method public onCreate()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$onCreate$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onCreate$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "1105"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$onDestroy$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onDestroy$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "7002"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onDragEnd(Z)Z
    .registers 16

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onDragEnd callReplaceUIDataChannel() "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needReplaceChannel ="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingCard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x320

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    if-nez p1, :cond_5d

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v7

    if-eqz v7, :cond_73

    new-instance v8, Lpantanal/app/seedling/SeedlingCardImpl$onDragEnd$1;

    invoke-direct {v8, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onDragEnd$1;-><init>(Ljava/lang/Object;)V

    iget-object v9, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v9}, Lpantanal/app/bean/CardViewInfoKt;->getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lpantanal/app/manager/CardManagerProxy;->createUIDataChannel$default(Lpantanal/app/manager/CardManagerProxy;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;ILjava/lang/Object;)V

    goto :goto_73

    :cond_5d
    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object p1

    if-eqz p1, :cond_73

    new-instance v0, Lpantanal/app/seedling/SeedlingCardImpl$onDragEnd$2;

    invoke-direct {v0, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onDragEnd$2;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->proxy:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {p1, v0, v1, v2, p0}, Lpantanal/app/manager/CardManagerProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V

    :cond_73
    :goto_73
    const/4 p0, 0x0

    return p0
.end method

.method public onDragStart()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",onDragStart: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingCard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isDragging:Z

    return-void
.end method

.method public onForceUpdate(Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/SeedlingCard$DefaultImpls;->onForceUpdate(Lpantanal/app/SeedlingCard;Lpantanal/app/ICardLifecycle$LifeCycleValue;)V

    return-void
.end method

.method public onHide()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onHide$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "7000"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onHostChange(Ljava/lang/String;)V
    .registers 14

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", onHostChange,cardTag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",jsonString = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, p1}, Lpantanal/app/bean/CardViewInfo;->setInitData(Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object p1

    if-eqz p1, :cond_57

    sget-object v0, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v0}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_HOST_CHANGE()Lpantanal/app/manager/model/CardAction;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lpantanal/app/seedling/SeedlingCardImpl;->packCardAction$default(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/manager/model/CardAction;Ljava/lang/String;ILjava/lang/Object;)Lpantanal/app/manager/model/CardAction;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p1, v0, p0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_57
    return-void
.end method

.method public onRenderFailed()V
    .registers 1

    invoke-static {p0}, Lpantanal/app/SeedlingCard$DefaultImpls;->onRenderFailed(Lpantanal/app/SeedlingCard;)V

    return-void
.end method

.method public onScrollState(I)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/SeedlingCard$DefaultImpls;->onScrollState(Lpantanal/app/SeedlingCard;I)V

    return-void
.end method

.method public onShow()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$onShow$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onShow$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "1108"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSubscribe()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$onSubscribe$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onSubscribe$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "1102"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    const-string v0, "onTrimMemory"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onTrimMemory(I)V

    :cond_b
    return-void
.end method

.method public onUnsubscribe()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$onUnsubscribe$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "7004"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public parseDataByEngine(Ljava/lang/String;Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseDataByEngine"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->parseDataByEngine(Ljava/lang/String;Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;)V

    :cond_15
    return-void
.end method

.method public performCardClickAction(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "performCardClickAction"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->performCardClickAction(Ljava/util/Map;)Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/seedling/SeedlingCardImpl$release$1;

    invoke-direct {v1, p0}, Lpantanal/app/seedling/SeedlingCardImpl$release$1;-><init>(Lpantanal/app/seedling/SeedlingCardImpl;)V

    const-string p0, "7006"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public releaseView()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x44c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ", releaseView: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lpantanal/app/seedling/SeedlingEngine;->releaseView()V

    sget-object v1, Lh4/z;->a:Lh4/z;

    goto :goto_35

    :cond_34
    move-object v1, v2

    :goto_35
    if-nez v1, :cond_50

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    const-string v3, ", releaseView: engine is null"

    invoke-static {v1, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingCard"

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_50
    iput-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    iput-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    iput-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->lastEngineView:Landroid/view/View;

    iput-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->context:Landroid/content/Context;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->clientCallback:Lpantanal/app/OnLoadCallback;

    iput-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    return-void
.end method

.method public setAODStatus(Z)V
    .registers 3

    const-string v0, "setAODStatus"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setAODStatus(Z)V

    :cond_b
    return-void
.end method

.method public setDynamicConfiguration(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDynamicConfiguration,view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",bundle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_3c

    invoke-virtual {p0, p1, p2}, Lpantanal/app/seedling/SeedlingEngine;->setDynamicConfiguration(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_3c
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    const-string v0, "setMaxHeight"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setMaxHeight(I)V

    :cond_b
    return-void
.end method

.method public setMaxHeight(Landroid/view/View;I)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setMaxHeightWithView"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setMaxHeight(Landroid/view/View;I)V

    :cond_10
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    const-string v0, "setMaxWidth"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setMaxWidth(I)V

    :cond_b
    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setMaxWidthWithView"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setMaxWidth(Landroid/view/View;I)V

    :cond_10
    return-void
.end method

.method public setScreenLocked(Z)V
    .registers 3

    const-string v0, "setScreenLocked"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setScreenLocked(Z)V

    :cond_b
    return-void
.end method

.method public setSecondaryScreenCapsuleDarkMode(ZZI)V
    .registers 5

    const-string v0, "setSecondaryScreenCapsuleDarkMode"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setSecondaryScreenCapsuleDarkMode(ZZI)V

    :cond_b
    return-void
.end method

.method public setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    return-void
.end method

.method public setViewStatusListener(Landroid/view/View;Lcom/oplus/seedling/sdk/seedling/IViewStatusListener;)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewStatusListener,view = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl;->engine:Lpantanal/app/seedling/SeedlingEngine;

    if-eqz p0, :cond_2d

    invoke-virtual {p0, p1, p2}, Lpantanal/app/seedling/SeedlingEngine;->setViewStatusListener(Landroid/view/View;Lcom/oplus/seedling/sdk/seedling/IViewStatusListener;)V

    :cond_2d
    return-void
.end method

.method public setWidgetColor(IZ)V
    .registers 4

    const-string v0, "setWidgetColor"

    invoke-direct {p0, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->getISeedling(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setWidgetColor(IZ)V

    :cond_b
    return-void
.end method
