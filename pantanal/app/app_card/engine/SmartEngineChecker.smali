.class public final Lpantanal/app/app_card/engine/SmartEngineChecker;
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

.field public static final INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

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

    new-instance v0, Lpantanal/app/app_card/engine/SmartEngineChecker;

    invoke-direct {v0}, Lpantanal/app/app_card/engine/SmartEngineChecker;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->INSTANCE:Lpantanal/app/app_card/engine/SmartEngineChecker;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    new-instance v0, Lpantanal/app/app_card/engine/SmartEngineChecker$errorCallback$1;

    invoke-direct {v0}, Lpantanal/app/app_card/engine/SmartEngineChecker$errorCallback$1;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/app_card/engine/SmartEngineChecker;->init$lambda$0(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final synthetic access$getErrorCallbacks$p()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic b(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi$lambda$5(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic c(ZLpantanal/app/ILaunchInterceptor;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->init$lambda$1(ZLpantanal/app/ILaunchInterceptor;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/app_card/engine/SmartEngineChecker;->release$lambda$2(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static synthetic getSmartApi$default(Lpantanal/app/app_card/engine/SmartEngineChecker;Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V

    return-void
.end method

.method private static final getSmartApi$lambda$5(Lcom/oplus/smartsdk/SmartAPICallback;Lcom/oplus/smartsdk/ISmartViewApi;)V
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

.method private static final init$lambda$1(ZLpantanal/app/ILaunchInterceptor;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 4

    new-instance v0, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;

    invoke-direct {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngineChecker$init$2$1;-><init>(ZLpantanal/app/ILaunchInterceptor;)V

    invoke-interface {p2, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    invoke-interface {p2, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

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

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getSmartApi(Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;)V
    .registers 14

    const-string p0, "callback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v0, ",getSmartApi..."

    invoke-static {p1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/app_card/engine/SmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v0, :cond_7d

    :try_start_20
    const-string v1, "SmartEngineChecker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",getSmartApi: get instance local "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    invoke-interface {p2, p0}, Lcom/oplus/smartsdk/SmartAPICallback;->onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_57

    goto :goto_5c

    :catchall_57
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_5c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_87

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, ",get SmartViewImpl has error: "

    invoke-static {p1, p2, p0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    goto :goto_87

    :cond_7d
    if-eqz v0, :cond_87

    new-instance p0, Landroidx/core/view/a;

    invoke-direct {p0, p2}, Landroidx/core/view/a;-><init>(Lcom/oplus/smartsdk/SmartAPICallback;)V

    invoke-virtual {v0, p0}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public final getSmartEngineContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

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

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

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
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_15} :catch_19

    if-eqz p1, :cond_34

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p1

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hasSmartEngineApk,NameNotFoundException,e: "

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

.method public final init(Landroid/content/Context;Lpantanal/app/ILaunchInterceptor;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v2, Lpantanal/app/app_card/engine/SmartEngineChecker;->initialed:Z

    if-eqz v2, :cond_20

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SmartEngineChecker"

    const-string v5, "Smart Engine already initialzed."

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_20
    const/4 v2, 0x1

    sput-boolean v2, Lpantanal/app/app_card/engine/SmartEngineChecker;->initialed:Z

    sget-object v3, Lpantanal/app/app_card/engine/SmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    if-nez v3, :cond_a7

    invoke-virtual/range {p0 .. p1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->hasSmartEngineApk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_91

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smartEngine init "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " context="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", contextDpi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", applicationContext="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", applicationContextDpi="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SmartEngineChecker"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v4, Lcom/oplus/smartsdk/SmartEngineManager;

    invoke-direct {v4, v1}, Lcom/oplus/smartsdk/SmartEngineManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Lpantanal/app/app_card/engine/SmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    :cond_91
    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v1, "init() : hasSmartEngineApk = "

    invoke-static {v1, v3}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "SmartEngineChecker"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a7
    sget-object v1, Landroidx/constraintlayout/core/state/c;->e:Landroidx/constraintlayout/core/state/c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi$default(Lpantanal/app/app_card/engine/SmartEngineChecker;Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;ILjava/lang/Object;)V

    new-instance v1, Lt8/c;

    const/4 v4, 0x0

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct {v1, v6, v5, v4}, Lt8/c;-><init>(ZLpantanal/app/ILaunchInterceptor;I)V

    invoke-static {v0, v3, v1, v2, v3}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi$default(Lpantanal/app/app_card/engine/SmartEngineChecker;Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;ILjava/lang/Object;)V

    return-void
.end method

.method public final release()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SmartEngineChecker"

    const-string v2, "begin release"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Landroidx/constraintlayout/core/state/d;->e:Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lpantanal/app/app_card/engine/SmartEngineChecker;->getSmartApi$default(Lpantanal/app/app_card/engine/SmartEngineChecker;Ljava/lang/String;Lcom/oplus/smartsdk/SmartAPICallback;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    const/4 p0, 0x0

    sput-boolean p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->initialed:Z

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

    sget-object p0, Lpantanal/app/app_card/engine/SmartEngineChecker;->errorCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setSmartEngineManager(Lcom/oplus/smartsdk/SmartEngineManager;)V
    .registers 2

    sput-object p1, Lpantanal/app/app_card/engine/SmartEngineChecker;->smartEngineManager:Lcom/oplus/smartsdk/SmartEngineManager;

    return-void
.end method
