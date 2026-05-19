.class public Lcom/android/launcher3/taskbar/TaskbarStashController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_STASHED_PREF:Z = false

.field private static final FLAGS_IN_APP:I = 0x101

.field public static final FLAGS_REPORT_STASHED_INSETS_TO_APP:I = 0x161e

.field private static final FLAGS_STASHED_IN_APP:I = 0x16be

.field private static final FLAGS_STASHED_IN_APP_IGNORING_IME:I = 0x169e

.field public static final FLAG_HIDE_TASKBAR_PAGE:I = 0x800

.field public static final FLAG_IN_APP:I = 0x1

.field public static final FLAG_IN_SETUP:I = 0x100

.field public static final FLAG_IN_STASHED_LAUNCHER_STATE:I = 0x40

.field public static final FLAG_STASHED_IN_APP_ALL_APPS:I = 0x80

.field public static final FLAG_STASHED_IN_APP_EMPTY:I = 0x8

.field public static final FLAG_STASHED_IN_APP_IME:I = 0x20

.field public static final FLAG_STASHED_IN_APP_MANUAL:I = 0x2

.field public static final FLAG_STASHED_IN_APP_PINNED:I = 0x4

.field public static final FLAG_STASHED_IN_APP_SETUP:I = 0x10

.field public static final FLAG_STASHED_IN_APP_SPECIAL_PAGE:I = 0x400

.field public static final FLAG_STASHED_IN_SMALL_SCREEN:I = 0x200

.field public static final FLAG_STASHED_IN_TASKBAR_DISABLED:I = 0x1000

.field private static final SHARED_PREFS_STASHED_KEY:Ljava/lang/String; = "taskbar_is_stashed"

.field public static final STASHED_TASKBAR_HINT_SCALE:F = 0.9f

.field private static final STASHED_TASKBAR_SCALE:F = 0.5f

.field public static final TAG:Ljava/lang/String; = "TaskbarStashController"

.field public static final TASKBAR_HINT_STASH_DURATION:J = 0x190L

.field public static final TASKBAR_STASH_DURATION:J = 0x12cL

.field private static final TASKBAR_STASH_DURATION_FOR_IME:J = 0x1c2L

.field private static final UNSTASHED_TASKBAR_HANDLE_HINT_SCALE:F = 1.1f


# instance fields
.field public final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public mAnimator:Landroid/animation/AnimatorSet;

.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mEnableManualStashingForTests:Z

.field public mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field public mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

.field public mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

.field public mIsImeShowing:Z

.field public mIsManuallyStashedInApp:Z

.field public mIsStashed:Z

.field private mIsSystemGestureInProgress:Z

.field private final mPrefs:Landroid/content/SharedPreferences;

.field public final mStashedHeight:I

.field public volatile mState:I

.field private final mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

.field private mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarImeBgAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

.field public final mTranslateY:I

.field public final mUnstashedHeight:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsManuallyStashedInApp:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingForTests:Z

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    new-instance v1, Lcom/android/launcher3/taskbar/v;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/v;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Ljava/util/function/IntPredicate;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarStashedHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07100d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTranslateY:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$onIsStashedChanged$3(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onStateChangeApplied(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$new$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$createAnimToIsStashed$1()V

    return-void
.end method

.method private canCurrentlyManuallyUnstash()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    and-int/lit16 v0, v0, 0x16bf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$createAnimToIsStashed$2()V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x101

    const-string v2, "FLAG_IN_APP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "FLAG_STASHED_IN_APP_MANUAL"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "FLAG_STASHED_IN_APP_PINNED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "FLAG_STASHED_IN_APP_EMPTY"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "FLAG_STASHED_IN_APP_SETUP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x20

    const-string v2, "FLAG_STASHED_IN_APP_IME"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x40

    const-string v2, "FLAG_IN_STASHED_LAUNCHER_STATE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x80

    const-string v2, "FLAG_STASHED_IN_APP_ALL_APPS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x100

    const-string v2, "FLAG_IN_SETUP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x200

    const-string v2, "FLAG_STASHED_IN_SMALL_SCREEN"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x400

    const-string v2, "FLAG_STASHED_IN_APP_SPECIAL_PAGE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x1000

    const-string v2, "FLAG_STASHED_IN_TASKBAR_DISABLED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x800

    const-string v2, "FLAG_HIDE_TASKBAR_PAGE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/taskbar/Utilities;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createAnimToIsStashed$1()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method private synthetic lambda$createAnimToIsStashed$2()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method private synthetic lambda$new$0(I)Z
    .registers 6

    const/16 v0, 0x101

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    const/16 v1, 0x16be

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v2

    const/16 v3, 0x200

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p0

    if-eqz v0, :cond_1c

    if-nez v1, :cond_22

    :cond_1c
    if-nez v0, :cond_20

    if-nez v2, :cond_22

    :cond_20
    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private synthetic lambda$onIsStashedChanged$3(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIsStashedChanged#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private maybeResetStashedInAppAllApps(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    if-eqz p1, :cond_1b

    sget-object p1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_1b
    return-void
.end method

.method private notifyStashChange(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInAppIgnoringIme()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateInsetRoundedCornerFrame(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onTaskbarStateChange(ZZ)V

    return-void
.end method

.method private onStateChangeApplied(I)V
    .registers 4

    const-string/jumbo v0, "onStateChangeApplied changedFlags: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarStashController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16be

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onStashedInAppChanged()V

    :cond_34
    const/16 v0, 0x17bf

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->notifyStashChange(ZZ)V

    :cond_49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->dismissStashedHandleGuidTip()V

    :cond_53
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p1

    if-eqz p1, :cond_70

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_HIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_7f

    :cond_70
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_7f
    :goto_7f
    return-void
.end method


# virtual methods
.method public addUnstashToHotseatAnimation(Landroid/animation/AnimatorSet;I)V
    .registers 11

    int-to-long v2, p2

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJJZI)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public applyState()V
    .registers 3

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x12c

    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    return-void
.end method

.method public applyState(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJZ)Landroid/animation/Animator;

    return-void
.end method

.method public applyState(JJ)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJJZ)Landroid/animation/Animator;

    return-void
.end method

.method public applyStateWithoutStart()Landroid/animation/Animator;
    .registers 3

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public applyStateWithoutStart(J)Landroid/animation/Animator;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public createAnimToIsStashed(ZJJZI)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    if-nez v6, :cond_5c

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz v1, :cond_27

    move v1, v7

    goto :goto_28

    :cond_27
    move v1, v8

    :goto_28
    invoke-virtual {v9, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarImeBgAlpha:Lcom/android/quickstep/AnimatedFloat;

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v9

    if-eqz v9, :cond_40

    goto :goto_41

    :cond_40
    move v7, v8

    :goto_41
    invoke-virtual {v6, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarStashController$1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_5c
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v11, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v11, v11, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v11}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isHotseatIconOnTopWhenAligned()Z

    move-result v11

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000  # 0.5f

    const/16 v16, 0x0

    if-eqz v1, :cond_d4

    iget v12, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    iget v15, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    sub-int/2addr v12, v15

    int-to-float v12, v12

    const/high16 v15, 0x40000000  # 2.0f

    div-float/2addr v12, v15

    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v15, v12}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p6, :cond_98

    iget-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v12, v8}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_a4

    :cond_98
    new-instance v12, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v12, v0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {v12}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_a4
    new-array v12, v13, [Landroid/animation/Animator;

    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v15, v7}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v7

    aput-object v7, v12, v16

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v7, v14}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v12, v15

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v7, v15, [Landroid/animation/Animator;

    iget-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v12, v8}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v12

    aput-object v12, v7, v16

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez v11, :cond_d1

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_d1
    const/high16 v12, 0x3f400000  # 0.75f

    goto :goto_12c

    :cond_d4
    new-array v12, v13, [Landroid/animation/Animator;

    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v15, v8}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v12, v16

    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v15, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v12, v17

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p6, :cond_f7

    iget-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v12, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_103

    :cond_f7
    new-instance v12, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v12, v0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {v12}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_103
    const/4 v12, 0x1

    new-array v15, v12, [Landroid/animation/Animator;

    iget-object v14, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v7

    aput-object v7, v15, v16

    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v7, v12, [Landroid/animation/Animator;

    iget-object v12, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v12, v8}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v12

    aput-object v12, v7, v16

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez v11, :cond_128

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_128
    const/high16 v12, 0x3f000000  # 0.5f

    const/high16 v14, 0x3f400000  # 0.75f

    :goto_12c
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v7, v7, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->createRevealAnimToIsStashed(Z)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v7, v8}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    long-to-float v2, v2

    mul-float/2addr v12, v2

    float-to-long v11, v12

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    mul-float v3, v2, v14

    float-to-long v11, v3

    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sub-float/2addr v8, v14

    mul-float/2addr v8, v2

    float-to-long v2, v8

    invoke-virtual {v10, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v6, v3, v16

    const/4 v6, 0x1

    aput-object v9, v3, v6

    aput-object v10, v3, v13

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarStashController$2;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "TaskbarStashController:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmStashedHeight=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmUnstashedHeight=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsStashed=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->access$000(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tappliedState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsSystemGestureInProgress=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s\tmIsImeShowing=%b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableManualStashingForTests(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingForTests:Z

    return-void
.end method

.method public getContentHeightForIme()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getTaskbarHeightForIme()I

    move-result p0

    return p0
.end method

.method public getContentHeightToReportToApps()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 v0, 0x161e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v1, :cond_27

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_27

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v2

    if-eqz v2, :cond_48

    if-nez v0, :cond_48

    return v1

    :cond_48
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0

    :cond_4b
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0
.end method

.method public getMaxTransY()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTranslateY:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getStashedHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0
.end method

.method public getTappableHeightToReportToApps()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    if-gt v0, p0, :cond_9

    const/4 v0, 0x0

    :cond_9
    return v0
.end method

.method public getTaskbarStashStartDelayForIme()J
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x10e0000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1c2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTouchableHeight()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    goto :goto_9

    :cond_7
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    :goto_9
    return p0
.end method

.method public hasAnyFlag(I)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p0

    return p0
.end method

.method public hasAnyFlag(II)Z
    .registers 3

    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getTaskbarBackgroundOffset()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getImeBgTaskbar()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarImeBgAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconScaleForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconTranslationYForStash()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleHintScale()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "taskbar_is_stashed"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsManuallyStashedInApp:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_54

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsManuallyStashedInApp:Z

    if-eqz p1, :cond_54

    move p1, v0

    goto :goto_55

    :cond_54
    move p1, v1

    :goto_55
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v3

    if-eqz v3, :cond_62

    move p1, v0

    :cond_62
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_6f

    if-eqz p2, :cond_6d

    goto :goto_6f

    :cond_6d
    move p2, v1

    goto :goto_70

    :cond_6f
    :goto_6f
    move p2, v0

    :goto_70
    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x100

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x200

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isSmallScreenMode()Z

    move-result p2

    if-eqz p2, :cond_8f

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p2

    if-nez p2, :cond_8f

    move p2, v0

    goto :goto_90

    :cond_8f
    move p2, v1

    :goto_90
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x400

    invoke-static {}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->isStashedInSpecialPage()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x1000

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->notifyStashChange(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->injectAfterInit()V

    return-void
.end method

.method public injectAfterInit()V
    .registers 1

    return-void
.end method

.method public isInApp()Z
    .registers 2

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method public isInAppAndNotStashed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isInStashedLauncherState()Z
    .registers 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isManuallyStashedInSP()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsManuallyStashedInApp:Z

    return p0
.end method

.method public isSmallScreenMode()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->isSmallScreenMode(Lcom/android/launcher3/taskbar/TaskbarProfile;)Z

    move-result p0

    return p0
.end method

.method public isStashed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return p0
.end method

.method public isStashedInApp()Z
    .registers 2

    const/16 v0, 0x16be

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method public isStashedInAppIgnoringIme()Z
    .registers 2

    const/16 v0, 0x169e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method public maybeResetStashedInAppAllApps()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->maybeResetStashedInAppAllApps(Z)V

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onIsStashedChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLongPressToUnstashTaskbar()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableTaskbarLongClickToStash()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_31

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->canCurrentlyManuallyUnstash()Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateIsManuallyStashedInApp(Z)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    const/4 p0, 0x1

    return p0

    :cond_31
    :goto_31
    return v1
.end method

.method public setSetupUIVisible(Z)V
    .registers 4

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    if-eqz p1, :cond_1d

    const-wide/16 v0, 0x0

    goto :goto_1f

    :cond_1d
    const-wide/16 v0, 0x12c

    :goto_1f
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->maybeResetStashedInAppAllApps(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-eq v0, v1, :cond_29

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarStashStartDelayForIme()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    :cond_29
    return-void
.end method

.method public startStashHint(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_24

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_15

    const p1, 0x3f666666  # 0.9f

    goto :goto_17

    :cond_15
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_17
    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_24
    :goto_24
    return-void
.end method

.method public startUnstashHint(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->canCurrentlyManuallyUnstash()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_16

    const p1, 0x3f8ccccd  # 1.1f

    goto :goto_18

    :cond_16
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public supportsManualStashing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_1e

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingForTests:Z

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public supportsVisualStashing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->supportsVisualStashing()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public updateAndAnimateIsManuallyStashedInApp(Z)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v2

    if-nez v2, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAndAnimateIsManuallyStashedInApp ignore, not in app. isManuallyStashedInApp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskbarStashController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_27
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v3

    if-eq v3, p1, :cond_5e

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "taskbar_is_stashed"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsManuallyStashedInApp:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/android/statistics/LauncherStatistics;->statsLongPressTaskbarShowState(Z)V

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->getTaskbarManualStashDuration(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    return v0

    :cond_5e
    return v1
.end method

.method public declared-synchronized updateStateForFlag(IZ)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    :try_start_4
    sget-boolean v1, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_25

    const-string v1, "b/227657604"

    const-string/jumbo v2, "setting flag FLAG_IN_APP to: %b"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_35

    :cond_25
    :goto_25
    if-eqz p2, :cond_2d

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    goto :goto_33

    :cond_2d
    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_23

    :goto_33
    monitor-exit p0

    return-void

    :goto_35
    monitor-exit p0

    throw p1
.end method

.method public updateStateForSysuiFlags(IZ)V
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_23

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarStashStartDelayForIme()J

    move-result-wide v5

    goto :goto_26

    :cond_23
    const-wide/16 v3, 0x12c

    move-wide v5, v1

    :goto_26
    if-eqz p2, :cond_29

    move-wide v3, v1

    :cond_29
    if-eqz p2, :cond_2c

    goto :goto_2d

    :cond_2c
    move-wide v1, v5

    :goto_2d
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    return-void
.end method
