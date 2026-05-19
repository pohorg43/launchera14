.class public interface abstract Lcom/android/launcher3/views/AppLauncher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;


# static fields
.field public static final TAG:Ljava/lang/String; = "AppLauncher"


# direct methods
.method public static synthetic a(Lcom/android/launcher3/views/AppLauncher;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/AppLauncher;->lambda$startActivitySafely$1(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/AppLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;Ljava/lang/RuntimeException;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->lambda$startAppOrShortcutWithExecutor$2(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/views/AppLauncher;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->lambda$startActivitySafely$0(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/views/AppLauncher;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/AppLauncher;->lambda$startAppOrShortcutWithExecutor$3(Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startActivitySafely$0(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private synthetic lambda$startActivitySafely$1(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/android/launcher3/touch/OplusItemClickHandler;->getClickStartTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float p2, v4

    const v4, 0x49742400  # 1000000.0f

    div-float/2addr p2, v4

    sub-long v0, v2, v0

    long-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {}, Lcom/android/launcher3/touch/OplusItemClickHandler;->getClickStartTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-float v1, v2

    div-float/2addr v1, v4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, p2

    const/4 p2, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, p2

    const-string p2, "cmz_trace_appStart_p0(ms), click2callStartActivityLatency=%.3f, startActivityLatency=%.3f, click2EndOfStartActivityLatency=%.3f"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLauncher"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    invoke-interface {p0, p1, p3, p4}, Lcom/android/launcher3/views/AppLauncher;->updateTime(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private synthetic lambda$startAppOrShortcutWithExecutor$2(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;Ljava/lang/RuntimeException;)V
    .registers 6

    check-cast p0, Landroid/content/Context;

    const v0, 0x7f1200b5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setClickAppView(Landroid/view/View;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to launch. tag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLauncher"

    invoke-static {p1, p0, p3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$startAppOrShortcutWithExecutor$3(Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_4} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_7
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    goto :goto_1c

    :catchall_5
    move-exception p1

    goto :goto_1e

    :catch_7
    move-exception p1

    if-eqz p2, :cond_1c

    :try_start_a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    new-instance v0, Lcom/android/common/debug/c;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher3/views/AppLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;Ljava/lang/RuntimeException;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_5

    throw p1
.end method

.method public static updateTimeStamp()V
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_RECENT_FINISH_TIMESTAMP:J

    return-void
.end method


# virtual methods
.method public addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p0

    iget-object v0, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->addSeqId(Landroid/app/ActivityOptions;)V

    return-object p1
.end method

.method public beforeStartActivity(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 6
    .param p2  # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_31

    :cond_2e
    move v2, p0

    move p0, v1

    move v0, p0

    :goto_31
    invoke-static {p1, p0, v0, v2, p2}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_43

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :cond_43
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    new-instance p1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance p2, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p2
.end method

.method public isAppBlockedForSafeMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 20
    .param p3  # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "AppLauncher"

    move-object v12, v7

    check-cast v12, Landroid/content/Context;

    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/AppLauncher;->isAppBlockedForSafeMode()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_25

    invoke-static {v12, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_25

    const v0, 0x7f120515

    invoke-static {v12, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v13

    :cond_25
    invoke-interface {v7, v9}, Lcom/android/launcher3/views/AppLauncher;->beforeStartActivity(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v14, 0x1

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isMdpLow()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz v8, :cond_44

    invoke-interface {v7, v8, v10}, Lcom/android/launcher3/views/AppLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/launcher3/views/AppLauncher;->addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_49

    :cond_44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_49
    move-object v15, v0

    goto :goto_7a

    :cond_4b
    if-eqz v8, :cond_57

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-nez v0, :cond_57

    move v0, v14

    goto :goto_58

    :cond_57
    move v0, v13

    :goto_58
    if-eqz v0, :cond_67

    invoke-interface {v7, v8, v10}, Lcom/android/launcher3/views/AppLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/android/launcher3/views/AppLauncher;->addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_6c

    :cond_67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_6c
    if-nez v0, :cond_79

    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    :cond_79
    move-object v15, v1

    :goto_7a
    invoke-virtual {v15}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    instance-of v0, v12, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_8a

    move-object v0, v12

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/BaseQuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;

    :cond_8a
    const/4 v6, 0x0

    if-nez v10, :cond_8f

    move-object v1, v6

    goto :goto_92

    :cond_8f
    iget-object v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v1, v0

    :goto_92
    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v8, :cond_b2

    const v0, 0x51aa1e07

    invoke-virtual {v8, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b2

    invoke-virtual {v8, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_b2

    check-cast v0, Ljava/lang/Long;

    const-string/jumbo v2, "up_time_icon"

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_b2
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v8, :cond_ca

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_ca

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_ca
    instance-of v0, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_d5

    const/4 v0, 0x3

    const-string/jumbo v2, "start_reason"

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_d5
    :try_start_d5
    instance-of v0, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_eb

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_e0

    if-ne v0, v14, :cond_eb

    :cond_e0
    move-object v0, v10

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-nez v0, :cond_eb

    move v0, v14

    goto :goto_ec

    :cond_eb
    move v0, v13

    :goto_ec
    if-nez v0, :cond_10e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_10e

    invoke-static {v12}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_10e

    move v2, v14

    goto :goto_10f

    :cond_10e
    move v2, v13

    :goto_10f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivitySafely -- user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isStartDeepProtectedApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_143

    new-instance v0, Lcom/android/common/debug/c;

    invoke-direct {v0, v7, v9, v15, v10}, Lcom/android/common/debug/c;-><init>(Lcom/android/launcher3/views/AppLauncher;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, p3

    move-object v7, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/views/AppLauncher;->startAppOrShortcutWithExecutor(Landroid/view/View;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Runnable;)V
    :try_end_141
    .catch Ljava/lang/NullPointerException; {:try_start_d5 .. :try_end_141} :catch_1dd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d5 .. :try_end_141} :catch_1dd
    .catch Ljava/lang/SecurityException; {:try_start_d5 .. :try_end_141} :catch_1dd

    goto/16 :goto_1dc

    :cond_143
    const-string/jumbo v3, "startActivitySafely e = "

    if-eqz v1, :cond_193

    :try_start_148
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_150
    .catch Ljava/lang/NullPointerException; {:try_start_148 .. :try_end_150} :catch_1dd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_148 .. :try_end_150} :catch_1dd
    .catch Ljava/lang/SecurityException; {:try_start_148 .. :try_end_150} :catch_1dd

    if-eqz v0, :cond_153

    goto :goto_193

    :cond_153
    if-eqz v2, :cond_17c

    :try_start_155
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v2, v13, v4}, Lcom/oplus/app/OPlusAccessControlManager;->addEncryptPass(Ljava/lang/String;II)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_168} :catch_169

    goto :goto_17c

    :catch_169
    move-exception v0

    :try_start_16a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17c
    :goto_17c
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, v15}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    invoke-interface {v7, v12, v15, v10}, Lcom/android/launcher3/views/AppLauncher;->updateTime(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_192
    .catch Ljava/lang/NullPointerException; {:try_start_16a .. :try_end_192} :catch_1dd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16a .. :try_end_192} :catch_1dd
    .catch Ljava/lang/SecurityException; {:try_start_16a .. :try_end_192} :catch_1dd

    goto :goto_1dc

    :cond_193
    :goto_193
    if-eqz v2, :cond_1c1

    :try_start_195
    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1a6

    sget v1, Lcom/oplus/app/OPlusAccessControlManager;->USER_CURRENT:I

    goto :goto_1aa

    :cond_1a6
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :goto_1aa
    invoke-virtual {v0, v2, v13, v1}, Lcom/oplus/app/OPlusAccessControlManager;->addEncryptPass(Ljava/lang/String;II)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1ad} :catch_1ae

    goto :goto_1c1

    :catch_1ae
    move-exception v0

    :try_start_1af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c1
    :goto_1c1
    new-instance v0, Lcom/android/exceptionmonitor/util/e;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v4, p2

    move-object v5, v15

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/e;-><init>(Lcom/android/launcher3/views/AppLauncher;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/views/AppLauncher;->startAppOrShortcutWithExecutor(Landroid/view/View;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Runnable;)V
    :try_end_1dc
    .catch Ljava/lang/NullPointerException; {:try_start_1af .. :try_end_1dc} :catch_1dd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1af .. :try_end_1dc} :catch_1dd
    .catch Ljava/lang/SecurityException; {:try_start_1af .. :try_end_1dc} :catch_1dd

    :goto_1dc
    return v14

    :catch_1dd
    move-exception v0

    const v1, 0x7f1200b5

    invoke-static {v12, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setClickAppView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v13
.end method

.method public startAppOrShortcutWithExecutor(Landroid/view/View;Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Runnable;)V
    .registers 14

    const-string v0, "anim_from_item_click"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v7, Lcom/android/exceptionmonitor/util/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/e;-><init>(Lcom/android/launcher3/views/AppLauncher;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Intent;)V

    if-eqz v0, :cond_26

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_29

    :cond_26
    invoke-virtual {v7}, Lcom/android/exceptionmonitor/util/e;->run()V

    :goto_29
    invoke-static {p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_3a

    invoke-static {}, Lcom/android/launcher3/views/AppLauncher;->updateTimeStamp()V

    :cond_3a
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12

    :try_start_0
    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/LauncherApps;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "AppLauncher"

    const-string p2, "Failed to start shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_43

    :try_start_4
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    move-object v1, p3

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v2, p0

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher3/views/AppLauncher;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_3a

    :cond_34
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_3e

    :goto_3a
    :try_start_3a
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_4a

    :catchall_3e
    move-exception p2

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p2
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_43} :catch_43

    :catch_43
    move-exception p2

    invoke-interface {p0, p1, p3}, Lcom/android/launcher3/views/AppLauncher;->onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_4b

    :goto_4a
    return-void

    :cond_4b
    throw p2
.end method

.method public updateTime(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5
    .param p3  # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_12

    new-instance p2, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {p2}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-interface {p0, v0, p3, p2}, Lcom/android/launcher3/views/AppLauncher;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    :cond_12
    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->supportFastGesture()Z

    move-result p0

    if-eqz p0, :cond_31

    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_31

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RotationTouchHelper;->enableMultipleRegions(ZZ)V

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->updateStartAppsTimeMillis()V

    goto :goto_34

    :cond_31
    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->updateNormalStartAppsTimeMillis()V

    :goto_34
    return-void
.end method
