.class public Lpantanal/app/app_card/engine/SmartEngine;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/app_card/engine/SmartEngine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/app_card/engine/SmartEngine$Companion;

.field public static final PULL_ALIVE_SERVICE_NAME:Ljava/lang/String; = "com.oplus.channel.client.service.PullAliveService"

.field private static final TAG:Ljava/lang/String; = "SmartEngine"


# instance fields
.field private final callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

.field private final cardInfo:Lpantanal/app/bean/CardViewInfo;

.field private cardName:Ljava/lang/String;

.field private smartEngineView:Landroid/view/View;

.field private final smartErrorCallback:Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/app_card/engine/SmartEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/app_card/engine/SmartEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/app_card/engine/SmartEngine;->Companion:Lpantanal/app/app_card/engine/SmartEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V
    .registers 10

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/app_card/engine/SmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    const-string p2, ""

    iput-object p2, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    new-instance p2, Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;

    invoke-direct {p2, p0}, Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;-><init>(Lpantanal/app/app_card/engine/SmartEngine;)V

    iput-object p2, p0, Lpantanal/app/app_card/engine/SmartEngine;->smartErrorCallback:Lpantanal/app/app_card/engine/SmartEngine$smartErrorCallback$1;

    invoke-direct {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->createCardName(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    invoke-static {p1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/core/view/inputmethod/a;

    invoke-direct {v2, p0}, Landroidx/core/view/inputmethod/a;-><init>(Lpantanal/app/app_card/engine/SmartEngine;)V

    invoke-virtual {v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    invoke-static {p1}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->addErrorCallback(Ljava/lang/String;Lpantanal/app/app_card/engine/ISmartEngineError;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    new-instance v1, Lpantanal/app/app_card/engine/SmartEngine$1$1;

    invoke-direct {v1, p0}, Lpantanal/app/app_card/engine/SmartEngine$1$1;-><init>(Lpantanal/app/app_card/engine/SmartEngine;)V

    invoke-interface {p1, v0, v1}, Lcom/oplus/smartsdk/ISmartViewApi;->registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/os/Bundle;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->onSizeChange$lambda$16(Landroid/view/View;Landroid/os/Bundle;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final synthetic access$buildPreLogMsg(Lpantanal/app/app_card/engine/SmartEngine;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCallback$p(Lpantanal/app/app_card/engine/SmartEngine;)Lpantanal/app/app_card/OnAppCardLoadCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    return-object p0
.end method

.method public static synthetic b(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->onVisible$lambda$11$lambda$10(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private final buildPreLogMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->release$lambda$9$lambda$8(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private final createCardName(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lpantanal/app/app_card/engine/SmartEngine;Ljava/lang/String;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->setClientAliveComponent$lambda$15(Lpantanal/app/app_card/engine/SmartEngine;Ljava/lang/String;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic e(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->_init_$lambda$0(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic f(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->unsubscribe$lambda$14(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic g(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->onInVisible$lambda$13$lambda$12(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic h(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->releaseView$lambda$7(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic i(Landroid/content/Context;Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/SmartApiInfo;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lpantanal/app/app_card/engine/SmartEngine;->useSmartEngine$lambda$6$lambda$5(Landroid/content/Context;Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/SmartApiInfo;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private final isErrorCode(I)Z
    .registers 2

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngine;->Companion:Lpantanal/app/app_card/engine/SmartEngine$Companion;

    invoke-virtual {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine$Companion;->isErrorCode(I)Z

    move-result p0

    return p0
.end method

.method private final obtainViewInternal(Landroid/content/Context;Landroid/view/View;Lpantanal/app/bean/PantanalUIData;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",obtainViewInternal,data = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", extraBundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "SmartEngine"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_3c
    iget-object v3, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v3}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v4

    const/16 v5, 0x190

    const/16 v6, 0x28

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    new-instance v3, Lcom/oplus/smartsdk/SmartApiInfo;

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getData()[B

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getLayoutName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getVersion()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getThemeId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getIdMaps()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getValue()[B

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lpantanal/app/bean/PantanalUIData;->getForceChangeCardUI()Z

    move-result v17

    iget-object v0, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v18

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Lcom/oplus/smartsdk/SmartApiInfo;-><init>([BLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/HashMap;[BZLandroid/os/Bundle;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Lpantanal/app/app_card/engine/SmartEngine;->useSmartEngine(Landroid/content/Context;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_7b
    .catchall {:try_start_3c .. :try_end_7b} :catchall_7c

    goto :goto_81

    :catchall_7c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_81
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "obtainViewInternal on Failure,msg = "

    invoke-static {v3, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v3}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lz8/c;->y(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SmartEngine"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_b4
    return-void
.end method

.method private static final onInVisible$lambda$13$lambda$12(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",onInVisible card="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", v="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onInVisible(Landroid/view/View;)V

    return-void
.end method

.method private static final onSizeChange$lambda$16(Landroid/view/View;Landroid/os/Bundle;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 4

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final onVisible$lambda$11$lambda$10(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",onVisible card="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", v="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onVisible(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic release$default(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;ZILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngine;->release(Landroid/view/View;Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: release"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final release$lambda$9$lambda$8(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",release card="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", v="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

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

.method private static final releaseView$lambda$7(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    const-string v3, ",unRegisterUiCallback "

    invoke-static {v0, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->unRegisterUiCallback(Ljava/lang/String;)V

    return-void
.end method

.method private static final setClientAliveComponent$lambda$15(Lpantanal/app/app_card/engine/SmartEngine;Ljava/lang/String;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v0

    iget-object v1, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v1

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oplus.channel.client.service.PullAliveService"

    invoke-interface {p2, p0, p1, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->setBindServiceToCPData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final unsubscribe$lambda$14(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    const-string v2, "unsubscribe begin step2,card = "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method

.method private final updateDisplayContext(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private static final useSmartEngine$lambda$6$lambda$5(Landroid/content/Context;Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/SmartApiInfo;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "$hostContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this_run"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$smartApiInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    sget-object v5, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p1 .. p1}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lpantanal/app/app_card/engine/SmartApiInfoEexKt;->logInfo(Lcom/oplus/smartsdk/SmartApiInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ",begin sendCardData to engin,useSmartEngine cardName = "

    const-string v9, ", smartApiInfo="

    invoke-static {v6, v8, v7, v9, v4}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "contextDpi="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", context="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "SmartEngine"

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v5

    move-object v5, v3

    move v7, v15

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v3, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v3}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v7

    const/16 v8, 0x190

    const/16 v9, 0x33

    const/4 v11, 0x4

    move v10, v15

    invoke-static/range {v7 .. v12}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v1, v1, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/oplus/smartsdk/ISmartViewApi;->sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    return-void
.end method


# virtual methods
.method public final doLoadEngineView(Landroid/view/View;I)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/app_card/engine/SmartEngine;->smartEngineView:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",code = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",doLoadEngineView v="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smartEngineView="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SmartEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lpantanal/app/app_card/engine/SmartEngine;->isErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p1, p0, Lpantanal/app/app_card/engine/SmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",smart engine render error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    goto :goto_92

    :cond_5b
    if-eqz p1, :cond_88

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->smartEngineView:Landroid/view/View;

    if-eq v0, p1, :cond_80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpantanal/app/app_card/engine/SmartEngine;->release(Landroid/view/View;Z)V

    iput-object p1, p0, Lpantanal/app/app_card/engine/SmartEngine;->smartEngineView:Landroid/view/View;

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    invoke-interface {v0, p1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->onVisible(Landroid/view/View;)V

    goto :goto_85

    :cond_80
    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    invoke-interface {v0, p1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    :goto_85
    sget-object p1, Lh4/z;->a:Lh4/z;

    goto :goto_89

    :cond_88
    const/4 p1, 0x0

    :goto_89
    if-nez p1, :cond_92

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->callback:Lpantanal/app/app_card/OnAppCardLoadCallback;

    const-string p1, "emptyContent"

    invoke-interface {p0, p2, p1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public final obtainView(Landroid/content/Context;Landroid/view/View;Lpantanal/app/bean/PantanalUIData;)V
    .registers 16

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",obtainView,"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

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

    if-nez p3, :cond_4a

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string p1, ",obtainView, data is null,return."

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SmartEngine"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_4a
    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    invoke-direct {p0, p1, p2, p3}, Lpantanal/app/app_card/engine/SmartEngine;->obtainViewInternal(Landroid/content/Context;Landroid/view/View;Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public final onInVisible(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x2bc

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lz8/c;->o(II)V

    if-eqz p1, :cond_1e

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt8/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lt8/a;-><init>(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;I)V

    invoke-virtual {v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    :cond_1e
    return-void
.end method

.method public final onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v3

    iget-object v4, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",onSizeChange:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,view = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,data = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/android/launcher/x;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher/x;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method public final onVisible(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x258

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lz8/c;->o(II)V

    if-eqz p1, :cond_1e

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt8/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lt8/a;-><init>(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;I)V

    invoke-virtual {v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    :cond_1e
    return-void
.end method

.method public release(Landroid/view/View;Z)V
    .registers 14

    if-eqz p1, :cond_10

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/x;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/x;-><init>(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    :cond_10
    if-eqz p2, :cond_1e

    sget-object p1, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lpantanal/app/app_card/engine/SmartEngineChecker;->removeErrorCallback(Ljava/lang/String;)V

    goto :goto_38

    :cond_1e
    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object p0

    const-string p1, ",do not remove error callback."

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

    const-string v1, "SmartEngine"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_38
    return-void
.end method

.method public releaseView(Landroid/view/View;)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, ",begin to releaseView"

    invoke-static {v1, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SmartEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x44c

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngine;->release$default(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;ZILjava/lang/Object;)V

    sget-object p1, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lpantanal/app/app_card/engine/SmartEngine;)V

    invoke-virtual {p1, v0, v1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    iget-object p0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lpantanal/app/app_card/engine/SmartEngineChecker;->removeErrorCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final setClientAliveComponent(Ljava/lang/String;)V
    .registers 14

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v3

    iget-object v4, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result v4

    invoke-static {p1}, Ly8/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",setClientAliveComponent:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , packageName:"

    invoke-static {v6, v0, v4, v2, v5}, Lcom/android/common/util/h0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, " , serviceName:com.oplus.channel.client.service.PullAliveService"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/w;-><init>(Lpantanal/app/app_card/engine/SmartEngine;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method public final unsubscribe()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardName:Ljava/lang/String;

    const-string v2, "unsubscribe begin step1,card = "

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SmartEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x384

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    new-instance v1, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lpantanal/app/app_card/engine/SmartEngine;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, p0}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi$default(Lpantanal/app/app_card/engine/SmartEngineChecker;Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;ILjava/lang/Object;)V

    return-void
.end method

.method public useSmartEngine(Landroid/content/Context;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 16

    const-string v0, "hostContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartApiInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lpantanal/app/app_card/engine/SmartApiInfoEexKt;->logInfo(Lcom/oplus/smartsdk/SmartApiInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ",useSmartEngine,smartApiInfo = "

    invoke-static {v0, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SmartEngine"

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move v4, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/app_card/engine/SmartEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v4

    const/16 v5, 0x190

    const/16 v6, 0x32

    const/4 v8, 0x4

    move v7, v0

    invoke-static/range {v4 .. v9}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {p0}, Lpantanal/app/app_card/engine/SmartEngine;->buildPreLogMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lt8/b;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lt8/b;-><init>(Landroid/content/Context;Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/SmartApiInfo;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    invoke-virtual {v0, v1, v8}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method
