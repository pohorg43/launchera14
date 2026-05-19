.class Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickstepInteractionHandler"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    return-void
.end method

.method private findHostViewAncestor(Landroid/view/View;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .registers 2

    :goto_0
    if-eqz p1, :cond_11

    instance-of p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p0, :cond_9

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object p1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private logAppLaunch(Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_13
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method


# virtual methods
.method public onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->findHostViewAncestor(Landroid/view/View;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/4 v2, 0x0

    const-string v3, "QuickstepInteractionHandler"

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->clickForRecentAnimReverse()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo p0, "onClick, click for recent anim reverse, return"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v1, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    const-string v1, "Widget onInteraction"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    instance-of v4, v1, Lcom/android/launcher/Launcher;

    const/4 v5, 0x0

    if-eqz v4, :cond_46

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    :cond_46
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    instance-of v4, v1, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_55

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher/Launcher;->clearCardStateByPackageName(Ljava/lang/String;)V

    :cond_55
    if-nez v0, :cond_65

    const-string p0, "View did not have a LauncherAppWidgetHostView ancestor."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {v0, p2, p0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0

    :cond_65
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    iget-object p3, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p3

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v3, p3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v5}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    :cond_89
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_a4

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-nez v3, :cond_a4

    :try_start_93
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v6

    invoke-interface {v3, v4, v6, v5}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a4} :catch_a4

    :catch_a4
    :cond_a4
    iget-object v3, p3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    iget-object v3, p3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object p3, p3, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p3

    if-eqz p3, :cond_c3

    invoke-direct {p0, v1}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;->logAppLaunch(Ljava/lang/Object;)V

    :cond_c3
    invoke-static {v0, p2, p1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
