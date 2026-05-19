.class public abstract Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">",
        "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskViewTouchControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskViewTouchControllerImpl.kt\ncom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n1#2:402\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusBaseTaskViewTouchController"

.field public static final TOUCH_SLOP_MULTIPLIER:F = 1.0f


# instance fields
.field private mAllowAnimationRun:Z

.field private mDockView:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field

.field private mDraggingTaskIndex:I

.field private mIsOnDragUseSkipDisplacement:Z

.field private mSkipTotalDisplacement:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->Companion:Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mAllowAnimationRun:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDraggingTaskIndex:I

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/touch/OplusTaskViewSwipeDetector;

    const-string v2, "dir"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string/jumbo v3, "mRecentsView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/oplus/quickstep/touch/OplusTaskViewSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;Lcom/android/quickstep/views/RecentsView;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_37

    :cond_36
    move-object p1, v1

    :goto_37
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    :cond_3d
    iput-object v1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDockView:Lcom/oplus/quickstep/dock/DockView;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setTouchSlopMultiplier(F)V

    return-void
.end method

.method public static final synthetic access$setMAllowAnimationRun$p(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mAllowAnimationRun:Z

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->onTaskAnimationCreated$lambda$0(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->onDragEnd$lambda$9(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method private final clearSkipDragState()V
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setTaskViewSwipeAction(Lkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mAllowAnimationRun:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mIsOnDragUseSkipDisplacement:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mSkipTotalDisplacement:F

    return-void
.end method

.method private static final contineDragEnd$lambda$5(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->onCurrentAnimationEnd(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->onDragEnd$lambda$9$lambda$8$lambda$7(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->contineDragEnd$lambda$5(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;)V

    return-void
.end method

.method private static final onDragEnd$lambda$9(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 5

    const-string v0, "$startTaskAfterAnimEnd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$goingToEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_2c

    iget-object p0, p1, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-eqz p0, :cond_2c

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_2c

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/c1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2c
    iget-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p1, p0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->onCurrentAnimationEnd(Z)V

    return-void
.end method

.method private static final onDragEnd$lambda$9$lambda$8$lambda$7(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method private static final onTaskAnimationCreated$lambda$0(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_22

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_1c

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showQuickStartupExitToastIfNeed()V

    :cond_22
    return-void
.end method

.method private final setMiscsHiddenIfNeeded(Z)V
    .registers 2

    return-void
.end method


# virtual methods
.method public abortRecentsScroll()V
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;

    if-eqz v0, :cond_17

    check-cast p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->endScrollerAnimation()V

    :cond_1d
    return-void
.end method

.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRotateAnimationEnd()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    if-eqz v0, :cond_1a

    return v2

    :cond_1a
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    sget-object v0, Lcom/android/launcher3/RecentContainerView;->Companion:Lcom/android/launcher3/RecentContainerView$Companion;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const-string v4, "mActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/RecentContainerView$Companion;->findTopView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez p0, :cond_32

    move p1, v2

    :cond_32
    invoke-static {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->hasRecentsOrRemoteAnimationRunningFlags(I)Z

    move-result p0

    const-string v0, "OplusBaseTaskViewTouchController"

    if-eqz p0, :cond_42

    const-string p0, "QuickStep"

    const-string p1, "canInterceptTouch, intercept by isRemoteRecentsAnimationRunning = TRUE"

    invoke-static {p0, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_42
    const-string p0, "canInterceptTouch: res="

    invoke-static {p0, p1, v0}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p1
.end method

.method public clearState()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTaskViewTouchController"

    const-string v2, "clearState"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    invoke-direct {p0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->clearSkipDragState()V

    return-void
.end method

.method public contineDragEnd(ZFJLcom/android/launcher3/touch/PagedOrientationHandler;)Z
    .registers 19

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object/from16 v2, p5

    const-string/jumbo v3, "orientationHandler"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v8, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDismissScale()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setMaxDismissScale(F)V

    iget-boolean v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v2, p2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v2

    sget-object v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v2, :cond_33

    if-eqz v1, :cond_33

    move v5, v10

    goto :goto_34

    :cond_33
    move v5, v9

    :goto_34
    invoke-virtual {v3, v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setPendingLaunchTask(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_92

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contineDragEnd(), goingToEnd="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", velocity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", goingUp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", skip="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mSkipTotalDisplacement:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", allowAnim="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mAllowAnimationRun:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isOnDragUseSkip="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mIsOnDragUseSkipDisplacement:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", time="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->gestureStartTimeMillis:J

    sub-long/2addr v5, v11

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "QuickStep"

    const-string v6, "OplusBaseTaskViewTouchController"

    invoke-static {v5, v6, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    if-eqz v2, :cond_d7

    if-eqz v1, :cond_d7

    iget-boolean v1, v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mAllowAnimationRun:Z

    if-nez v1, :cond_d7

    iget-boolean v1, v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mIsOnDragUseSkipDisplacement:Z

    if-eqz v1, :cond_9f

    goto :goto_d7

    :cond_9f
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v2, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v3, 0x0

    iget v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    move v4, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->startWithVelocity(Landroid/content/Context;ZFFJ)V

    invoke-direct {p0, v10}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->setMiscsHiddenIfNeeded(Z)V

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v1, v9}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTaskViewIsDragging(Z)V

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearTaskAnimationDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->lastGestureEndTimeMillis:J

    return v10

    :cond_d7
    :goto_d7
    return v9
.end method

.method public createTaskLaunchAnimation(JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 8

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v1

    const-string/jumbo v2, "super.createTaskLaunchAn…n(duration, interpolator)"

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    if-eqz v1, :cond_26

    if-nez v0, :cond_26

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-super {p0, p1, p3}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->createTaskLaunchAnimation(Ljava/lang/Long;Landroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_26
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    if-eqz v1, :cond_64

    iget v1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDraggingTaskIndex:I

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-ne v1, v3, :cond_36

    if-eqz v0, :cond_64

    :cond_36
    const-string p3, "createTaskLaunchAnimation(), draggingIndex="

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDraggingTaskIndex:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "., mAllowGoingDown="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isPageInTransition="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "QuickStep"

    const-string v0, "OplusBaseTaskViewTouchController"

    invoke-static {p3, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    return-object p0

    :cond_64
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowAdjacentTaskGoingDown:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_87

    const-string/jumbo p3, "mRecentsView"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo p3, "mTaskBeingDragged"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskGoingDownAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_87
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-super {p0, p1, p3}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->createTaskLaunchAnimation(Ljava/lang/Long;Landroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createTaskLaunchAnimation(Ljava/lang/Long;Landroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->createTaskLaunchAnimation(JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTaskViewTouchController"

    const-string v2, "CurrentAnimation cancel"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->makeTaskHeaderShownWithoutAnimation()V

    :cond_18
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDraggingTaskIndex:I

    return p1
.end method

.method public onCurrentAnimationEnd(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCurrentAnimationEnd: wasSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTaskViewTouchController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_32

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const-string/jumbo v2, "mRecentsView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->animateToNormalIfNeed()V

    :cond_3f
    const/4 v0, 0x0

    if-eqz p1, :cond_57

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    instance-of v1, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_51

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_51
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->makeTaskHeaderShownWithoutAnimation()V

    goto :goto_65

    :cond_57
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    instance-of v1, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_60

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_60
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->makeTaskHeaderShown()V

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->clearState()V

    return-void
.end method

.method public onDrag(F)Z
    .registers 7

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    add-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mAllowAnimationRun:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iput p1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mSkipTotalDisplacement:F

    return v1

    :cond_b
    iget v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mSkipTotalDisplacement:F

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/4 v4, 0x0

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v4

    :goto_16
    if-nez v3, :cond_1b

    sub-float/2addr p1, v0

    iput-boolean v1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mIsOnDragUseSkipDisplacement:Z

    :cond_1b
    cmpg-float v0, p1, v2

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v4

    :goto_22
    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    goto :goto_33

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, p1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v0

    :goto_33
    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-eq v0, v3, :cond_43

    invoke-direct {p0, v0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->setMiscsHiddenIfNeeded(Z)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->reInitAnimationController(Z)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v0}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    goto :goto_48

    :cond_43
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v0}, Lcom/android/launcher3/util/FlingBlockCheck;->onEvent()V

    :goto_48
    iget-object v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    if-eqz v0, :cond_59

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    :cond_59
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_69

    iget p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p1, v2, p0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_69
    return v1
.end method

.method public onDragEnd(F)V
    .registers 20

    move-object/from16 v6, p0

    const-string v0, "OplusBaseTaskViewTouchController"

    const-string/jumbo v1, "onDragEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    if-eqz v0, :cond_1c

    const-string/jumbo v1, "mOverrideVelocity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    goto :goto_1e

    :cond_1c
    move/from16 v0, p1

    :goto_1e
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ac4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v7

    iget-object v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v0

    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    iget-object v3, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v3}, Lcom/android/launcher3/util/FlingBlockCheck;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_49

    move v3, v2

    goto :goto_4a

    :cond_49
    move v3, v1

    :goto_4a
    if-eqz v3, :cond_4d

    move v0, v1

    :cond_4d
    iget-object v4, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v9

    iget-boolean v4, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v9, v7, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v4

    iget-object v5, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v5

    iget-object v10, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v10

    if-eqz v0, :cond_6c

    iget-boolean v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-ne v4, v0, :cond_74

    goto :goto_72

    :cond_6c
    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float v0, v10, v0

    if-lez v0, :cond_74

    :goto_72
    move v0, v2

    goto :goto_75

    :cond_74
    move v0, v1

    :goto_75
    iput-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-boolean v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-nez v0, :cond_a1

    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_a1

    iget-object v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_9e

    iget-object v4, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v4

    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isTaskSupportSplit(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    xor-int/2addr v0, v2

    and-int/2addr v0, v4

    iput-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    xor-int/2addr v0, v2

    goto :goto_9f

    :cond_9e
    move v0, v2

    :goto_9f
    iput-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_a1
    iget-boolean v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowAdjacentTaskGoingDown:Z

    if-eqz v0, :cond_af

    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_af

    iget-boolean v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-nez v0, :cond_af

    iput-boolean v1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_af
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_b6

    int-to-float v0, v2

    sub-float v5, v0, v5

    :cond_b6
    invoke-static {v7, v5}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->calculateDuration(FF)J

    move-result-wide v0

    if-eqz v3, :cond_c6

    iget-boolean v2, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_c6

    invoke-static {v7}, Lcom/android/launcher3/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    :cond_c6
    move-wide v11, v0

    const-wide/16 v13, 0x12c

    const-wide/16 v15, 0x258

    invoke-static/range {v11 .. v16}, Lcom/android/launcher3/Utilities;->boundToRange(JJJ)J

    move-result-wide v0

    iget-wide v2, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->gestureStartTimeMillis:J

    iget-wide v4, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->lastGestureEndTimeMillis:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_da

    move-wide v14, v2

    goto :goto_db

    :cond_da
    move-wide v14, v0

    :goto_db
    iget-boolean v1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const-string/jumbo v0, "orientationHandler"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move v2, v7

    move-wide v3, v14

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->contineDragEnd(ZFJLcom/android/launcher3/touch/PagedOrientationHandler;)Z

    move-result v0

    if-eqz v0, :cond_ef

    return-void

    :cond_ef
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v1, Lcom/android/quickstep/f1;

    invoke-direct {v1, v10, v6, v8}, Lcom/android/quickstep/f1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object v11, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v12, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-boolean v13, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-interface {v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget v1, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    move-wide v2, v14

    move v14, v0

    move v15, v1

    move-wide/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->startWithVelocity(Landroid/content/Context;ZFFJ)V

    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v6, v0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->onDragEndDone(Z)V

    iput-wide v2, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearTaskAnimationDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->lastGestureEndTimeMillis:J

    return-void
.end method

.method public onDragEndDone(Z)V
    .registers 3

    const/4 v0, 0x1

    if-nez p1, :cond_6

    invoke-direct {p0, v0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->setMiscsHiddenIfNeeded(Z)V

    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTaskViewIsDragging(Z)V

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 8

    const-string v0, "OplusBaseTaskViewTouchController"

    const-string/jumbo v1, "onDragStart"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setMaxDismissScale(F)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setMinDismissScale(F)V

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDockView:Lcom/oplus/quickstep/dock/DockView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->gestureStartTimeMillis:J

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, p2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->animateToNormalIfNeed()V

    goto :goto_5d

    :cond_53
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->cancelAllAnimation()V

    :goto_5d
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->makeTaskHeaderHidden()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTaskViewIsDragging(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onDragStart(ZF)V

    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-nez p1, :cond_7c

    invoke-direct {p0, v2}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->setMiscsHiddenIfNeeded(Z)V

    :cond_7c
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;->mDockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz p1, :cond_88

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/dock/DockView;->updateScrollState(I)V

    :cond_88
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_91

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_92

    :cond_91
    const/4 p0, 0x0

    :goto_92
    if-eqz p0, :cond_99

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_99
    return-void
.end method

.method public onTaskAnimationCreated(ZLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 5

    if-eqz p1, :cond_29

    if-eqz p2, :cond_c

    new-instance p1, Landroidx/core/location/a;

    invoke-direct {p1, p0}, Landroidx/core/location/a;-><init>(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_c
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const-string/jumbo v0, "mTaskBeingDragged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    const-string/jumbo v1, "mRecentsView.getPagedOrientationHandler()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getDismissDisplacementOfDraggedTask(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/touch/PagedOrientationHandler;)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    :cond_29
    return-void
.end method

.method public reInitAnimationController(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->reInitAnimationController(Z)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    new-instance v0, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$reInitAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl$reInitAnimationController$1;-><init>(Lcom/android/quickstep/uioverrides/touchcontrollers/OplusTaskViewTouchControllerImpl;)V

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setTaskViewSwipeAction(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
