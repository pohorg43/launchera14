.class public Lcom/android/launcher3/touch/OplusItemClickHandler;
.super Lcom/android/launcher3/touch/ItemClickHandler;
.source ""


# static fields
.field private static final FAST_CLICK_THRESHOLD:J = 0xc8L

.field private static final FAST_CLICK_THRESHOLD_WHEN_SPLIT_ITEM:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "OplusItemClickHandler"

.field private static sClickStartTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sCurLaunchAppName:Ljava/lang/StringBuffer;

.field private static sFastClickTimestamp:J

.field private static sFastClickTimestampForExpand:J

.field private static sIsTouchStartedOneHandedModeInput:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sClickStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sCurLaunchAppName:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/touch/ItemClickHandler;-><init>()V

    return-void
.end method

.method private static canStartApp(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z
    .registers 7

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAllAppsViewInSelectState()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v3, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->selectView(Landroid/view/View;)V

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string p1, "isAllAppsViewInSelectState && ActivityAllAppsContainerView instanceof OplusLauncherAllAppsContainerView"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2c
    if-nez v0, :cond_33

    if-eqz v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x1

    return p0

    :cond_33
    :goto_33
    instance-of v2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_79

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_63

    invoke-static {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v3

    if-eqz v3, :cond_63

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v2

    if-nez v2, :cond_63

    sget-object p1, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v0, "info != null && isRecommendItemInfo && !isFromOplusAppStore"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1204dc

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_63
    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_6c
    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_79

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectView(Landroid/view/View;)V

    :cond_79
    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string p1, "isToggleBarState || isPagePreviewState"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static getClickStartTime()J
    .registers 2

    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sClickStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurLaunchAppName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sCurLaunchAppName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/touch/OplusItemClickHandler;->lambda$onClick$0()V

    return-void
.end method

.method public static synthetic i(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/touch/OplusItemClickHandler;->lambda$onClickInner$1(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static isFastClick()Z
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/launcher3/touch/OplusItemClickHandler;->sFastClickTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sFastClickTimestamp:J

    const/4 v0, 0x0

    return v0

    :cond_19
    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v1, "Click too fast, ignore..."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static isFastClickOnExpand()Z
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/launcher3/touch/OplusItemClickHandler;->sFastClickTimestampForExpand:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sFastClickTimestampForExpand:J

    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v1, "System.currentTimeMillis() - sFastClickTimestampForExpand > FAST_CLICK_THRESHOLD_WHEN_SPLIT_ITEM"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_20
    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v1, "Click too fast on expand, ignore..."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static isInstallStateIllegal(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0, p1}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v0, "isInstallStateIllegal, ["

    const-string v1, "] is installed, install state is illegal: "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", verify it."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public static isTouchStartedOneHandedModeInput(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sIsTouchStartedOneHandedModeInput:Z

    return-void
.end method

.method public static synthetic j(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->lambda$onClickInner$2(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onClick$0()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const-class v1, Landroid/hardware/camera2/IOplusCameraManager$Cmd;

    const-string v2, "CMD_PRE_CLOSE"

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/IOplusCameraManager$Cmd;

    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/camera2/OplusCameraManager;->sendOplusExtCamCmd(Landroid/content/Context;Landroid/hardware/camera2/IOplusCameraManager$Cmd;[I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preOpenCamera error"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method private static synthetic lambda$onClickInner$1(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onClickInner$2(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    return-void
.end method

.method public static onClick(Landroid/view/View;)V
    .registers 11

    sget-object v0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick begin"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_31

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isCameraPreopencloseEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    instance-of v1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oplus.camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v2, Lcom/android/common/util/a;->c:Lcom/android/common/util/a;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_31
    instance-of v1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_45

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->clickForRecentAnimReverse()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo p0, "onClick, click for recent anim reverse, return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_45
    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    if-eqz v1, :cond_a2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sget-object v7, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->Companion:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;

    const-string v9, "HIDDEN_TIP_REQUIRED_CLICK_ICON"

    invoke-direct {v8, v9}, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_64
    sget-object v7, Lcom/android/launcher3/touch/OplusItemClickHandler;->sClickStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v7, Lcom/android/launcher3/touch/OplusItemClickHandler;->sCurLaunchAppName:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    sget-object v7, Lcom/android/launcher3/touch/OplusItemClickHandler;->sCurLaunchAppName:Ljava/lang/StringBuffer;

    move-object v8, p0

    check-cast v8, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_94

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmz_trace_appStart_p0, start, now: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    const-string v5, "____cmz_appStart_p0____"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v5, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v5}, Lcom/android/common/util/LauncherBooster;->getSfEx()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->callSetAnimStatus()V

    :cond_a2
    invoke-static {p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->onClickInner(Landroid/view/View;)V

    if-eqz v1, :cond_d2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->sClickStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float p0, v3

    const v1, 0x49742400  # 1000000.0f

    div-float/2addr p0, v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_d2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "cmz_trace_appStart_p0(ms), timeTotalEx_onClickInner=%.3f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    return-void
.end method

.method public static onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-static {p2, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->canStartApp(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "the application\'s shortcut fails to start when clicked, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {p1, p2}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->injectExpandItemClicked(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click action injected expandItem = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_43

    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_43

    sget-object p1, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string p2, "SubscribeItem click!"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    return-void

    :cond_43
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static onClickAppShortcutAutoInstallInject(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)Z
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/touch/ItemClickHandler;->startMarketIntentForPackage(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    goto :goto_26

    :cond_1e
    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onClickAppShortcut targetComponent is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static onClickAppShortcutDeepShortcutInject(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V
    .registers 4

    instance-of v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;

    if-eqz v0, :cond_c

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickDeepShortcutOnPopupWindow(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1d

    :cond_c
    instance-of p0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_1d

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x65

    if-ne p0, v0, :cond_1d

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static onClickAppShortcutPromiseOrInstallSessionActiveInject(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string p1, "isOplusExpansionDownloadingApp"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->isInstallStateIllegal(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->verifyIllegalInstallState(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)V

    goto :goto_41

    :cond_25
    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->onClickDownloadApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_41

    :cond_2d
    invoke-static {p1, p2}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    sget-object p1, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onClickAppShortcut -- shortcut is installed but may has FLAG_INSTALL_SESSION_ACTIVE flag! Update status."

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    :cond_41
    :goto_41
    const/4 p0, 0x1

    return p0
.end method

.method public static onClickBigFolderSmallIcon(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p3, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_1e
    return p0

    :cond_1f
    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-static {p2, p3, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->isInstallStateIllegal(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)Z

    move-result p0

    if-eqz p0, :cond_2d

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-static {p2, p3, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->verifyIllegalInstallState(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)V

    goto :goto_34

    :cond_2d
    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->onClickDownloadApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :goto_34
    return v1

    :cond_35
    invoke-static {p1, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result p3

    if-eqz p3, :cond_54

    sget-object p3, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v0, "FolderRecommendUtils.isRecommendItemInfo"

    invoke-static {p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIndex()I

    move-result p0

    sget-object p3, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p3}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p3

    rem-int/2addr p0, p3

    invoke-static {p2, p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->jumpToDetail(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :cond_54
    iget-object p3, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_63

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_63
    return p0
.end method

.method public static onClickInner(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "Icon"

    if-nez v0, :cond_11

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick -- view get window token is null, return"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getLauncherActivityContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick -- workspace is switching state, return"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v2

    if-eqz v2, :cond_47

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick -- guide is showing, return"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isLoadingViewShowing()Z

    move-result v2

    if-eqz v2, :cond_56

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick -- Loading view is showing, return"

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_56
    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_93

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v2

    instance-of v4, v2, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz v4, :cond_82

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_82

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v0, "Folder onClick to back togglebar last state, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_82
    if-eqz v2, :cond_93

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->supportIconSelected()Z

    move-result v2

    if-nez v2, :cond_93

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the togglebar does not support icon Selected, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_93
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v2, :cond_b0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b0

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the system desktop is locked, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b0
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_c1

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick -- launcher is in state overview, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c1
    instance-of v1, p0, Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_e2

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_e2

    sget-boolean v1, Lcom/android/launcher3/touch/OplusItemClickHandler;->sIsTouchStartedOneHandedModeInput:Z

    if-eqz v1, :cond_e2

    sput-boolean v2, Lcom/android/launcher3/touch/OplusItemClickHandler;->sIsTouchStartedOneHandedModeInput:Z

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick-- touch started oneHandedModeInput, hotSet icon not response onClick, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e2
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_103

    sget-object v4, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick, tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    instance-of v4, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_148

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_148

    invoke-static {}, Lcom/android/common/util/IconUtils;->getZoomWindowPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_148

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/common/util/IconUtils;->getZoomWindowPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "same app click zoom window interception event return, packageName = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_148
    sget-object v4, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher/operators/GeneralCustomizer;->isInterceptItemClick(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the general customizer is an event that intercepts item clicks, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v4

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getLauncherActivityContext(Landroid/view/View;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isInterceptItemClickFromHighTempreatureProtection(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the high temperature protection state intercepts the click event of the item, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_178
    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v5

    if-nez v5, :cond_18d

    sget-object v5, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v6, "Hotseat_expand"

    const-string/jumbo v7, "onclick item,setEnableUpdateExpandFlag true"

    invoke-static {v6, v5, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    :cond_18d
    instance-of v4, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v4, :cond_1a6

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->onClickAppShortcut(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result p0

    if-eqz p0, :cond_20b

    invoke-static {v1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_20b

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->feedbackExpandClickEventIfNecessary(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_20b

    :cond_1a6
    instance-of v4, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_1f4

    instance-of v1, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_20b

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_1be

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string v0, "Click folder, but Global drag anim is running."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20b

    :cond_1be
    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_1d2

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/m;

    invoke-direct {v1, p0}, Lcom/android/common/util/m;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    goto :goto_20b

    :cond_1d2
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    if-nez v1, :cond_1eb

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lg0/b;

    invoke-direct {v1, p0, v3}, Lg0/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_20b

    :cond_1eb
    const/16 v1, 0x100

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_20b

    :cond_1f4
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_1fe

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)Z

    goto :goto_20b

    :cond_1fe
    instance-of v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_20b

    instance-of v1, p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v1, :cond_20b

    check-cast p0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-static {p0, v0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V

    :cond_20b
    :goto_20b
    return-void
.end method

.method public static onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V
    .registers 3

    invoke-static {p1, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->canStartApp(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "the pending widget cannot be started, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {p0, p1}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickPendingWidget(Lcom/android/launcher3/widget/PendingAppWidgetHostView;Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)Z
    .registers 5

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startAppShortcutOrInfoActivity, go to state PAGE_PREVIEW by click app in state TOGGLE_BAR, return false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    invoke-static {p2, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->canStartApp(Lcom/android/launcher3/Launcher;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startAppShortcutOrInfoActivity, the application cannot be started, return false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2a
    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    if-nez v0, :cond_3f

    instance-of v0, p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-nez v0, :cond_3f

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startAppShortcutOrInfoActivity, the app icon cannot be clicked or the application is being downloaded, return false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3f
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->startAppShortcutOrInfoActivity(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-nez v0, :cond_4e

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startAppShortcutOrInfoActivity, unable to launch application shortcut or message activity, return false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4e
    instance-of p0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_84

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getAppLocationType()Lcom/android/launcher/FancyIconKey$AppLocationType;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_PREDICTION:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne p0, v0, :cond_62

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickPredictionApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_84

    :cond_62
    sget-object v0, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_SEARCH:Lcom/android/launcher/FancyIconKey$AppLocationType;

    if-ne p0, v0, :cond_6e

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickSearchResultApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_84

    :cond_6e
    const/high16 p0, 0x20000

    invoke-static {p2, p0}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result p0

    if-eqz p0, :cond_7d

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickDocker(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_7d
    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsItemClick(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_84
    :goto_84
    const/4 p0, 0x1

    return p0
.end method

.method public static startAppShortcutOrInfoActivityPromiseAppInfoInject(Lcom/android/launcher/model/data/PromiseAppInfo;Lcom/android/launcher3/Launcher;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p0, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string p1, "isOplusExpansionDownloadingApp"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/android/launcher3/touch/OplusItemClickHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startAppShortcutOrInfoActivity: "

    invoke-static {v2, v0, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/touch/OplusItemClickHandler;->isInstallStateIllegal(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/touch/OplusItemClickHandler;->verifyIllegalInstallState(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)V

    goto :goto_44

    :cond_3d
    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->onClickDownloadApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_44
    :goto_44
    const/4 p0, 0x1

    return p0
.end method

.method private static verifyIllegalInstallState(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/download/InstallState;)V
    .registers 5

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    return-void
.end method
