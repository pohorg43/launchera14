.class public final Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;
.super Lpantanal/app/app_card/engine/SmartEngine;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$Companion;

.field private static final TAG:Ljava/lang/String; = "AppDragonFlyCardSmartEngine"


# instance fields
.field private final callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

.field private final cardInfo:Lpantanal/app/bean/CardViewInfo;

.field private cardName:Ljava/lang/String;

.field private final smartErrorCallback:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$smartErrorCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->Companion:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V
    .registers 10

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V

    iput-object p1, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    const-string p2, ""

    iput-object p2, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    new-instance p2, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$smartErrorCallback$1;

    invoke-direct {p2, p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$smartErrorCallback$1;-><init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;)V

    iput-object p2, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->smartErrorCallback:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$smartErrorCallback$1;

    invoke-direct {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->createCardName(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    invoke-static {p1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;)V

    invoke-virtual {v0, v1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    invoke-static {p1}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->addErrorCallback(Ljava/lang/String;Lpantanal/app/app_card/engine/ISmartEngineError;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    new-instance v1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$1$1;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$1$1;-><init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;)V

    invoke-interface {p1, v0, v1}, Lcom/oplus/smartsdk/ISmartViewApi;->registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;)Lpantanal/app/app_card/OnAppCardLoadCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    return-object p0
.end method

.method private final createCardName(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/content/Context;Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->useSmartEngine$lambda$2$lambda$1(Landroid/content/Context;Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic k(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->_init_$lambda$0(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic l(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->releaseView$lambda$3(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic m(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->release$lambda$5$lambda$4(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private static final release$lambda$5$lambda$4(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release card="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", v="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppDragonFlyCardSmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onRelease(Landroid/view/View;)V

    return-void
.end method

.method private static final releaseView$lambda$3(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    const-string v2, "unRegisterUiCallback "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "AppDragonFlyCardSmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->unRegisterUiCallback(Ljava/lang/String;)V

    return-void
.end method

.method private static final useSmartEngine$lambda$2$lambda$1(Landroid/content/Context;Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "$hostContext"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$smartApiInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    sget-object v4, Ly8/c;->a:Ly8/c;

    iget-object v5, v1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    const-string v6, "useSmartEngine cardName = "

    const-string v7, ", contextDpi="

    const-string v8, ", context="

    invoke-static {v6, v5, v7, v3, v8}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "AppDragonFlyCardSmartEngine"

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move v7, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v4, v1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v4}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v7

    const/16 v8, 0x190

    const/16 v9, 0x38

    const/4 v11, 0x4

    move v10, v3

    invoke-static/range {v7 .. v12}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v1, v1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardName:Ljava/lang/String;

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-interface {v4, p0, v1, v3, v2}, Lcom/oplus/smartsdk/ISmartViewApi;->sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    return-void
.end method


# virtual methods
.method public release(Landroid/view/View;Z)V
    .registers 15

    sget-object v11, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin release,shouldRemoveErrorCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AppDragonFlyCardSmartEngine"

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

    if-eqz p1, :cond_36

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    new-instance v1, Lcom/android/launcher/x;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/x;-><init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :cond_36
    if-eqz p2, :cond_44

    sget-object p1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    iget-object p0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->removeErrorCallback(Ljava/lang/String;)V

    goto :goto_55

    :cond_44
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "AppDragonFlyCardSmartEngine"

    const-string v2, "release,do not remove error callback."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_55
    return-void
.end method

.method public releaseView(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngine;->release$default(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;ZILjava/lang/Object;)V

    sget-object p1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    new-instance v0, Lf/h;

    invoke-direct {v0, p0}, Lf/h;-><init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;)V

    invoke-virtual {p1, v0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    iget-object p0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->removeErrorCallback(Ljava/lang/String;)V

    return-void
.end method

.method public useSmartEngine(Landroid/content/Context;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 11

    const-string v0, "hostContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartApiInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    new-instance v1, Lcom/android/launcher/p0;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/android/launcher/p0;-><init>(Landroid/content/Context;Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    invoke-virtual {v0, v1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method
