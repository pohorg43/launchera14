.class public Lcom/oplus/quickstep/utils/DefaultAnimationController;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/RecentsAnimationController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V
    .registers 5

    const-string p0, "recentAnim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "recentsController"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targets"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public allRecentsAnimationEnd()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public appLaunchAnimStartOrEnd(ZLcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;[Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    const-string p0, "appLaunchAnimFactory"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appTargets"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canFinishRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)Z
    .registers 2

    const-string p0, "curRecentsAnim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cleanUpRecentsAnim()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    const-string p0, "runnable"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableSwipeUp()V
    .registers 1

    return-void
.end method

.method public forbidSwipeUp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public forbidTouch()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public forceStopAllRecentAnim()V
    .registers 1

    return-void
.end method

.method public getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    return-object p0
.end method

.method public getClickedAppView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpeningRemoteAnimWidgetId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getRunningTaskInfo()Landroid/app/TaskInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSwipingUpActivityPkg()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAppWindowAnimRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isCloseWidgetRemoteAnim()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isClosingAnimAndAnimClosed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiLaunchForceFinish()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiOpen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOnceGestureProcessing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOpeningAnim()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isStartActivityBetweenTransitionEndAndFinish()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needFinishByTwoApp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public revertRecentsAnimation(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setAppLaunchAnimFinishCallback(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public setBetweenTransitionEndAndFinish(Z)V
    .registers 2

    return-void
.end method

.method public setClickAppView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setCloseWidgetRemoteAnim(Z)V
    .registers 2

    return-void
.end method

.method public setOnceGestureProcessing(Lcom/oplus/quickstep/gesture/OplusGestureState;)V
    .registers 2

    return-void
.end method

.method public setOpeningRemoteAnimWidgetId(I)V
    .registers 2

    return-void
.end method

.method public setRecentsAnimFinishCallback(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method
