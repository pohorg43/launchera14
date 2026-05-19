.class public final Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field private static final CLASS_NAME_SMART_VIEW_IMPL:Ljava/lang/String; = "com.oplus.smartengine.SmartViewImpl"

.field public static final INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

.field private static final SMART_ENGINE_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.smartengine"

.field private static final TAG:Ljava/lang/String; = "SmartEngineChecker"

.field private static final errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

.field private static final errorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lpantanal/app/app_card/engine/ISmartEngineError;",
            ">;"
        }
    .end annotation
.end field

.field private static initialed:Z

.field private static smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    invoke-direct {v0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    new-instance v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker$errorCallback$1;

    invoke-direct {v0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker$errorCallback$1;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi$lambda$3(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final synthetic access$getErrorCallbacks$p()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic b(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->release$lambda$2(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->init$lambda$0(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->init$lambda$1(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private static final getSmartApi$lambda$3(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/SmartAPICallback;->onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic getSmartEngineManager$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static final init$lambda$0(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->setCanLog(Z)V

    return-void
.end method

.method private static final init$lambda$1(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    invoke-interface {p0, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

    return-void
.end method

.method private static final release$lambda$2(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

    return-void
.end method


# virtual methods
.method public final addErrorCallback(Ljava/lang/String;Lpantanal/app/app_card/engine/ISmartEngineError;)V
    .registers 14

    const-string p0, "cardName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "addErrorCallback: cardName = "

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SmartEngineChecker"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 13

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v1, "SmartEngineChecker"

    const-string v2, "getSmartApi..."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v0, :cond_5e

    :try_start_1c
    const-string v1, "SmartEngineChecker"

    const-string v2, "getSmartApi: get instance local "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string p0, "com.oplus.smartengine.SmartViewImpl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.oplus.smartsdk.ISmartViewApi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/smartsdk/ISmartViewApi;

    invoke-interface {p1, p0}, Lcom/oplus/smartsdk/SmartAPICallback;->onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_41} :catch_42

    goto :goto_68

    :catch_42
    move-exception p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "get SmartViewImpl has error: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SmartEngineChecker"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_68

    :cond_5e
    if-eqz v0, :cond_68

    new-instance p0, Lcom/android/launcher/settings/g;

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/g;-><init>(Lcom/oplus/smartsdk/SmartAPICallback;)V

    invoke-virtual {v0, p0}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public final getSmartEngineContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartEngineManager;->getHostContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final getSmartEngineManager()Lcom/oplus/smartsdk/SmartEngineManager;
    .registers 1

    sget-object p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-object p0
.end method

.method public final hasSmartEngineApk(Landroid/content/Context;)Z
    .registers 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "appContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "appContext.packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.oplus.smartengine"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_19

    if-eqz p1, :cond_34

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p1

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hasSmartEngineApk e: "

    invoke-static {v1, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SmartEngineChecker"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_34
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 15

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->initialed:Z

    if-eqz v0, :cond_1c

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SmartEngineChecker"

    const-string v3, "Smart Engine already initialzed."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1c
    const/4 v0, 0x1

    sput-boolean v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->initialed:Z

    sget-object v0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v0, :cond_a3

    invoke-virtual {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->hasSmartEngineApk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartEngine init "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", contextDpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", applicationContext="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", applicationContextDpi="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SmartEngineChecker"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Lcom/oplus/smartsdk/SmartEngineManager;

    invoke-direct {v1, p1}, Lcom/oplus/smartsdk/SmartEngineManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    :cond_8d
    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p1, "init() : hasSmartEngineApk = "

    invoke-static {p1, v0}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SmartEngineChecker"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a3
    sget-object p1, Landroidx/constraintlayout/core/state/f;->b:Landroidx/constraintlayout/core/state/f;

    invoke-virtual {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    sget-object p1, Landroidx/constraintlayout/core/state/g;->b:Landroidx/constraintlayout/core/state/g;

    invoke-virtual {p0, p1}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method public final release()V
    .registers 2

    sget-object v0, Landroidx/constraintlayout/core/state/e;->e:Landroidx/constraintlayout/core/state/e;

    invoke-virtual {p0, v0}, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    sget-object p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    const/4 p0, 0x0

    sput-boolean p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->initialed:Z

    return-void
.end method

.method public final removeErrorCallback(Ljava/lang/String;)V
    .registers 13

    const-string p0, "cardName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "removeErrorCallback: cardName = "

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SmartEngineChecker"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setSmartEngineManager(Lcom/oplus/smartsdk/SmartEngineManager;)V
    .registers 2

    sput-object p1, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-void
.end method
