.class public Lcom/android/quickstep/RecentsActivityCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsActivityCommand"


# instance fields
.field public mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private final mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/AppToOverviewAnimationProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCreateTime:J

.field private mListener:Lcom/android/quickstep/util/ActivityInitListener;

.field private mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private final mRecentsModel:Lcom/android/quickstep/RecentsModel;

.field private final mToggleClickedTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/OverviewComponentObserver;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mToggleClickedTime:J

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    sget-object p3, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/RecentsModel;

    iput-object p3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mCreateTime:J

    new-instance v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/quickstep/AppToOverviewAnimationProvider;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsActivityCommand;Ljava/lang/Boolean;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsActivityCommand;->onActivityReady(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/android/quickstep/RecentsActivityCommand;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsActivityCommand;->createWindowAndAdjacentAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private createWindowAndAdjacentAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsActivityCommand;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/RecentsActivityCommand$3;

    invoke-direct {p3, p0}, Lcom/android/quickstep/RecentsActivityCommand$3;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p3}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p3

    const-string v0, "RecentsActivityCommand"

    const-string v1, "QuickStep"

    if-nez p3, :cond_1e

    const-string p0, "getCreatedRecentsView: activity == null"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1e
    invoke-virtual {p3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/views/RecentsView;

    if-nez p3, :cond_2c

    const-string p0, "getCreatedRecentsView return null"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_2c
    instance-of v0, p3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_56

    :cond_47
    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsActivityCommand;->findClosingAppTaskId([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result p0

    check-cast p3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p3, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getEnterAnimator(I)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_56

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_56
    :goto_56
    return-object p2
.end method

.method private createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mToggleClickedTime:J

    const-string/jumbo v3, "toggle"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/statistics/LauncherStatistics;->statStartActivityDuration(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    new-instance v0, Lcom/oplus/painteranimation/OplusAnimatorSet;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet;-><init>(Landroid/animation/AnimatorSet;)V

    new-instance p1, Lcom/android/quickstep/RecentsActivityCommand$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/RecentsActivityCommand$2;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {v0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "EnterRecentsByMenu"

    const-string p1, "Window Animation"

    invoke-virtual {v0, p0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet;->setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->getInternalAnimSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;
    .registers 2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    if-lez p0, :cond_12

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0

    :cond_14
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_1b

    move-object p0, p1

    :cond_1b
    return-object p0
.end method

.method private onActivityReady(Ljava/lang/Boolean;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->clearOplusOnResumeCallback()V

    :cond_10
    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->onActivityReady(Lcom/android/launcher3/statemanager/StatefulActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public findClosingAppTaskId([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .registers 7

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    :cond_4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    iget p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    return p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return p0
.end method

.method public handleCommand(J)Z
    .registers 7

    const-string v0, "handleCommand: elapsedTime = "

    const-string v1, ", doubleTapTimeout = "

    invoke-static {v0, p1, p2, v1}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "RecentsActivityCommand"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto :goto_43

    :cond_2d
    instance-of p1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_37

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showNextTask()V

    goto :goto_43

    :cond_37
    invoke-direct {p0, v0}, Lcom/android/quickstep/RecentsActivityCommand;->getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_43

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :cond_43
    :goto_43
    return v1

    :cond_44
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_82

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_80

    const-wide/16 v2, 0x2bc

    cmp-long p1, p1, v2

    if-gez p1, :cond_80

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_80

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p0

    if-nez p0, :cond_80

    goto :goto_82

    :cond_80
    const/4 p0, 0x0

    return p0

    :cond_82
    :goto_82
    return v1
.end method

.method public onTransitionComplete()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    const-string v1, "RecentsActivityCommand"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    if-eq v0, v3, :cond_1c

    const-string v3, "RecentsActivityCommand--run(), update activityInterface."

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {v3, v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->setActivityInterface(Lcom/android/quickstep/BaseActivityInterface;)V

    :cond_1c
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_27

    invoke-static {v3, v4}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;Z)V

    :cond_27
    iget-wide v5, p0, Lcom/android/quickstep/RecentsActivityCommand;->mCreateTime:J

    sget-object v0, Lcom/android/quickstep/RecentsCommandHelper;->INSTANCE:Lcom/android/quickstep/RecentsCommandHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsCommandHelper;->getLastToggleTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/quickstep/RecentsActivityCommand;->mCreateTime:J

    invoke-virtual {v0, v7, v8}, Lcom/android/quickstep/RecentsCommandHelper;->setLastToggleTime(J)V

    invoke-virtual {p0, v5, v6}, Lcom/android/quickstep/RecentsActivityCommand;->handleCommand(J)Z

    move-result v0

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    instance-of v5, v0, Lcom/android/quickstep/LauncherActivityInterface;

    if-eqz v5, :cond_50

    check-cast v0, Lcom/android/quickstep/LauncherActivityInterface;

    new-instance v5, Lcom/android/quickstep/c1;

    invoke-direct {v5, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {v0, v5}, Lcom/android/quickstep/OplusBaseActivityInterface;->oplusSwitchToRecentsIfVisible(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5c

    return-void

    :cond_50
    new-instance v5, Lcom/android/quickstep/p0;

    invoke-direct {v5, p0}, Lcom/android/quickstep/p0;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {v0, v5}, Lcom/android/quickstep/BaseActivityInterface;->switchToRecentsIfVisible(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5c

    return-void

    :cond_5c
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v5, Lcom/android/launcher/badge/f;

    invoke-direct {v5, p0}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {v0, v5}, Lcom/android/quickstep/BaseActivityInterface;->createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    instance-of v5, v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v5, :cond_7f

    check-cast v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v3

    :cond_7f
    const/4 v0, 0x1

    if-eqz v3, :cond_87

    const/high16 v5, 0x10000000

    :try_start_84
    invoke-virtual {v3, v5, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    :cond_87
    sput-boolean v0, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    iget-object v5, p0, Lcom/android/quickstep/RecentsActivityCommand;->mListener:Lcom/android/quickstep/util/ActivityInitListener;

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Lcom/android/quickstep/RecentsActivityCommand$1;

    invoke-direct {v7, p0}, Lcom/android/quickstep/RecentsActivityCommand$1;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    iget-object v8, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/android/quickstep/util/ActivityInitListener;->registerAndStartActivity(Landroid/content/Intent;Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_dd

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v0

    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V
    :try_end_ba
    .catch Landroid/content/ActivityNotFoundException; {:try_start_84 .. :try_end_ba} :catch_c4
    .catch Landroid/util/AndroidRuntimeException; {:try_start_84 .. :try_end_ba} :catch_bb

    goto :goto_dd

    :catch_bb
    move-exception p0

    sput-boolean v4, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    const-string v0, "Activity could not be started for"

    invoke-static {v2, v1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dd

    :catch_c4
    sput-boolean v4, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    const-string/jumbo v0, "registerAndStartActivity ActivityNotFoundException overviewIntent:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd
    :goto_dd
    return-void
.end method
