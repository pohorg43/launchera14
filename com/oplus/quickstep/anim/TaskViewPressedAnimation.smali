.class public final Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;

.field public static final NORMAL_SCALE:F = 1.0f

.field public static final PRESSED_SCALE:F = 0.97f

.field public static final SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final START_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "TaskViewPressedAnimation"


# instance fields
.field private isPressed:Z

.field private normalAnimator:Landroid/animation/Animator;

.field private normalScale:F

.field private pressedAnimator:Landroid/animation/Animator;

.field private final taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->Companion:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion;

    new-instance v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion$SCALE_PROPERTY$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation$Companion$SCALE_PROPERTY$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;FLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal$lambda$2$lambda$1(Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final adjustNormalScale()V
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    iput v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    :cond_11
    return-void
.end method

.method private static final animateToNormal$lambda$2$lambda$1(Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;FLandroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->adjustNormalScale()V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    iget v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_24

    sget-object p2, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_2f

    :cond_24
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_2f
    return-void
.end method

.method private final cancelToNormal()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isNormalStarted()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "cancelToNormal "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TaskViewPressedAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2b
    return-void
.end method

.method private final cancelToPressed()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressedStarted()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "cancelToPressed "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TaskViewPressedAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    :cond_2e
    return-void
.end method

.method private final isPressedStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method


# virtual methods
.method public final animateToNormal()V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelAllAnimator()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToNormal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",  normalScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TaskViewPressedAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->adjustNormalScale()V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    iget v2, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    cmpg-float v0, v2, v0

    if-nez v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    if-eqz v0, :cond_47

    goto :goto_7e

    :cond_47
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDismissScale()F

    move-result v0

    goto :goto_5a

    :cond_54
    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    :goto_5a
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_82

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/q0;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/bubbles/q0;-><init>(Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalAnimator:Landroid/animation/Animator;

    return-void

    :cond_7e
    :goto_7e
    iput-boolean v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    return-void

    nop

    :array_82
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final animateToPressed()V
    .registers 9

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelAllAnimator()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToPressed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TaskViewPressedAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_47
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDismissScale()F

    move-result v0

    goto :goto_5a

    :cond_54
    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    :goto_5a
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v3

    const v4, 0x3f7851ec  # 0.97f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    sget-object v7, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    aput v0, v1, v5

    aput v4, v1, v6

    invoke-static {v3, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_82

    :cond_74
    iget-object v3, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    sget-object v7, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    aput v0, v1, v5

    aput v4, v1, v6

    invoke-static {v3, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_82
    iput-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isGridTaskDragAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v6, :cond_97

    move v5, v6

    :cond_97
    if-eqz v5, :cond_a0

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_a0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_a0
    const-string p0, "animateToPressed() cancel pressedAnimator."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a6
    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->pressedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_be

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iput-boolean v6, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_be
    return-void
.end method

.method public final cancelAllAnimator()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelToPressed()V

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelToNormal()V

    return-void
.end method

.method public final getNormalScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    return p0
.end method

.method public final getTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-object p0
.end method

.method public final isNormalStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final isPressScaleForGridRecentView()Z
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const/high16 v0, 0x3f800000  # 1.0f

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final isPressed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    return p0
.end method

.method public final setNormalScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->normalScale:F

    return-void
.end method

.method public final setPressed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed:Z

    return-void
.end method
