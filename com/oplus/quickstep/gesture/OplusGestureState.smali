.class public final Lcom/oplus/quickstep/gesture/OplusGestureState;
.super Lcom/android/quickstep/GestureState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusGestureState"


# instance fields
.field private canReverseGestureAnim:Z

.field private continueLastGesture:Z

.field private currentRect:Landroid/graphics/RectF;

.field private endScale:F

.field private finishRecentsAnim:Z

.field private forceToRecents:Z

.field private isFallbackRecents:Z

.field private isFirstStartTouchTracking:Z

.field private isGestureValid:Z

.field private isInExitFocusMode:Z

.field private isInSplitScreenMode:Z

.field private isLandScape:Z

.field private isPreviousGestureToNewOrLastTask:Z

.field private isPreviousGestureToNewTask:Z

.field private isReverseGestureAnimationRunning:Z

.field private isSupportFloatingWindow:Z

.field private isTaskbarPresent:Z

.field private isTaskbarStashed:Z

.field private lastGestureConfig:Landroid/content/res/Configuration;

.field private launcherContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

.field private mStartingNewTaskId:I

.field private mSystemWindowClosed:Z

.field private maybeReverseGestureAnimation:Z

.field private originalBtv:Landroid/view/View;

.field private reverseToFullscreenAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

.field private useSpecialInputConsumer:Z

.field private windowAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusGestureState;->Companion:Lcom/oplus/quickstep/gesture/OplusGestureState$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/GestureState;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->currentRect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mStartingNewTaskId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;IZ)V
    .registers 5

    const-string v0, "componentObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->currentRect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mStartingNewTaskId:I

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents:Z

    return-void
.end method


# virtual methods
.method public final getCanReverseGestureAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->canReverseGestureAnim:Z

    return p0
.end method

.method public final getContinueLastGesture()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->continueLastGesture:Z

    return p0
.end method

.method public final getCurrentRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->currentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getEndScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endScale:F

    return p0
.end method

.method public final getForceToRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->forceToRecents:Z

    return p0
.end method

.method public final getLastGestureConfig()Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastGestureConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public final getLauncherContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->launcherContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-object p0
.end method

.method public final getMSystemWindowClosed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mSystemWindowClosed:Z

    return p0
.end method

.method public final getMaybeReverseGestureAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->maybeReverseGestureAnimation:Z

    return p0
.end method

.method public final getOriginalBtv()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->originalBtv:Landroid/view/View;

    return-object p0
.end method

.method public final getReverseToFullscreenAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->reverseToFullscreenAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-object p0
.end method

.method public final getStartingNewTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mStartingNewTaskId:I

    return p0
.end method

.method public final getUseSpecialInputConsumer()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->useSpecialInputConsumer:Z

    return p0
.end method

.method public final getWindowAnimParam()Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->windowAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    return-object p0
.end method

.method public final hasNewTaskStarting()Z
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mStartingNewTaskId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isFallbackRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents:Z

    return p0
.end method

.method public final isFirstStartTouchTracking()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFirstStartTouchTracking:Z

    return p0
.end method

.method public final isGestureValid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid:Z

    return p0
.end method

.method public final isInExitFocusMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode:Z

    return p0
.end method

.method public final isInSplitScreenMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode:Z

    return p0
.end method

.method public final isLandScape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isLandScape:Z

    return p0
.end method

.method public final isPreviousGestureToNewOrLastTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewOrLastTask:Z

    return p0
.end method

.method public final isPreviousGestureToNewTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewTask:Z

    return p0
.end method

.method public final isReverseGestureAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning:Z

    return p0
.end method

.method public final isSupportFloatingWindow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow:Z

    return p0
.end method

.method public final isTaskbarPresent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarPresent:Z

    return p0
.end method

.method public final isTaskbarStashed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarStashed:Z

    return p0
.end method

.method public final onRecentsAnimationFinished()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->finishRecentsAnim:Z

    return-void
.end method

.method public final setCanReverseGestureAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->canReverseGestureAnim:Z

    return-void
.end method

.method public final setContinueLastGesture(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->continueLastGesture:Z

    return-void
.end method

.method public final setCurrentRect(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->currentRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setEndScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->endScale:F

    return-void
.end method

.method public final setFallbackRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents:Z

    return-void
.end method

.method public final setFirstStartTouchTracking(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFirstStartTouchTracking:Z

    return-void
.end method

.method public final setForceToRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->forceToRecents:Z

    return-void
.end method

.method public final setGestureValid(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid:Z

    return-void
.end method

.method public final setIconVisible(Z)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OplusGestureState"

    if-eqz v0, :cond_15

    const-string v0, "setIconVisible, visible = "

    const-string v2, ", caller: "

    invoke-static {v0, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2, v0, v1}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->originalBtv:Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    instance-of v2, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_24

    :cond_23
    move-object v0, v3

    :goto_24
    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_29
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->originalBtv:Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_41

    instance-of v2, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_36

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/card/LauncherCardView;

    :cond_36
    if-nez v3, :cond_39

    goto :goto_41

    :cond_39
    if-eqz p1, :cond_3d

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x4

    :goto_3e
    invoke-virtual {v3, v0}, Lcom/android/launcher3/card/LauncherCardView;->setVisibility(I)V

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->originalBtv:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/card/groupcard/GroupCardUtil;->isGroupChildCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "setIconVisible: set GroupChildCard visibility="

    invoke-static {v0, p1, v1}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->originalBtv:Landroid/view/View;

    if-nez p0, :cond_53

    goto :goto_5c

    :cond_53
    if-eqz p1, :cond_58

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final setInExitFocusMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode:Z

    return-void
.end method

.method public final setInSplitScreenMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode:Z

    return-void
.end method

.method public final setLandScape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isLandScape:Z

    return-void
.end method

.method public final setLastGestureConfig(Landroid/content/res/Configuration;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->lastGestureConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public final setLauncherContentAnimParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->launcherContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-void
.end method

.method public final setMSystemWindowClosed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mSystemWindowClosed:Z

    return-void
.end method

.method public final setMaybeReverseGestureAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->maybeReverseGestureAnimation:Z

    return-void
.end method

.method public final setOriginalBtv(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->originalBtv:Landroid/view/View;

    return-void
.end method

.method public final setPreviousGestureToNewOrLastTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewOrLastTask:Z

    return-void
.end method

.method public final setPreviousGestureToNewTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewTask:Z

    return-void
.end method

.method public final setReverseGestureAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning:Z

    return-void
.end method

.method public final setReverseToFullscreenAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->reverseToFullscreenAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-void
.end method

.method public final setSupportFloatingWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow:Z

    return-void
.end method

.method public final setTaskbarPresent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarPresent:Z

    return-void
.end method

.method public final setTaskbarStashed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarStashed:Z

    return-void
.end method

.method public final setUseSpecialInputConsumer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->useSpecialInputConsumer:Z

    return-void
.end method

.method public final setWindowAnimParam(Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->windowAnimParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "endTarget: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runningTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runningTaskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGestureValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceToRecents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->forceToRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MultiStateCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ", "

    invoke-static {v1, p0, v2, v0}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateStartingNewTaskId(I)V
    .registers 4

    const-string v0, "updateStartingNewTaskId: startingNewTaskId:"

    const-string v1, ", mStartingNewTaskId: "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mStartingNewTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGestureState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;->mStartingNewTaskId:I

    return-void
.end method
