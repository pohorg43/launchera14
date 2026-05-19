.class public final Lpantanal/app/app_card/AppCardImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/AppCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/app_card/AppCardImpl$WhenMappings;,
        Lpantanal/app/app_card/AppCardImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/app_card/AppCardImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "AppCardImpl"


# instance fields
.field private final cardManager$delegate:Lh4/f;

.field private final cardTag:Ljava/lang/String;

.field private final cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field private clientCallback:Lpantanal/app/OnLoadCallback;

.field private final configuration:Lpantanal/app/bean/Configuration;

.field private context:Landroid/content/Context;

.field private engine:Lpantanal/app/app_card/engine/SmartEngine;

.field private final engineCardLoadCallback:Lpantanal/app/app_card/OnAppCardLoadCallback;

.field private isDragging:Z

.field private isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastEngineView:Landroid/view/View;

.field private localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

.field private final serviceManager:Lpantanal/app/manager/ServiceManagerProxy;

.field private uiDataInterceptor:Lpantanal/app/UIDataInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/app_card/AppCardImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/app_card/AppCardImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/app_card/AppCardImpl;->Companion:Lpantanal/app/app_card/AppCardImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
    .registers 16

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->serviceManager:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/app_card/AppCardImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p4, p0, Lpantanal/app/app_card/AppCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Lpantanal/app/bean/CardViewInfo;->isDragging()Z

    move-result p1

    iput-boolean p1, p0, Lpantanal/app/app_card/AppCardImpl;->isDragging:Z

    invoke-static {p3}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    new-instance p1, Lpantanal/app/app_card/AppCardImpl$cardManager$2;

    invoke-direct {p1, p0}, Lpantanal/app/app_card/AppCardImpl$cardManager$2;-><init>(Lpantanal/app/app_card/AppCardImpl;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->cardManager$delegate:Lh4/f;

    new-instance p1, Lpantanal/app/app_card/AppCardImpl$engineCardLoadCallback$1;

    invoke-direct {p1, p0}, Lpantanal/app/app_card/AppCardImpl$engineCardLoadCallback$1;-><init>(Lpantanal/app/app_card/AppCardImpl;)V

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->engineCardLoadCallback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init AppCardImpl,cardViewInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",config = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->initCardManager()V

    return-void
.end method

.method public static final synthetic access$buildPreLogMsg(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardManager(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/manager/CardManagerProxy;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardTag$p(Lpantanal/app/app_card/AppCardImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCardViewInfo$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public static final synthetic access$getClientCallback$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/OnLoadCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->clientCallback:Lpantanal/app/OnLoadCallback;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/bean/Configuration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lpantanal/app/app_card/AppCardImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEngine$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/app_card/engine/SmartEngine;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    return-object p0
.end method

.method public static final synthetic access$getLastEngineView$p(Lpantanal/app/app_card/AppCardImpl;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getServiceManager$p(Lpantanal/app/app_card/AppCardImpl;)Lpantanal/app/manager/ServiceManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->serviceManager:Lpantanal/app/manager/ServiceManagerProxy;

    return-object p0
.end method

.method public static final synthetic access$initSmartEngine(Lpantanal/app/app_card/AppCardImpl;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->initSmartEngine()V

    return-void
.end method

.method public static final synthetic access$receiveUIData(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/app_card/AppCardImpl;->receiveUIData(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public static final synthetic access$renderEngineView(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/bean/PantanalUIData;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/app_card/AppCardImpl;->renderEngineView(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public static final synthetic access$setClientCallback$p(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/OnLoadCallback;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->clientCallback:Lpantanal/app/OnLoadCallback;

    return-void
.end method

.method public static final synthetic access$setLastEngineView$p(Lpantanal/app/app_card/AppCardImpl;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    return-void
.end method

.method private final buildPreLogMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final destroyUIDataChannel()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->r(I)V

    iget-boolean v0, p0, Lpantanal/app/app_card/AppCardImpl;->isDragging:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v1, Lpantanal/app/app_card/AppCardImpl$destroyUIDataChannel$1;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/AppCardImpl$destroyUIDataChannel$1;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, p0}, Lpantanal/app/manager/CardManagerProxy;->stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V

    goto :goto_2f

    :cond_1f
    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v1, Lpantanal/app/app_card/AppCardImpl$destroyUIDataChannel$2;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/AppCardImpl$destroyUIDataChannel$2;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, p0}, Lpantanal/app/manager/CardManagerProxy;->destroyUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private final getCardManager()Lpantanal/app/manager/CardManagerProxy;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/CardManagerProxy;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 13

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

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

    const-string v2, "AppCardImpl"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_22
    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final initCardManager()V
    .registers 16

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-boolean v0, p0, Lpantanal/app/app_card/AppCardImpl;->isDragging:Z

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_50

    new-instance v1, Lpantanal/app/app_card/AppCardImpl$initCardManager$1;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/AppCardImpl$initCardManager$1;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lpantanal/app/manager/CardManagerProxy;->createUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V

    goto :goto_50

    :cond_2a
    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, isDragging is "

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

    const-string v5, "AppCardImpl"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private final initSmartEngine()V
    .registers 16

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v0

    sget-object v1, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    const-string v2, ",initSmartEngine, context is null"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_90

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_74

    sget-object v1, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "it.applicationContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lpantanal/app/app_card/AppCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {v3}, Lpantanal/app/bean/Configuration;->getLauncherInterceptor()Lpantanal/app/ILaunchInterceptor;

    move-result-object v3

    iget-object v4, p0, Lpantanal/app/app_card/AppCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {v4}, Lpantanal/app/bean/Configuration;->getEnableV2Callback()Z

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lpantanal/app/app_card/engine/SmartEngineChecker;->init(Landroid/content/Context;Lpantanal/app/ILaunchInterceptor;Z)V

    new-instance v0, Lpantanal/app/app_card/engine/SmartEngine;

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v3, p0, Lpantanal/app/app_card/AppCardImpl;->engineCardLoadCallback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    invoke-direct {v0, v1, v3}, Lpantanal/app/app_card/engine/SmartEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",initSmartEngine,init standard smart engine!cardViewInfo = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v5, "AppCardImpl"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    :cond_74
    if-nez v3, :cond_12a

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "AppCardImpl"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_12a

    :cond_90
    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v0

    sget-object v1, Lpantanal/app/bean/CardCategory;->APP_DRAGONFLY:Lpantanal/app/bean/CardCategory;

    if-ne v0, v1, :cond_f7

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d1

    sget-object v1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    invoke-virtual {v1, v0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->init(Landroid/content/Context;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",initSmartEngine,init AppDragonFlyCardSmartEngine!cardViewInfo = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v4, "AppCardImpl"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    :cond_d1
    if-nez v3, :cond_eb

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "AppCardImpl"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_eb
    new-instance v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->engineCardLoadCallback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    invoke-direct {v0, v1, v2}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    goto :goto_12a

    :cond_f7
    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",initSmartEngine,type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not right,do nothing!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v4, "AppCardImpl"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_12a
    :goto_12a
    return-void
.end method

.method private final loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 5

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;

    invoke-direct {v1, p0, p2, p1}, Lpantanal/app/app_card/AppCardImpl$loadInternal$1;-><init>(Lpantanal/app/app_card/AppCardImpl;Lpantanal/app/OnLoadCallback;Landroid/os/Bundle;)V

    const-string p0, "1201"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onInterceptUIDataAndRenderView(Lpantanal/app/bean/PantanalUIData;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    const-string v3, "onInterceptUIDataAndRenderView,serviceId:"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v2, :cond_2e

    sget-object v6, Ly8/c;->a:Ly8/c;

    iget-object v2, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const-string v7, ",4100 UTraceIntentContext == null"

    invoke-static {v3, v2, v7}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "AppCardImpl"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_5d

    :cond_2e
    sget-object v17, Ly8/c;->a:Ly8/c;

    iget-object v2, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const-string v6, ",UTrace.start spanName:4100"

    invoke-static {v3, v2, v6}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "AppCardImpl"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v2, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    const-string v3, "4100"

    invoke-static {v2, v5, v3, v4, v5}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v5

    :goto_5d
    if-eqz v5, :cond_64

    iget-object v2, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2, v5}, Lpantanal/app/bean/CardViewInfo;->setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    :cond_64
    iget-object v2, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Ly5/p;->a(Lpantanal/app/bean/CardViewInfo;)Ljava/util/Map;

    move-result-object v2

    iput-object v1, v0, Lpantanal/app/app_card/AppCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    iget-object v8, v0, Lpantanal/app/app_card/AppCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",onInterceptUIDataAndRenderView,begin,tag = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",data = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "AppCardImpl"

    move-object v6, v3

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v6, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v6}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lz8/c;->n(I)Lz8/c;

    iget-object v6, v0, Lpantanal/app/app_card/AppCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    const-string v15, ",onInterceptUIDataAndRenderView, context is null"

    if-eqz v6, :cond_16f

    invoke-virtual/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->getUIData()Lpantanal/app/bean/PantanalUIData;

    move-result-object v7

    if-eqz v7, :cond_16f

    invoke-interface {v6, v7}, Lpantanal/app/UIDataInterceptor;->onReceiveUIData(Lpantanal/app/bean/PantanalUIData;)Z

    move-result v14

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",onInterceptUIDataAndRenderView: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", needIntercept: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v7, "AppCardImpl"

    move-object v6, v3

    move/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v28, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v19, :cond_13d

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_116

    iget-object v7, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v7}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v7

    invoke-virtual {v7, v4}, Lz8/c;->n(I)Lz8/c;

    iget-object v7, v0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz v7, :cond_116

    iget-object v8, v0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    invoke-virtual {v7, v6, v8, v1}, Lpantanal/app/app_card/engine/SmartEngine;->obtainView(Landroid/content/Context;Landroid/view/View;Lpantanal/app/bean/PantanalUIData;)V

    sget-object v6, Lh4/z;->a:Lh4/z;

    goto :goto_117

    :cond_116
    const/4 v6, 0x0

    :goto_117
    if-nez v6, :cond_13a

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, v28

    invoke-static {v6, v15}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v7, "AppCardImpl"

    move-object v6, v3

    move-object/from16 v29, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_163

    :cond_13a
    move-object/from16 v29, v28

    goto :goto_163

    :cond_13d
    move-object/from16 v29, v28

    iget-object v6, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v6}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lz8/c;->n(I)Lz8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v6

    const-string v7, ",onInterceptUIDataAndRenderView,uidata is intercepted,no more update view!"

    invoke-static {v6, v7}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "AppCardImpl"

    move-object v6, v3

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_163
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "needIntercept"

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lh4/z;->a:Lh4/z;

    goto :goto_172

    :cond_16f
    move-object/from16 v29, v15

    const/4 v6, 0x0

    :goto_172
    if-nez v6, :cond_1d5

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    if-eqz v15, :cond_1b1

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v6

    const-string v7, ",onInterceptUIDataAndRenderView,uiDataInterceptor is null."

    invoke-static {v6, v7}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v7, "AppCardImpl"

    move-object v6, v3

    move-object/from16 v30, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v6, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v6}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v6

    invoke-virtual {v6, v4}, Lz8/c;->n(I)Lz8/c;

    iget-object v4, v0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz v4, :cond_1b1

    iget-object v6, v0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    move-object/from16 v7, v30

    invoke-virtual {v4, v7, v6, v1}, Lpantanal/app/app_card/engine/SmartEngine;->obtainView(Landroid/content/Context;Landroid/view/View;Lpantanal/app/bean/PantanalUIData;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    goto :goto_1b2

    :cond_1b1
    const/4 v1, 0x0

    :goto_1b2
    if-nez v1, :cond_1ce

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "AppCardImpl"

    move-object v6, v3

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1ce
    const-string v0, "uiDataInterceptor"

    const-string v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d5
    if-eqz v5, :cond_1e0

    invoke-static {v5, v2}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v1, v2}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_1e0
    return-void
.end method

.method private final receiveUIData(Lpantanal/app/bean/PantanalUIData;)V
    .registers 15

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, ", begin to receiveUIData but card is release"

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

    const-string v2, "AppCardImpl"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    invoke-virtual {p1}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lz8/c;->v(I)Lz8/c;

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", begin to receiveUIData tag = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",data size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v3, "AppCardImpl"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lpantanal/app/app_card/AppCardImpl;->onInterceptUIDataAndRenderView(Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method private final renderEngineView(Lpantanal/app/bean/PantanalUIData;)V
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-nez p1, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",renderEngineView,begin to obtainView: "

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

    const-string v1, "AppCardImpl"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz v2, :cond_56

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    invoke-virtual {v2, v0, v1, p1}, Lpantanal/app/app_card/engine/SmartEngine;->obtainView(Landroid/content/Context;Landroid/view/View;Lpantanal/app/bean/PantanalUIData;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :cond_56
    if-nez v1, :cond_71

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p1

    const-string v0, ",renderEngineView,failed,cause ui engine is null!"

    invoke-static {p1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "AppCardImpl"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_71
    sget-object v1, Lh4/z;->a:Lh4/z;

    :cond_73
    if-nez v1, :cond_8e

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string p1, ",onInterceptUIDataAndRenderView, context is null"

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

    const-string v1, "AppCardImpl"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_8e
    return-void
.end method


# virtual methods
.method public getCardType()Lpantanal/app/bean/CardCategory;
    .registers 1

    sget-object p0, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    return-object p0
.end method

.method public getInnerCard()Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lpantanal/app/AppCard$DefaultImpls;->getInnerCard(Lpantanal/app/AppCard;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 14

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    const/4 v1, 0x0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v2}, Lpantanal/app/manager/CardManagerProxy;->getCurrentUIData(Lpantanal/app/bean/CardViewInfo;)Lpantanal/app/bean/PantanalUIData;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-nez v0, :cond_30

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string v0, ",getUIData return null,data maybe on the way."

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "AppCardImpl"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object v0, v1

    :cond_30
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    return-object p0
.end method

.method public load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 15

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p1}, Lv5/c;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", begin to load with tag = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",cardInfo = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,bundle = "

    const-string v2, ","

    invoke-static {v5, v0, v4, v2}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppCardImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x190

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    invoke-direct {p0, p1, p2}, Lpantanal/app/app_card/AppCardImpl;->loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    return-void
.end method

.method public load(Lpantanal/app/OnLoadCallback;)V
    .registers 14

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",load: "

    invoke-static {v0, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppCardImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x190

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lpantanal/app/app_card/AppCardImpl;->loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    return-void
.end method

.method public onCreate()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",onCreate: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_CREATE()Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, p0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_38
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/app_card/AppCardImpl$onDestroy$1;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/AppCardImpl$onDestroy$1;-><init>(Lpantanal/app/app_card/AppCardImpl;)V

    const-string p0, "7100"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onDragEnd(Z)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lpantanal/app/app_card/AppCardImpl;->isDragging:Z

    iget-object v3, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v3}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v3

    const/16 v4, 0x320

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lz8/a;->a(IIZ)Lz8/a;

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",onDragEnd: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v8, "AppCardImpl"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v3, 0x0

    if-nez v1, :cond_60

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v1

    if-eqz v1, :cond_74

    new-instance v4, Lpantanal/app/app_card/AppCardImpl$onDragEnd$1;

    invoke-direct {v4, v0}, Lpantanal/app/app_card/AppCardImpl$onDragEnd$1;-><init>(Ljava/lang/Object;)V

    iget-object v0, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5, v3}, Lpantanal/app/manager/CardManagerProxy;->createUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V

    goto :goto_74

    :cond_60
    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v1

    if-eqz v1, :cond_74

    new-instance v4, Lpantanal/app/app_card/AppCardImpl$onDragEnd$2;

    invoke-direct {v4, v0}, Lpantanal/app/app_card/AppCardImpl$onDragEnd$2;-><init>(Ljava/lang/Object;)V

    iget-object v0, v0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5, v3}, Lpantanal/app/manager/CardManagerProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V

    :cond_74
    :goto_74
    return v2
.end method

.method public onDragStart()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",onDragStart: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpantanal/app/app_card/AppCardImpl;->isDragging:Z

    return-void
.end method

.method public onForceUpdate(Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 14

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, ",onForceUpdate: "

    const-string v5, ", action: "

    invoke-static {v0, v4, v2, v5, v3}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppCardImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/app_card/AppCardImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    sget-object p1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {p1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_CREATE_FORCE_UPDATE()Lpantanal/app/manager/model/CardAction;

    move-result-object p1

    goto :goto_3f

    :cond_39
    sget-object p1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {p1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_RESUME_FORCE_UPDATE()Lpantanal/app/manager/model/CardAction;

    move-result-object p1

    :goto_3f
    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, p1, p0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_4a
    return-void
.end method

.method public onHide()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",onHide: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_PAUSE()Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, v2}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_38
    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz v0, :cond_41

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lpantanal/app/app_card/engine/SmartEngine;->onInVisible(Landroid/view/View;)V

    :cond_41
    return-void
.end method

.method public onHostChange(Ljava/lang/String;)V
    .registers 14

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",onHostChange: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",jsonString = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppCardImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onRenderFailed()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",onRenderFailed: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_2d

    sget-object v1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_RENDER_FAIL()Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, p0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_2d
    return-void
.end method

.method public onScrollState(I)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/AppCard$DefaultImpls;->onScrollState(Lpantanal/app/AppCard;I)V

    return-void
.end method

.method public onShow()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/app_card/AppCardImpl$onShow$1;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/AppCardImpl$onShow$1;-><init>(Lpantanal/app/app_card/AppCardImpl;)V

    const-string p0, "1200"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_11
    return-void
.end method

.method public onSubscribe()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",onSubscribe: "

    invoke-static {v1, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_SUBSCRIBED()Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, p0}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_38
    return-void
.end method

.method public onUnsubscribe()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v2, ",onUnsubscribe: "

    invoke-static {v0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppCardImpl"

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

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->getCardManager()Lpantanal/app/manager/CardManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_39

    sget-object v1, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    invoke-virtual {v1}, Lpantanal/app/manager/model/CardAction$Companion;->getACTION_UNSUBSCRIBED()Lpantanal/app/manager/model/CardAction;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0, v1, v2}, Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V

    :cond_39
    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Lpantanal/app/app_card/engine/SmartEngine;->unsubscribe()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    :goto_44
    if-nez p0, :cond_57

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "AppCardImpl"

    const-string v2, "onUnsubscribe,engin is null,not invoke engine unsubscrbe."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_57
    return-void
.end method

.method public release()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x44c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v2, ",begin to release: "

    invoke-static {v0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "AppCardImpl"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lpantanal/app/app_card/AppCardImpl;->releaseView()V

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->destroyUIDataChannel()V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v2

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lz8/f;->e(III)V

    return-void
.end method

.method public releaseView()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x44c

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/AppCardImpl;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->cardTag:Ljava/lang/String;

    const-string v2, ",releaseView: "

    invoke-static {v0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "AppCardImpl"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lpantanal/app/app_card/engine/SmartEngine;->releaseView(Landroid/view/View;)V

    :cond_3a
    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->lastEngineView:Landroid/view/View;

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->localPantanalUIData:Lpantanal/app/bean/PantanalUIData;

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->clientCallback:Lpantanal/app/OnLoadCallback;

    iput-object v0, p0, Lpantanal/app/app_card/AppCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    return-void
.end method

.method public setClientAliveComponent(Ljava/lang/String;)V
    .registers 3

    const-string v0, "pkg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/app_card/AppCardImpl;->engine:Lpantanal/app/app_card/engine/SmartEngine;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->setClientAliveComponent(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/app_card/AppCardImpl;->uiDataInterceptor:Lpantanal/app/UIDataInterceptor;

    return-void
.end method
