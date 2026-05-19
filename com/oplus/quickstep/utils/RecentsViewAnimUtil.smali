.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentsViewAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentsViewAnimUtil.kt\ncom/oplus/quickstep/utils/RecentsViewAnimUtil\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1326:1\n94#2,14:1327\n31#2:1342\n94#2,14:1343\n94#2,14:1357\n94#2,14:1371\n1#3:1341\n*S KotlinDebug\n*F\n+ 1 RecentsViewAnimUtil.kt\ncom/oplus/quickstep/utils/RecentsViewAnimUtil\n*L\n771#1:1327,14\n978#1:1342\n978#1:1343,14\n1205#1:1357,14\n1239#1:1371,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ADJACENT_TASK_COUNT_ONE:I = 0x1

.field private static final ADJACENT_TASK_COUNT_TWO:I = 0x2

.field private static final CLEAR_ALL_REMOVE_VIEW_DELAY:J = 0x64L

.field private static final CONTENT_ALPHA_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static final ENTER_ADJACENT_TASK_ALPHA_FRACTION:F = 1.4f

.field private static final ENTER_ADJACENT_TASK_OFFSET_FRACTION:F = 0.5f

.field public static final FLAGS_RECENTS_ANIMATION_RUNNING:I = 0x2

.field public static final FLAGS_REMOTE_ANIMATION_RUNNING:I = 0x1

.field public static final FLAGS_REMOTE_OR_RECENTS_ANIMATION_RUNNING:I = 0x3

.field private static final HEADER_ALPHA_TIME:J = 0x64L

.field private static final ICON_DISMISS_SCALE:F = 0.8f

.field private static final INPUT_CONSUMER_ENABLED_TRACE_DEPTH:I = 0xf

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

.field private static final NEXT_FOCUSED_TASK_TRANSLATION_Z:F = 0.05f

.field private static final ROTATION_SCROLL_FIX_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RecentsViewAnimUtil"

.field private static final TASKVIEW_VIEW_TRANSLATION_Z:F = 0.1f

.field private static allTaskDismissRunning:Z

.field private static forceNotResetTaskVisuals:Z

.field private static forceNotScaleWallpaperByLaunchTask:Z

.field public static isEnterStateAnimRunning:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static isExitStateAnimRunning:Z

.field private static isLaunchFromButtonRunning:Z

.field private static isPendingLaunchTask:Z

.field private static isRecentsAnimationRunning:Z

.field private static isRemoteRecentsAnimationRunning:Z

.field private static isSplitTaskLaunchRunning:Z

.field private static isTaskDismissAnimRunning:Z

.field public static isTaskLaunchAnimRunning:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static mCurrentTaskId:I

.field private static mHasInvisibleAdjantTaskView:Z

.field private static mIndexBeforeRotationChanged:I

.field private static mtaskScaleProgerssStart:Z

.field private static overviewPeeking:Z

.field private static volatile recentsAnimationFinishTime:J

.field private static recentsOrRemoteAnimationRunningFlags:I

.field private static taskViewSwipeAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mCurrentTaskId:I

    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$CONTENT_ALPHA_PROPERTY$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$CONTENT_ALPHA_PROPERTY$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->CONTENT_ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAllTasksDismissAnimation$lambda$12$lambda$11(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getMHasInvisibleAdjantTaskView$p()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    return v0
.end method

.method public static final synthetic access$setAllTaskDismissRunning$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->allTaskDismissRunning:Z

    return-void
.end method

.method public static final synthetic access$setMHasInvisibleAdjantTaskView$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    return-void
.end method

.method public static final addAdjacentTaskGoingDownAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v2, 0x7f07077e

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v1

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v2

    mul-int/2addr v2, v1

    int-to-float v1, v2

    invoke-interface {p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    const v4, -0x42b33333  # -0.05f

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "translationAnimator"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;

    invoke-direct {p3, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$addAdjacentTaskGoingDownAnimations$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p2, p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;ZIILjava/lang/Boolean;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation$lambda$3(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;ZIILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation$lambda$0(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final canAdjantTaskViewInvisible(FFF)Z
    .registers 4

    const/4 p0, 0x0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_6

    neg-float p3, p3

    :cond_6
    mul-float/2addr p2, p3

    cmpl-float p0, p2, p1

    if-gez p0, :cond_15

    sub-float/2addr p1, p2

    const/high16 p0, 0x3f800000  # 1.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static final createAllTasksDismissAnimation$lambda$12$lambda$11(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 11

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDismissedTaskAnimations, onEnd, success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "RecentsViewAnimUtil"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->allTaskDismissRunning:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_32

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->clearCleanTaskRecord()V

    return-void

    :cond_32
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p2

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    goto :goto_3e

    :cond_3d
    move-object v4, v3

    :goto_3e
    invoke-virtual {p2, v4}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->onCleanAllTasks(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onClearAllAnimationFinished(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p2

    if-ltz p2, :cond_7c

    move v4, v0

    :goto_4b
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v6, :cond_56

    check-cast v5, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_57

    :cond_56
    move-object v5, v3

    :goto_57
    if-nez v5, :cond_5a

    goto :goto_77

    :cond_5a
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    const-string v6, "addDismissedTaskAnimations, task="

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_77
    :goto_77
    if-eq v4, p2, :cond_7c

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_7c
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method private final createAnimForAdjacentTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Landroid/animation/Animator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;II)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_d

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-object p0

    :cond_d
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    int-to-float v2, p3

    mul-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-interface {v2, p2, v1, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getAdjacentTaskViewAnimDisplacement(Landroid/graphics/PointF;FZ)V

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForChild(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    if-lez p3, :cond_6e

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v3

    invoke-interface {p3, p1, v0, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getAdjantTaskViewVisibleDistance(Landroid/view/View;II)F

    move-result p1

    iget p3, p2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_58

    goto :goto_59

    :cond_58
    move v4, v2

    :goto_59
    if-nez v4, :cond_5c

    goto :goto_5e

    :cond_5c
    iget p3, p2, Landroid/graphics/PointF;->y:F

    :goto_5e
    new-instance p2, Lcom/android/wm/shell/splitscreen/x0;

    invoke-direct {p2, v1, p1, p3, p0}, Lcom/android/wm/shell/splitscreen/x0;-><init>(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForAdjacentTask$lambda$25$$inlined$addListener$default$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForAdjacentTask$lambda$25$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6e
    return-object v1
.end method

.method private static final createAnimForAdjacentTask$lambda$25$lambda$23(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string v0, "$adjacentAnim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adjacentTaskView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_30

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-direct {p0, p1, p4, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->canAdjantTaskViewInvisible(FFF)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string p2, "createAnimForAdjacentTask, invisible."

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mHasInvisibleAdjantTaskView:Z

    const/4 p0, 0x4

    invoke-virtual {p3, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_30
    return-void
.end method

.method private final createAnimForChild(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string p2, "createAnimForChild, scale NaN."

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/ObjectAnimator;-><init>()V

    return-object p0

    :cond_15
    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "PropertyListBuilder()\n  …               .build(tv)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createAnimForCurrentTask(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/Animator;
    .registers 9

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string p2, "createAnimForChild, scale NaN."

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/ObjectAnimator;-><init>()V

    return-object p0

    :cond_15
    const/4 p0, 0x3

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p0, v3

    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v1, [F

    aput p3, v0, v3

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p0, v1

    const/4 p2, 0x2

    sget-object p3, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v0, v1, [F

    aput p4, v0, v3

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    aput-object p3, p0, p2

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "animator"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForCurrentTask$$inlined$addListener$default$1;

    invoke-direct {p2, p1, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAnimForCurrentTask$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method private final createDismissDockIconAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dock/DockView;->getDockIconView(Lcom/android/systemui/shared/recents/model/Task;)Lcom/oplus/quickstep/dock/DockIconView;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    :cond_19
    sget-object p1, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/oplus/quickstep/dock/DockIconView;->DOCK_ICON_EXIT:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p5, p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    sget-object p1, Lcom/oplus/quickstep/dock/DockIconView;->DOCK_VIEW_SCALE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const v4, 0x3f4ccccd  # 0.8f

    aput v4, v3, p2

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p5, v3, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-array v2, v2, [F

    aput v4, v2, p2

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p5, p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-instance p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createDismissDockIconAnim$1;-><init>(Lcom/oplus/quickstep/dock/DockIconView;)V

    invoke-virtual {p5, p1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_5e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static final createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZZJ)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    const-string v0, "rv"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDismissAnimation, taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_2b

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "QuickStep"

    const-string v11, "RecentsViewAnimUtil"

    invoke-static {v10, v11, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_47

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_48

    :cond_47
    const/4 v0, -0x1

    :goto_48
    sput v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mCurrentTaskId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_59
    new-instance v12, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v12, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v13

    if-nez v13, :cond_65

    return-object v12

    :cond_65
    sget-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const-string v1, "SIMPLE_SCROLL_LOGIC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrollsArray(ZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)[I

    move-result-object v14

    new-instance v0, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v0, v7}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v6, v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrollsArray(ZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)[I

    move-result-object v15

    const/4 v0, 0x1

    if-le v13, v0, :cond_88

    aget v0, v14, v0

    aget v2, v14, v1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v5, v0

    goto :goto_89

    :cond_88
    move v5, v1

    :goto_89
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v16

    move v2, v1

    move/from16 v17, v2

    :goto_98
    if-ge v2, v13, :cond_1ac

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rv.getChildAt(i)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    if-eqz p2, :cond_d5

    sget-object v18, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v7, v2

    move-object/from16 v2, p1

    move v6, v3

    move v8, v4

    move-wide/from16 v3, p4

    move v9, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_d9

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v3, p4

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createDismissDockIconAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;JLcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->createLastDismissAnim(ILcom/android/launcher3/anim/PendingAnimation;)V

    goto :goto_d9

    :cond_d5
    move v7, v2

    move v6, v3

    move v8, v4

    move v9, v5

    :cond_d9
    :goto_d9
    move/from16 v19, v8

    move/from16 v18, v9

    move-wide/from16 v8, p4

    goto/16 :goto_19f

    :cond_e1
    move v7, v2

    move v6, v3

    move v8, v4

    move v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_ed

    move v5, v9

    goto :goto_ee

    :cond_ed
    const/4 v5, 0x0

    :goto_ee
    if-ne v8, v6, :cond_f4

    add-int/lit8 v1, v16, -0x1

    if-eq v8, v1, :cond_f8

    :cond_f4
    add-int/lit8 v4, v8, -0x1

    if-ne v4, v6, :cond_102

    :cond_f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_100

    neg-int v1, v9

    goto :goto_101

    :cond_100
    move v1, v9

    :goto_101
    add-int/2addr v5, v1

    :cond_102
    aget v1, v15, v7

    aget v2, v14, v7

    sub-int/2addr v1, v2

    add-int/2addr v1, v5

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-nez v3, :cond_110

    const/4 v3, 0x1

    goto :goto_111

    :cond_110
    const/4 v3, 0x0

    :goto_111
    if-nez v3, :cond_196

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v3

    sget-boolean v4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-eqz v4, :cond_179

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v4

    cmpg-float v4, v4, v2

    if-nez v4, :cond_129

    const/4 v4, 0x1

    goto :goto_12a

    :cond_129
    const/4 v4, 0x0

    :goto_12a
    if-nez v4, :cond_179

    const-string v3, "createTaskDismissAnimation(), i="

    const-string v4, ", transX="

    invoke-static {v3, v7, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v3, :cond_14a

    move-object v3, v0

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_14b

    :cond_14a
    const/4 v3, 0x0

    :goto_14b
    const/4 v4, 0x1

    if-nez v3, :cond_14f

    goto :goto_152

    :cond_14f
    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setEnterStateAnimRunningCache(Z)V

    :goto_152
    sget-object v3, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getADJACENT_TRANSLATE_X()Landroid/util/FloatProperty;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/16 v17, 0x0

    aput v2, v5, v17

    aput v1, v5, v4

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-wide/from16 v1, p4

    move v5, v8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sget-object v8, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v12, v0, v3, v8}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    move/from16 v19, v5

    move/from16 v18, v9

    move-wide v8, v1

    goto :goto_19d

    :cond_179
    move v5, v8

    move/from16 v18, v9

    move-wide/from16 v8, p4

    const/4 v4, 0x1

    const/4 v2, 0x0

    move/from16 v19, v5

    new-array v5, v4, [F

    aput v1, v5, v2

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sget-object v2, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    goto :goto_19d

    :cond_196
    move/from16 v19, v8

    move/from16 v18, v9

    move-wide/from16 v8, p4

    const/4 v4, 0x1

    :goto_19d
    move/from16 v17, v4

    :goto_19f
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v7, p1

    move v3, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move-object/from16 v6, p0

    goto/16 :goto_98

    :cond_1ac
    move v6, v3

    if-eqz v17, :cond_1bb

    new-instance v0, Lcom/oplus/quickstep/dock/e;

    move v4, v6

    move-object/from16 v6, p0

    invoke-direct {v0, v6}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v12, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    goto :goto_1be

    :cond_1bb
    move v4, v6

    move-object/from16 v6, p0

    :goto_1be
    if-eqz p2, :cond_1c9

    const v0, 0x3dcccccd  # 0.1f

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    goto :goto_1cb

    :cond_1c9
    move-object/from16 v7, p1

    :goto_1cb
    new-instance v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;-><init>()V

    invoke-virtual {v12, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v10, Lcom/oplus/quickstep/utils/i;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/utils/i;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;ZII)V

    invoke-virtual {v12, v10}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-eqz v0, :cond_1f3

    sget v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mCurrentTaskId:I

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v12, v2}, Lcom/oplus/quickstep/dock/DockView;->createIconDismissAnimation(Lcom/android/quickstep/views/TaskView;ILcom/android/launcher3/anim/PendingAnimation;Ljava/lang/Long;)V

    :cond_1f3
    invoke-virtual {v6, v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v12
.end method

.method private static final createTaskDismissAnimation$lambda$0(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .registers 4

    const-string v0, "$taskView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private static final createTaskDismissAnimation$lambda$2(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method private static final createTaskDismissAnimation$lambda$3(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;ZIILjava/lang/Boolean;)V
    .registers 14

    const-string v2, "$taskView"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$rv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v3, 0x0

    sput-boolean v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskDismissAnimation, onEnd, isSuccess="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_33

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_33

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_34

    :cond_33
    move-object v5, v6

    :goto_34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mCurrentTaskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mCurrentTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QuickStep"

    const-string v7, "RecentsViewAnimUtil"

    invoke-static {v5, v7, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isSuccess"

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_6a

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_6a

    sget v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mCurrentTaskId:I

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v1, :cond_6a

    move v1, v4

    goto :goto_6b

    :cond_6a
    move v1, v3

    :goto_6b
    if-eqz v1, :cond_f3

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    if-eqz p2, :cond_9e

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTask(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setLeftTopRightBottom(IIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isSupportQuickStartup:Z

    if-eqz v1, :cond_9e

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_9a

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_9b

    :cond_9a
    move-object v2, v6

    :goto_9b
    invoke-virtual {v1, v2}, Lcom/android/statistics/LauncherStatistics;->statRemoveQuickStartupApp(Ljava/lang/String;)V

    :cond_9e
    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_bb

    if-eqz p2, :cond_b7

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayValid()Z

    move-result v0

    if-nez v0, :cond_dd

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto :goto_dd

    :cond_b7
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->forceReload()V

    goto :goto_dd

    :cond_bb
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lt p3, v0, :cond_cf

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_ca

    goto :goto_cf

    :cond_ca
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    goto :goto_d4

    :cond_cf
    :goto_cf
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_d4
    invoke-virtual {p1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSnapImmediatelyByTaskDismiss(Z)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    invoke-virtual {p1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSnapImmediatelyByTaskDismiss(Z)V

    :cond_dd
    :goto_dd
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onLayout(ZIIII)V

    goto :goto_ff

    :cond_f3
    invoke-virtual {v2, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-eqz v0, :cond_ff

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->resetTaskIconsVisuals()V

    :cond_ff
    :goto_ff
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    invoke-virtual {p1, v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method private static final createTaskDismissAnimationAsGrid$lambda$4(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method private static final createTaskDismissAnimationAsGrid$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V
    .registers 3

    const-string p2, "$nextFocusedTaskView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$nextFocusedTaskViewHeaderHide"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    sput-boolean p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_36

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_36

    const-string p1, "null cannot be cast to non-null type com.android.quickstep.views.OplusTaskViewImpl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->HEADER_ALPHA:Landroid/util/FloatProperty;

    const/16 p2, 0xa

    new-array p2, p2, [F

    fill-array-data p2, :array_38

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_36
    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static final createTaskGoingDownAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "J)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_19
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addAdjacentTaskGoingDownAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    new-instance p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v0
.end method

.method public static synthetic d(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForAdjacentTask$lambda$25$lambda$23(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimationAsGrid$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation$lambda$2(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static final getTranslationPropForClearAllPanel(IZFF)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranslationPropForClearAllPanel, rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecentsViewPortrait = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  endLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsViewAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_37

    const/4 p0, 0x0

    return-object p0

    :cond_37
    if-nez p0, :cond_3c

    sget-object p0, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_3e

    :cond_3c
    sget-object p0, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    :goto_3e
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final getTranslationPropForClearAllPanel(IZLcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranslationPropForClearAllPanel, rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecentsViewPortrait = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsViewAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    const/4 p1, 0x4

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_34

    invoke-static {p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_34

    :cond_32
    move p1, v0

    goto :goto_35

    :cond_34
    :goto_34
    move p1, v1

    :goto_35
    if-nez p0, :cond_3a

    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_3c

    :cond_3a
    sget-object p2, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    :goto_3c
    invoke-static {p1}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->getOffsetForClearAllPanelView(Z)F

    move-result p1

    if-ne p0, v1, :cond_43

    neg-float p1, p1

    :cond_43
    const/4 p0, 0x2

    new-array p0, p0, [F

    aput p1, p0, v0

    const/4 p1, 0x0

    aput p1, p0, v1

    invoke-static {p2, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final hasRecentsOrRemoteAnimationRunningFlags(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsOrRemoteAnimationRunningFlags:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private final isAddItemActivityTop(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.android.launcher/com.android.launcher3.dragndrop.AddItemActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final setInputConsumerEnabled(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "controller"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInputConsumerEnabled: enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecentsViewAnimUtil"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    invoke-virtual {p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object p2

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object p2

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->isCreateInputConsumerFailed()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "setInputConsumerEnabled: call trace: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", createFailed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :cond_65
    if-eqz p1, :cond_83

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputConsumerEnabled: inputConsumer createFailed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    return-void
.end method

.method private final setRemoteRecentsAnimationRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning:Z

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_f

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public static final updateRecentsOrRemoteAnimationRunningFlags(IZ)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    if-eqz p1, :cond_8

    sget p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsOrRemoteAnimationRunningFlags:I

    or-int/2addr p0, p1

    goto :goto_c

    :cond_8
    sget p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsOrRemoteAnimationRunningFlags:I

    not-int p0, p0

    and-int/2addr p0, p1

    :goto_c
    sput p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsOrRemoteAnimationRunningFlags:I

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->hasRecentsOrRemoteAnimationRunningFlags(I)Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    return-void
.end method


# virtual methods
.method public final addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    invoke-virtual {p5, p2, p0, v1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v1, 0x7f07077e

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    const v1, 0x7f070bfa

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    invoke-virtual {v1, p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->isDynamicTaskView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getTaskViewOffScreenDistance(Lcom/android/quickstep/views/RecentsView;)I

    move-result p1

    goto :goto_50

    :cond_4c
    invoke-interface {v0, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result p1

    :goto_50
    int-to-float p1, p1

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    aput v0, v2, v3

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p1, p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public final addDismissedTaskAnimationsAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "J",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    invoke-virtual {p5, p2, p0, v1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v1, 0x7f07077e

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v0

    const v1, 0x7f070bfa

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v2

    invoke-interface {p1, p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getDismissTaskOffset(Landroid/view/View;)I

    move-result p1

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p1, p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public final cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_10

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->cancelLightningAnimation()V

    :cond_16
    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string v0, "cancelLightningAnimation"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const-string v1, "rv"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tv"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    goto :goto_28

    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    :goto_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v5

    sget-boolean v7, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_3a

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v7

    if-eqz v7, :cond_3a

    move v7, v9

    goto :goto_3b

    :cond_3a
    move v7, v8

    :goto_3b
    const-string v10, "createAdjacentPageAnimForTaskLaunch: shouldHandlerMultipleTaskView:"

    const-string v11, "RecentsViewAnimUtil"

    invoke-static {v10, v7, v11}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eq v1, v2, :cond_b4

    if-eqz v7, :cond_48

    goto/16 :goto_b4

    :cond_48
    const/4 v0, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v7

    if-le v2, v1, :cond_52

    if-eqz v7, :cond_54

    goto :goto_56

    :cond_52
    if-eqz v7, :cond_56

    :cond_54
    move v7, v9

    goto :goto_57

    :cond_56
    :goto_56
    move v7, v0

    :goto_57
    int-to-float v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    mul-float/2addr v4, v7

    invoke-virtual {v3, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v9, [F

    aput v4, v10, v8

    invoke-static {v5, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;

    invoke-direct {v5, v3, v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;F)V

    sub-int v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v9, :cond_92

    if-le v2, v1, :cond_80

    goto :goto_81

    :cond_80
    move v9, v0

    :goto_81
    add-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_b3

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_b3

    :cond_92
    add-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_a3

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_a3
    sub-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_b3

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_b3
    :goto_b3
    return-object v6

    :cond_b4
    :goto_b4
    if-eqz v7, :cond_bf

    if-eq v1, v2, :cond_bf

    sub-int v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v9, v8

    :cond_bf
    :goto_bf
    if-lez v9, :cond_df

    sub-int v8, v1, v9

    if-ltz v8, :cond_cd

    neg-int v8, v9

    invoke-direct {v0, v3, v1, v8}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForAdjacentTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_cd
    add-int v8, v1, v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v10

    if-ge v8, v10, :cond_dc

    invoke-direct {v0, v3, v1, v9}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForAdjacentTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_dc
    add-int/lit8 v9, v9, -0x1

    goto :goto_bf

    :cond_df
    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    const/high16 v9, 0x3f800000  # 1.0f

    if-nez v8, :cond_e8

    goto :goto_eb

    :cond_e8
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :goto_eb
    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v13, :cond_13f

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v14

    sget-object v15, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    move-object/from16 v16, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/android/quickstep/util/SplitScreenBounds;->getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v6

    const-string v15, "INSTANCE.getSecondaryWindowBounds(rv.context)"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    aget v15, v14, v15

    iget-object v6, v6, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v0

    const/4 v0, 0x1

    aget v0, v14, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    invoke-virtual {v10, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_141

    :cond_13f
    move-object/from16 v16, v6

    :goto_141
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0, v10, v6, v14}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result v0

    invoke-static {v9, v0}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    if-eqz v13, :cond_16f

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v6, :cond_16f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v6

    if-nez v6, :cond_16f

    const/4 v6, 0x0

    goto :goto_17c

    :cond_16f
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v13, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v6, v13

    :goto_17c
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    iget v14, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    if-eqz v7, :cond_1bc

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/OplusPagedViewImpl;->getPageScrolls()[I

    move-result-object v7

    if-eqz v7, :cond_1bc

    array-length v7, v7

    if-nez v7, :cond_196

    const/4 v7, 0x1

    goto :goto_197

    :cond_196
    const/4 v7, 0x0

    :goto_197
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1bc

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrentScroll()I

    move-result v7

    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v14

    if-eqz v14, :cond_1bb

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1b9

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1bb

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1b9

    goto :goto_1bc

    :cond_1b9
    add-float/2addr v13, v7

    goto :goto_1bc

    :cond_1bb
    add-float/2addr v6, v7

    :cond_1bc
    :goto_1bc
    const-string v7, "createAdjacentPageAnimForTaskLaunch, currentTaskView="

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v8, :cond_1cd

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v15

    if-eqz v15, :cond_1cd

    iget-object v15, v15, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_1ce

    :cond_1cd
    const/4 v15, 0x0

    :goto_1ce
    const-string v14, ", taskIndex="

    const-string v3, ", lastComputedTaskSize="

    invoke-static {v7, v15, v14, v1, v3}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", scaledTarget="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", target="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", translationX="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", translationY="

    const-string v1, ", scrollXOffset="

    invoke-static {v7, v6, v0, v13, v1}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v0, ", centerTaskIndex="

    invoke-static {v7, v12, v0, v2}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    invoke-static {v1, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_21f

    move-object v0, v4

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_220

    :cond_21f
    const/4 v0, 0x0

    :goto_220
    if-eqz v0, :cond_225

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->resetPressedScaleIfNeed()V

    :cond_225
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v6, v13}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAnimForCurrentTask(Lcom/android/quickstep/views/TaskView;FFF)Landroid/animation/Animator;

    move-result-object v0

    move-object/from16 v6, v16

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    move-object/from16 v3, p1

    invoke-static {v3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object v0

    if-eqz v0, :cond_24f

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockViewController;->getTaskLaunchAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    move-object v5, v0

    goto :goto_250

    :cond_24f
    const/4 v5, 0x0

    :goto_250
    new-instance v7, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v6
.end method

.method public final createAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;J)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    move-object/from16 v6, p1

    const-string v0, "rv"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/anim/PendingAnimation;

    move-wide/from16 v8, p2

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v10

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v12, 0x0

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_1b
    if-ge v13, v10, :cond_f4

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v5, 0x1

    if-eqz v1, :cond_f0

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v1

    aget v1, v1, v12

    move-object v3, v2

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_3f

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_3f

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, v1, :cond_3f

    move v4, v5

    goto :goto_40

    :cond_3f
    move v4, v12

    :goto_40
    if-eqz v4, :cond_79

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isRunningTaskWindowZoom(I)Z

    move-result v1

    if-nez v1, :cond_79

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v1

    if-ne v1, v5, :cond_5a

    move v1, v5

    goto :goto_5b

    :cond_5a
    move v1, v12

    :goto_5b
    if-nez v1, :cond_79

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_6e

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    :cond_6e
    const/4 v4, 0x0

    :goto_6f
    invoke-direct {v1, v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isAddItemActivityTop(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    move v14, v5

    move v15, v13

    goto/16 :goto_f0

    :cond_79
    if-eqz v14, :cond_b5

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_b1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_b1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b1

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v0, v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_96

    check-cast v4, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_97

    :cond_96
    const/4 v4, 0x0

    :goto_97
    if-eqz v4, :cond_a8

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_a8

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_b1

    move v0, v5

    goto :goto_b2

    :cond_b1
    move v0, v12

    :goto_b2
    if-eqz v0, :cond_b5

    goto :goto_f0

    :cond_b5
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMenuView()Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeSafely()V

    :cond_be
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v0

    if-nez v0, :cond_f0

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isSupportQuickStartup()Z

    move-result v0

    if-eqz v0, :cond_cb

    goto :goto_f0

    :cond_cb
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_de

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move/from16 v16, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimationsAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    goto :goto_ea

    :cond_de
    move/from16 v16, v5

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    :goto_ea
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_f0
    :goto_f0
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1b

    :cond_f4
    if-eqz v14, :cond_101

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_101

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    :goto_102
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDynamicTaskCallback()Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;

    move-result-object v1

    if-eqz v1, :cond_10b

    invoke-interface {v1, v6, v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;->onClickClearAll(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    :cond_10b
    if-nez v0, :cond_116

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/relay/data/RelayState$ClickClearAll;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ClickClearAll;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    :cond_116
    new-instance v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;

    invoke-direct {v1, v11, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAllTasksDismissAnimation$1$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher/model/b;

    invoke-direct {v1, v6, v0}, Lcom/android/launcher/model/b;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v7
.end method

.method public final createAppToOverview(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pa"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000  # 1.0f

    move-object v0, p2

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p1

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentsViewTransY()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p2, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_3e

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_40

    :cond_3e
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_40
    if-eqz p2, :cond_45

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_47

    :cond_45
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_47
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getWindowTranslationYOffset()I

    move-result p2

    sub-int/2addr v0, p2

    goto :goto_54

    :cond_53
    neg-int v0, v0

    :goto_54
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/TranslationYProperty;->recalculateBaseCoefficient()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setDraggingHeight(I)V

    return-void
.end method

.method public final createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;ZI)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "rv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_81

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_81

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_30

    move-object v7, v0

    goto :goto_4d

    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v7

    if-eqz v7, :cond_44

    invoke-virtual {v7}, Lcom/oplus/quickstep/dock/DockView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v7

    if-eqz v7, :cond_44

    invoke-virtual {v7}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_44

    move v7, v5

    goto :goto_45

    :cond_44
    move v7, v6

    :goto_45
    if-eqz v7, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v7

    goto :goto_4d

    :cond_4c
    const/4 v7, 0x0

    :goto_4d
    if-eqz v7, :cond_78

    invoke-virtual {v7, v6}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    iget v7, v7, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_61

    move v8, v5

    goto :goto_62

    :cond_61
    move v8, v6

    :goto_62
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v7, 0x0

    :goto_6e
    if-eqz v7, :cond_75

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_76

    :cond_75
    move v7, v3

    :goto_76
    iput v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_78
    iget v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v7, v3, :cond_81

    const/16 v8, 0xc8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    :cond_81
    const-string v7, "createRotateAnimation(), fadeInChildren="

    const-string v8, ", newRotation="

    const-string v9, ", runningIndex="

    invoke-static {v7, v1, v8, v2, v9}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mIndexBefore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mIndexBeforeRotationChanged:I

    const-string v9, ", currentPage="

    invoke-static {v7, v8, v9, v3}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "QuickStep"

    const-string v8, "RecentsViewAnimUtil"

    invoke-static {v7, v8, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_aa

    iget v3, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sput v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mIndexBeforeRotationChanged:I

    :cond_aa
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v8

    move v9, v6

    :goto_b8
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000  # 1.0f

    if-ge v9, v8, :cond_146

    invoke-virtual {v0, v9}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v12

    sget v13, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mIndexBeforeRotationChanged:I

    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v13, v14, :cond_c9

    if-ne v14, v9, :cond_106

    :cond_c9
    instance-of v13, v12, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v13, :cond_106

    check-cast v12, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v12}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v13

    sget-object v14, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v15, v5, [F

    if-eqz v1, :cond_dc

    move/from16 v16, v10

    goto :goto_de

    :cond_dc
    move/from16 v16, v11

    :goto_de
    aput v16, v15, v6

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v12, v11}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setAlpha(F)V

    invoke-virtual {v12}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isSupportQuickStartup()Z

    move-result v13

    if-eqz v13, :cond_142

    invoke-virtual {v12}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v12

    sget-object v13, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->LIGHTNING_ALPHA:Landroid/util/FloatProperty;

    new-array v14, v5, [F

    if-eqz v1, :cond_fb

    goto :goto_fc

    :cond_fb
    move v10, v11

    :goto_fc
    aput v10, v14, v6

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_142

    :cond_106
    sget-object v13, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v14, v5, [F

    if-eqz v1, :cond_10d

    goto :goto_10e

    :cond_10d
    move v10, v11

    :goto_10e
    aput v10, v14, v6

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v12, :cond_11e

    invoke-virtual {v12}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v10

    goto :goto_11f

    :cond_11e
    const/4 v10, 0x0

    :goto_11f
    instance-of v11, v10, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v11, :cond_142

    move-object v11, v10

    check-cast v11, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iget-object v12, v11, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v12}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result v12

    if-nez v12, :cond_142

    invoke-virtual {v11}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->drawBackgroundOnly()Z

    move-result v12

    if-nez v12, :cond_142

    invoke-virtual {v11}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isThumbnailTranslucent()Z

    move-result v11

    if-nez v11, :cond_142

    new-instance v11, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$1;

    invoke-direct {v11, v10}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$1;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_142
    :goto_142
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_b8

    :cond_146
    invoke-static {v7}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isVisibleState(Lcom/android/launcher3/states/OPlusBaseState;)Z

    move-result v4

    if-nez v4, :cond_14e

    if-eqz v1, :cond_159

    :cond_14e
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->createRotateAnimation(Z)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_159
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onRecentsViewRotate(ILandroid/animation/AnimatorSet;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object v4

    if-eqz v4, :cond_16b

    invoke-virtual {v4}, Lcom/oplus/quickstep/dock/DockViewController;->getOrientationAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v4

    goto :goto_16c

    :cond_16b
    const/4 v4, 0x0

    :goto_16c
    if-eqz v4, :cond_18a

    if-eqz v2, :cond_181

    if-eq v2, v5, :cond_179

    const/4 v5, 0x2

    if-eq v2, v5, :cond_181

    const/4 v5, 0x3

    if-eq v2, v5, :cond_179

    goto :goto_18a

    :cond_179
    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_18a

    :cond_181
    if-eqz v1, :cond_18a

    invoke-virtual {v4, v11}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_18a
    :goto_18a
    new-instance v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;

    invoke-direct {v5, v2, v0, v1, v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$2$2;-><init>(ILcom/android/quickstep/views/OplusRecentsViewImpl;ZLcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method public final createTaskDismissAnimationAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZZJZ)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "rv"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissedTaskView"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_20

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_20
    new-instance v13, Lcom/android/launcher3/anim/PendingAnimation;

    move-wide/from16 v8, p5

    invoke-direct {v13, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v10

    if-nez v10, :cond_2e

    return-object v13

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v11

    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v14

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v6, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v14, v0, :cond_55

    const/16 v16, 0x1

    goto :goto_57

    :cond_55
    const/16 v16, 0x0

    :goto_57
    const-string v0, "rv.requireTaskViewAt(i)"

    if-eqz v16, :cond_cb

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v17

    if-nez v17, :cond_cb

    iget-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    if-lez v1, :cond_7d

    iget-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v2, v11, -0x1

    int-to-float v2, v2

    const/high16 v19, 0x40000000  # 2.0f

    div-float v2, v2, v19

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    :goto_7e
    const/4 v2, 0x0

    :goto_7f
    if-ge v2, v11, :cond_af

    invoke-virtual {v6, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v4, v7, :cond_8f

    move/from16 v20, v3

    move-object/from16 v21, v5

    goto :goto_a8

    :cond_8f
    move/from16 v20, v3

    iget-object v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    move-object/from16 v21, v5

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v1, :cond_a1

    if-nez v3, :cond_a5

    :cond_a1
    if-nez v1, :cond_a8

    if-nez v3, :cond_a8

    :cond_a5
    iput-object v4, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_b3

    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v20

    move-object/from16 v5, v21

    goto :goto_7f

    :cond_af
    move/from16 v20, v3

    move-object/from16 v21, v5

    :goto_b3
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_c8

    check-cast v2, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v6, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v22, v1

    move/from16 v23, v2

    goto :goto_d3

    :cond_c8
    move/from16 v22, v1

    goto :goto_d1

    :cond_cb
    move/from16 v20, v3

    move-object/from16 v21, v5

    const/16 v22, 0x0

    :goto_d1
    const/16 v23, 0x0

    :goto_d3
    iget-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_e5

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v1

    if-eqz v1, :cond_e5

    const/4 v1, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v1, 0x0

    :goto_e6
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderFirstInGrid()Z

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderLastInGrid()Z

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget v3, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v6, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v4

    if-ne v3, v4, :cond_105

    const/16 v26, 0x1

    goto :goto_107

    :cond_105
    const/16 v26, 0x0

    :goto_107
    if-eqz v2, :cond_1d3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_1d3

    iget-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v2

    iget-object v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v3

    sub-int v3, v11, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_124

    move/from16 v19, v4

    goto :goto_126

    :cond_124
    const/16 v19, 0x0

    :goto_126
    if-le v3, v2, :cond_12a

    move v2, v4

    goto :goto_12b

    :cond_12a
    const/4 v2, 0x0

    :goto_12b
    iget-object v3, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_138

    if-nez v16, :cond_138

    move/from16 v27, v4

    goto :goto_13a

    :cond_138
    const/16 v27, 0x0

    :goto_13a
    if-eqz v19, :cond_13e

    if-nez v3, :cond_142

    :cond_13e
    if-eqz v2, :cond_146

    if-eqz v27, :cond_146

    :cond_142
    move/from16 v2, v20

    :goto_144
    const/4 v3, 0x0

    goto :goto_153

    :cond_146
    if-eqz v19, :cond_14a

    if-nez v22, :cond_14e

    :cond_14a
    if-eqz v2, :cond_151

    if-nez v22, :cond_151

    :cond_14e
    move/from16 v2, v23

    goto :goto_144

    :cond_151
    const/4 v2, 0x0

    goto :goto_144

    :goto_153
    cmpl-float v18, v2, v3

    const/4 v4, 0x2

    if-lez v18, :cond_167

    if-le v11, v4, :cond_160

    iget-boolean v5, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_165

    neg-float v2, v2

    goto :goto_165

    :cond_160
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSnapToFocusedTaskScrollDiff()I

    move-result v2

    int-to-float v2, v2

    :cond_165
    :goto_165
    add-float/2addr v2, v3

    goto :goto_168

    :cond_167
    move v2, v3

    :goto_168
    if-eqz v1, :cond_16e

    if-eqz v26, :cond_16e

    const/4 v1, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v1, 0x0

    :goto_16f
    cmpg-float v5, v2, v3

    if-nez v5, :cond_175

    const/4 v5, 0x1

    goto :goto_176

    :cond_175
    const/4 v5, 0x0

    :goto_176
    if-nez v5, :cond_1ce

    if-eq v11, v4, :cond_18b

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_188

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v4

    if-nez v4, :cond_188

    const/4 v4, 0x1

    goto :goto_189

    :cond_188
    const/4 v4, 0x0

    :goto_189
    if-eqz v4, :cond_1ce

    :cond_18b
    const v4, 0x3ccccccd  # 0.025f

    add-int/lit8 v5, v11, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v3, 0x3f400000  # 0.75f

    add-float/2addr v5, v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v5, v3, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    const/4 v3, 0x0

    :goto_19c
    if-ge v3, v11, :cond_1ca

    invoke-virtual {v6, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v0

    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    move/from16 v29, v1

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v1, v5, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v13, v4, v0, v2, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    const v0, 0x3ccccccd  # 0.025f

    sub-float/2addr v5, v0

    const/high16 v1, 0x3f400000  # 0.75f

    invoke-static {v5, v1, v8}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v5

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-wide/from16 v8, p5

    goto :goto_19c

    :cond_1ca
    move/from16 v29, v1

    move v8, v4

    goto :goto_1d7

    :cond_1ce
    move/from16 v29, v1

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_1d7

    :cond_1d3
    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v29, 0x0

    :goto_1d7
    const/4 v9, 0x0

    :goto_1d8
    if-ge v9, v10, :cond_314

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v7, :cond_219

    if-eqz p3, :cond_20d

    if-eqz p7, :cond_1f5

    invoke-virtual {v6, v13}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    move/from16 v18, v10

    move/from16 v17, v11

    move-object/from16 v3, v21

    const/4 v11, 0x0

    move v10, v8

    move/from16 v8, v20

    move/from16 v20, v14

    goto/16 :goto_305

    :cond_1f5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move/from16 v17, v8

    move/from16 v18, v10

    move/from16 v8, v20

    const/4 v10, 0x1

    move-wide/from16 v3, p5

    move-object/from16 v30, v21

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimationsAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    goto/16 :goto_2fc

    :cond_20d
    move/from16 v18, v10

    move/from16 v8, v20

    move/from16 v17, v11

    move/from16 v20, v14

    move-object/from16 v3, v21

    goto/16 :goto_302

    :cond_219
    move/from16 v18, v10

    move/from16 v8, v20

    move-object/from16 v30, v21

    const/4 v10, 0x1

    instance-of v1, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_2fc

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v16, :cond_236

    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_240

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v6, v0, v1}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-nez v1, :cond_240

    goto/16 :goto_2fc

    :cond_236
    if-lt v9, v12, :cond_2fc

    invoke-virtual {v6, v0, v7}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-nez v1, :cond_240

    goto/16 :goto_2fc

    :cond_240
    iget-object v1, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v0, v1, :cond_2b5

    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v1, v1

    iget-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput-boolean v10, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    move-object v2, v0

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v3

    sget-object v4, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->HEADER_ALPHA:Landroid/util/FloatProperty;

    const/16 v5, 0xa

    new-array v5, v5, [F

    fill-array-data v5, :array_360

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    move-object/from16 v3, v30

    iput-boolean v10, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v4, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v17, v11

    move/from16 v20, v14

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    invoke-static {v5, v11, v10}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v14

    invoke-virtual {v13, v0, v4, v1, v14}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    iget-boolean v4, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_28e

    move v4, v8

    goto :goto_28f

    :cond_28e
    neg-float v4, v8

    :goto_28f
    invoke-static {v5, v11, v10}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v14

    invoke-virtual {v13, v0, v1, v4, v14}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    neg-float v1, v1

    if-nez v22, :cond_29e

    iget v4, v6, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    sub-float/2addr v1, v4

    :cond_29e
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {v5, v11, v10}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v13, v0, v2, v1, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-static {v5, v11, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v11, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_305

    :cond_2b5
    move/from16 v17, v11

    move/from16 v20, v14

    move-object/from16 v3, v30

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    if-eqz v1, :cond_2c3

    move/from16 v2, v23

    goto :goto_2c4

    :cond_2c3
    move v2, v8

    :goto_2c4
    if-eqz v16, :cond_2e8

    if-nez v1, :cond_2e8

    invoke-virtual {v6, v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v1

    iget-object v4, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, v1

    iget-boolean v1, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    int-to-float v4, v4

    if-eqz v1, :cond_2d9

    goto :goto_2da

    :cond_2d9
    neg-float v4, v4

    :goto_2da
    add-float/2addr v2, v4

    if-eqz v24, :cond_2e8

    if-eqz v1, :cond_2e4

    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    int-to-float v1, v1

    neg-float v1, v1

    goto :goto_2e7

    :cond_2e4
    iget v1, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    int-to-float v1, v1

    :goto_2e7
    add-float/2addr v2, v1

    :cond_2e8
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    iget-boolean v4, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_2f1

    goto :goto_2f2

    :cond_2f1
    neg-float v2, v2

    :goto_2f2
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v4, v11, v10}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v13, v0, v1, v2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_305

    :cond_2fc
    :goto_2fc
    move/from16 v17, v11

    move/from16 v20, v14

    move-object/from16 v3, v30

    :goto_302
    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    :goto_305
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v21, v3

    move/from16 v11, v17

    move/from16 v14, v20

    move/from16 v20, v8

    move v8, v10

    move/from16 v10, v18

    goto/16 :goto_1d8

    :cond_314
    move/from16 v17, v11

    move/from16 v20, v14

    move-object/from16 v3, v21

    if-eqz p3, :cond_32f

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    if-nez v0, :cond_323

    goto :goto_329

    :cond_323
    const v1, 0x3d4ccccd  # 0.05f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :goto_329
    const v0, 0x3dcccccd  # 0.1f

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_32f
    new-instance v0, Lcom/android/launcher/model/c;

    invoke-direct {v0, v15, v3}, Lcom/android/launcher/model/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v13, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    iput-object v13, v6, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/quickstep/views/TaskView;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v14, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, v29

    move/from16 v6, v20

    move/from16 v7, v24

    move/from16 v8, v25

    move v9, v12

    move/from16 v10, v17

    move/from16 v11, v16

    move/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZLcom/android/quickstep/views/TaskView;IZZIIZZ)V

    invoke-virtual {v13, v14}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-object v13

    :array_360
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            "J)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anim"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->clearEnterAnim()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    const/16 v1, 0xa

    new-array v2, v1, [F

    fill-array-data v2, :array_56

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sget-object v2, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p3, p0, v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getTaskLaunchAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    if-eqz p0, :cond_4d

    sget-object v3, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    fill-array-data v1, :array_6e

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p3, p4, v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    :cond_4d
    new-instance p4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskLaunchAnimation$1$2;

    invoke-direct {p4, p2, p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskLaunchAnimation$1$2;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V

    invoke-virtual {p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3

    :array_56
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final getAllTaskDismissRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->allTaskDismissRunning:Z

    return p0
.end method

.method public final getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;>;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->CONTENT_ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-object p0
.end method

.method public final getDismissDisplacementOfDraggedTask(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/touch/PagedOrientationHandler;)F
    .registers 3

    const-string p0, "draggedTask"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pagedOrientationHandler"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result p2

    add-float/2addr p2, p0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    goto :goto_28

    :cond_23
    invoke-interface {p2, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result p0

    int-to-float p2, p0

    :goto_28
    return p2
.end method

.method public final getForceNotResetTaskVisuals()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->forceNotResetTaskVisuals:Z

    return p0
.end method

.method public final getForceNotScaleWallpaperByLaunchTask()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->forceNotScaleWallpaperByLaunchTask:Z

    return p0
.end method

.method public final getMtaskScaleProgerssStart()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    return p0
.end method

.method public final getOverviewPeeking()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->overviewPeeking:Z

    return p0
.end method

.method public final getRecentsAnimationFinishTime()J
    .registers 3

    sget-wide v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsAnimationFinishTime:J

    return-wide v0
.end method

.method public final getTaskViewSwipeAction()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isExitStateAnimRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isExitStateAnimRunning:Z

    return p0
.end method

.method public final isLaunchFromButtonRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning:Z

    return p0
.end method

.method public final isPendingLaunchTask()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isPendingLaunchTask:Z

    return p0
.end method

.method public final isRecentsAnimationRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimationRunning:Z

    return p0
.end method

.method public final isRemoteRecentsAnimationRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning:Z

    return p0
.end method

.method public final isSplitTaskLaunchRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isSplitTaskLaunchRunning:Z

    return p0
.end method

.method public final isTaskDismissAnimRunning()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning:Z

    return p0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setLaunchFromButtonRunning(Z)V

    const/4 p0, 0x3

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->updateRecentsOrRemoteAnimationRunningFlags(IZ)V

    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isSplitTaskLaunchRunning:Z

    return-void
.end method

.method public final setExitStateAnimRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isExitStateAnimRunning:Z

    return-void
.end method

.method public final setForceNotResetTaskVisuals(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->forceNotResetTaskVisuals:Z

    return-void
.end method

.method public final setForceNotScaleWallpaperByLaunchTask(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->forceNotScaleWallpaperByLaunchTask:Z

    return-void
.end method

.method public final setLaunchFromButtonRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning:Z

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_f

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public final setMtaskScaleProgerssStart(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->mtaskScaleProgerssStart:Z

    return-void
.end method

.method public final setOverviewPeeking(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->overviewPeeking:Z

    return-void
.end method

.method public final setPendingLaunchTask(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isPendingLaunchTask:Z

    return-void
.end method

.method public final setRecentsAnimationFinishTime(J)V
    .registers 3

    sput-wide p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->recentsAnimationFinishTime:J

    return-void
.end method

.method public final setRecentsAnimationRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimationRunning:Z

    if-nez p1, :cond_8

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setInPreStageOfGestureRecentsAnimation(Z)V

    :cond_8
    return-void
.end method

.method public final setSplitTaskLaunchRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isSplitTaskLaunchRunning:Z

    return-void
.end method

.method public final setTaskDismissAnimRunning(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning:Z

    return-void
.end method

.method public final setTaskViewSwipeAction(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->taskViewSwipeAction:Lkotlin/jvm/functions/Function1;

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning:Z

    if-nez p0, :cond_a

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning:Z

    if-eqz p0, :cond_11

    :cond_a
    if-eqz p1, :cond_11

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public final showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "rv"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    if-eqz v0, :cond_21

    return-void

    :cond_21
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_2c

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_2c
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showLightningAnimation()V

    :cond_31
    const-string p0, "QuickStep"

    const-string p1, "RecentsViewAnimUtil"

    const-string v0, "showLightningAnimation"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
