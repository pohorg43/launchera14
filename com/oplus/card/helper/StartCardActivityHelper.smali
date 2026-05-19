.class public Lcom/oplus/card/helper/StartCardActivityHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;
    }
.end annotation


# static fields
.field private static final FAST_CLICK_THRESHOLD:I = 0xc8

.field public static final SOURCE_NORMAL_CARD:I = 0x0

.field public static final SOURCE_QUICK_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StartCardActivityHelper"


# instance fields
.field private mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p1, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->setListener(Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$startCardActivity$1(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p0

    iget-object v0, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->addSeqId(Landroid/app/ActivityOptions;)V

    return-object p1
.end method

.method public static synthetic b(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$startCardActivity$3(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$shellTransitionStart$7(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$shellTransitionStartOnMainThread$4(Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$startCardActivity$2(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$getRectOnMainThread$0(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private findLauncherCardView([I)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/CellLayout;->findCard([I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v2

    if-eqz v2, :cond_1a

    return-object v2

    :cond_37
    return-object v1
.end method

.method public static synthetic g(Lcom/oplus/card/helper/StartCardActivityHelper;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$shellTransitionStart$5(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const-wide/16 v0, 0x8

    const-string v2, "getPkgIfSchemeLaunch"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3d

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private static getRectOnMainThread(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_15} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "getRectOnMainThread e = "

    const-string v2, "StartCardActivityHelper"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v1, v3, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetViewToOpen(Landroid/view/View;[I)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->isGroupCard()Z

    move-result v0

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getChildView()Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {p1}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1f
    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object p0

    :goto_23
    return-object p0
.end method

.method public static synthetic h(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->lambda$shellTransitionStart$6(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$getRectOnMainThread$0(Landroid/view/View;Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$shellTransitionStart$5(Z)Ljava/lang/Boolean;
    .registers 4

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    :cond_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$shellTransitionStart$6(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "StartCardActivityHelper"

    const-string v1, "shellTransitionStart-startActivity: run callback delay."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$shellTransitionStart$7(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Boolean;)V
    .registers 4

    iget-object p3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$shellTransitionStartOnMainThread$4(Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->shellTransitionStart(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startCardActivity$1(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$startCardActivity$2(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/oplus/card/helper/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oplus/card/helper/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_21

    :cond_19
    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V

    :goto_21
    return-void
.end method

.method private synthetic lambda$startCardActivity$3(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_20

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addOnResumeCallback startCardActivity Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StartCardActivityHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method private setLastStartCardNull()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    return-void
.end method

.method private shellTransitionStart(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :cond_1e
    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isClosingAppSameAsPendingOpenApp(Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_2b

    :cond_2a
    move v2, v0

    :goto_2b
    sget-object v3, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v5, Lcom/android/launcher3/e0;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher3/e0;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Z)V

    new-instance v2, Lcom/oplus/card/helper/a;

    const/4 v6, 0x2

    invoke-direct {v2, p0, p1, p2, v6}, Lcom/oplus/card/helper/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4, p1, v5, v2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_45

    return v1

    :cond_45
    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v2, 0x5

    new-instance v3, Lcom/android/launcher3/r2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher3/r2;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    return v1

    :cond_5d
    return v0
.end method

.method private shellTransitionStartOnMainThread(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5

    :try_start_0
    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iget-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseLastIconSurfaceSafely(Landroid/view/View;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_20

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->shellTransitionStart(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_20
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/testing/l;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_35} :catch_36

    return p0

    :catch_36
    move-exception p0

    const-string p1, "shellTransitionStart error:"

    const-string p2, "StartCardActivityHelper"

    invoke-static {p1, p0, p2}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz p3, :cond_13

    :try_start_10
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_13
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v2, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->shellTransitionStartOnMainThread(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-object v2

    :cond_1f
    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v3

    if-nez v3, :cond_55

    sget-boolean v3, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v3, :cond_55

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_44

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oplus/card/helper/a;

    invoke-direct {v4, p0, v2, p2, v0}, Lcom/oplus/card/helper/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_5d

    :cond_44
    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v4, Lcom/oplus/card/helper/a;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, p2, v5}, Lcom/oplus/card/helper/a;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_5d

    :cond_55
    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v2, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5d} :catch_5e

    :goto_5d
    return-object v2

    :catch_5e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCardActivity Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StartCardActivityHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_78
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateStartActivityTimeStamp(Landroid/os/Bundle;)V
    .registers 2

    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_11

    invoke-static {}, Lcom/android/launcher3/views/AppLauncher;->updateTimeStamp()V

    :cond_11
    return-void
.end method


# virtual methods
.method public clearLastStart()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->setLastStartCardNull()V

    :cond_7
    return-void
.end method

.method public clearLastStart(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->clearLastStartByPackageName(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public clearLastStartByPackageName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->setLastStartCardNull()V

    :cond_1b
    return-void
.end method

.method public getLastStartCard(Ljava/lang/String;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v2, v2, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object p1, p1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->cardView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->isGroupCard()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/OplusWorkspace;->getCardRelativePageIndex(Lcom/oplus/card/manager/domain/ICardView;)I

    move-result p1

    if-ne v0, p1, :cond_54

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->cardView:Landroid/view/View;

    return-object p0

    :cond_54
    const-string p0, "getLastStartCard: Ignore card appear in other page. currentPageIndex = "

    const-string v2, ", cardPageIndex = "

    const-string v3, "StartCardActivityHelper"

    invoke-static {p0, v0, v2, p1, v3}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-object v1

    :cond_5e
    iget-object p1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object p1, p1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->info:[I

    invoke-direct {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_67
    return-object v1
.end method

.method public getLastStartCard()Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    return-object p0
.end method

.method public isAppStartFromCard(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v0, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v1, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object v1, v1, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onSeedStartActivity(Landroid/view/View;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeedStartActivity, view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "panta-sugg-"

    const-string v2, "StartCardActivityHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-wide v3, v3, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0xc8

    cmp-long v0, v0, v3

    if-gez v0, :cond_35

    const-string p0, "Ignore as fast click"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    if-eqz p1, :cond_46

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v0, :cond_46

    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_46
    sget-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/util/StartActivityCookieHelper;->setMStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p1, :cond_65

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_66

    :cond_65
    move-object v0, v1

    :goto_66
    if-eqz v0, :cond_6c

    invoke-static {p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->getRectOnMainThread(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    :cond_6c
    invoke-direct {p0, p2, v0, v1}, Lcom/oplus/card/helper/StartCardActivityHelper;->startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_86

    if-eqz v0, :cond_86

    const-string p2, "onSeedStartActivity: view has found"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p2, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    invoke-direct {p2, p0, p1, v0}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    goto :goto_8c

    :cond_86
    invoke-virtual {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->onStartActivityListDirect(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->setLastStartCardNull()V

    :goto_8c
    return-void
.end method

.method public onStartActivityList(Ljava/util/List;[ILandroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;[I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    const-string v1, "StartCardActivityHelper"

    if-eqz v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-wide v4, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1f

    const-string p0, "Ignore as fast click"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-direct {p0, p3, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->getTargetViewToOpen(Landroid/view/View;[I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Lcom/android/statistics/LauncherStatistics;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/String;)V

    :cond_36
    sget-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/util/StartActivityCookieHelper;->setMStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p3, :cond_55

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p3, v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_56

    :cond_55
    move-object v0, v2

    :goto_56
    if-eqz v0, :cond_5c

    invoke-static {p3}, Lcom/oplus/card/helper/StartCardActivityHelper;->getRectOnMainThread(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    :cond_5c
    invoke-direct {p0, p1, v0, v2}, Lcom/oplus/card/helper/StartCardActivityHelper;->startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p3, :cond_76

    if-eqz p1, :cond_76

    const-string v0, "onStartCardActivity: find card"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;[I)V

    iput-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    goto :goto_79

    :cond_76
    invoke-direct {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->setLastStartCardNull()V

    :goto_79
    return-void
.end method

.method public onStartActivityListDirect(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->startCardActivity(Ljava/util/List;Landroid/os/Bundle;Landroid/graphics/Rect;)Landroid/content/Intent;

    return-void
.end method

.method public onStartCardActivity(Landroid/content/Intent;[ILandroid/view/View;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCardActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartCardActivityHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    if-eqz v0, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    iget-wide v4, v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_33

    const-string p0, "Ignore as fast click"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    invoke-direct {p0, p3, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->getTargetViewToOpen(Landroid/view/View;[I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/oplus/card/helper/StartCardActivityHelper;->findLauncherCardView([I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v2

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Lcom/android/statistics/LauncherStatistics;->statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/String;)V

    :cond_4a
    sget-object v0, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/common/util/StartActivityCookieHelper;->setMStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz p3, :cond_68

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p3, v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->addSeqIdToOptions(Lcom/android/launcher3/util/ActivityOptionsWrapper;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    :cond_68
    if-eqz p3, :cond_7e

    const-string v0, "onStartCardActivity: find card"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/oplus/card/helper/StartCardActivityHelper;->getRectOnMainThread(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    new-instance v0, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;-><init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/view/View;Landroid/content/Intent;[I)V

    iput-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLastStartCard:Lcom/oplus/card/helper/StartCardActivityHelper$CardLastStart;

    goto :goto_81

    :cond_7e
    invoke-direct {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->setLastStartCardNull()V

    :goto_81
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_86
    invoke-direct {p0, p1, v2}, Lcom/oplus/card/helper/StartCardActivityHelper;->shellTransitionStartOnMainThread(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_a0

    const-string p2, "onStartCardActivity, start activity immediately."

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lcom/oplus/card/helper/StartCardActivityHelper;->updateStartActivityTimeStamp(Landroid/os/Bundle;)V
    :try_end_99
    .catch Landroid/content/ActivityNotFoundException; {:try_start_86 .. :try_end_99} :catch_9a

    goto :goto_a0

    :catch_9a
    move-exception p2

    const-string p3, "onStartCardActivity not found."

    invoke-static {v1, p3, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a0
    :goto_a0
    iget-object p0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/oplus/card/helper/StartCardActivityHelper;->getPkgIfSchemeLaunch(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onStartIntentDirect(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartIntentDirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartCardActivityHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/helper/StartCardActivityHelper;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->setLastStartCardNull()V

    return-void
.end method
