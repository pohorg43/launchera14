.class public Lcom/android/common/util/LaterInitHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "LaterInitHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/LaterInitHelper;->lambda$initOnWorker$0()V

    return-void
.end method

.method public static initOnWorker()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/android/common/util/x;->a:Lcom/android/common/util/x;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$initOnWorker$0()V
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->start(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/model/ChildrenModeManager;->registerChildrenModeObserver()V

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/LauncherSimpleModeHelper;->initSimpleModeGuidCardState(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->initPreAssetPath(Landroid/content/Context;)Ljava/lang/String;

    :cond_26
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportTTSatelliteDevice()Z

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, " initOnWorker isDeviceSupportSatellite = "

    const-string v3, "LaterInitHelper"

    invoke-static {v2, v1, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_37
    if-eqz v1, :cond_40

    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/model/SatelliteStateManage;->initSatelliteProxy(Landroid/content/Context;)V

    :cond_40
    return-void
.end method
