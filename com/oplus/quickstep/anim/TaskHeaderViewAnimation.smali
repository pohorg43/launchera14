.class public final Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;
    }
.end annotation


# static fields
.field public static final ALPHA_PROPERTY:Landroid/util/FloatProperty;
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

.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final Companion:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;

.field private static final HIDDEN_ALPHA:F = 0.0f

.field private static final SHOWN_ALPHA:F = 1.0f

.field private static final SHOW_TIME:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "TaskHeaderViewAnimation"


# instance fields
.field private forceNotShowHeader:Z

.field private headerHiddenAnimator:Landroid/animation/Animator;

.field private headerShownAnimator:Landroid/animation/Animator;

.field private isHidden:Z

.field private shownAlpha:F

.field private final taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->Companion:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion$ALPHA_PROPERTY$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion$ALPHA_PROPERTY$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    return-void
.end method

.method public static synthetic a(FLcom/oplus/quickstep/anim/TaskHeaderViewAnimation;Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->animateToShow$lambda$3$lambda$2(FLcom/oplus/quickstep/anim/TaskHeaderViewAnimation;Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final animateToShow$lambda$3$lambda$2(FLcom/oplus/quickstep/anim/TaskHeaderViewAnimation;Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    iget p1, p1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    invoke-static {p3, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    sget-object p1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->ALPHA_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method private final cancelToHidden()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHiddenStarted()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "cancelToHidden "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

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

    const-string v2, "TaskHeaderViewAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->headerHiddenAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2b
    return-void
.end method

.method private final cancelToShown()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isShownStarted()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "cancelToShown "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

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

    const-string v2, "TaskHeaderViewAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->headerShownAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2b
    return-void
.end method

.method private final isHiddenStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->headerHiddenAnimator:Landroid/animation/Animator;

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
.method public final animateToHide()V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->cancelAllAnimator()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToHide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

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

    const-string v2, "TaskHeaderViewAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    if-eqz v0, :cond_5a

    sget-object v1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->ALPHA_PROPERTY:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->Companion:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;

    invoke-static {v1}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;->access$getHIDE_TIME(Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;->access$getSTART_DELAY(Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    iput-boolean v2, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->forceNotShowHeader:Z

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->headerHiddenAnimator:Landroid/animation/Animator;

    :cond_5a
    return-void
.end method

.method public final animateToShow()V
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->cancelAllAnimator()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v3, "TaskHeaderViewAnimation"

    invoke-static {v1, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->forceNotShowHeader:Z

    iget v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_34

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    :cond_34
    iget-object v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v2

    :cond_3c
    if-eqz v2, :cond_76

    iget v1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    move v1, v0

    :goto_4b
    if-eqz v1, :cond_4e

    goto :goto_76

    :cond_4e
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_7a

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/iconrender/impl/d;

    invoke-direct {v4, v1, p0, v2}, Lcom/android/launcher3/iconrender/impl/d;-><init>(FLcom/oplus/quickstep/anim/TaskHeaderViewAnimation;Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iput-object v3, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->headerShownAnimator:Landroid/animation/Animator;

    return-void

    :cond_76
    :goto_76
    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    return-void

    nop

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final cancelAllAnimator()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->cancelToHidden()V

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->cancelToShown()V

    return-void
.end method

.method public final getForceNotShowHeader()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->forceNotShowHeader:Z

    return p0
.end method

.method public final getShownAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    return p0
.end method

.method public final getTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-object p0
.end method

.method public final hideHeaderWithoutAnimation()Z
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "TaskHeaderViewAnimation"

    const-string v2, "hideHeaderWithoutAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->cancelAllAnimator()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return v0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    return p0
.end method

.method public final isShownStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->headerShownAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final setForceNotShowHeader(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->forceNotShowHeader:Z

    return-void
.end method

.method public final setHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    return-void
.end method

.method public final setShownAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->shownAlpha:F

    return-void
.end method

.method public final showHeaderWithoutAnimation()Z
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "TaskHeaderViewAnimation"

    const-string v2, "showHeaderWithoutAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->forceNotShowHeader:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->cancelAllAnimator()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden:Z

    iget-object p0, p0, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    if-eqz p0, :cond_25

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return v1

    :cond_25
    return v0
.end method
