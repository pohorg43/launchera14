.class public final Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/layout/ITaskAnimationBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskAnimationBuilderMutliRowImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskAnimationBuilderMutliRowImpl.kt\ncom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,434:1\n1#2:435\n31#3:436\n94#3,14:437\n94#3,14:451\n94#3,14:465\n*S KotlinDebug\n*F\n+ 1 OplusTaskAnimationBuilderMutliRowImpl.kt\ncom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl\n*L\n279#1:436\n279#1:437,14\n299#1:451,14\n337#1:465,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$Companion;

.field public static final MUTLI_ROW_SCALE_ANIMATOR_NAME:Ljava/lang/String; = "MUTLI_ROW_SCALE_ANIMATOR_NAME"

.field private static final REMOVE_AND_SNAP_DIFFERENCE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MR_TaskAnimationBuilder"

.field public static isGridRecntViewFillInAnimatorRunning:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private endPoint:I

.field private mDismissingTaskId:I

.field private mLayoutImpl:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->Companion:Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;)V
    .registers 3

    const-string v0, "mLayoutImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mLayoutImpl:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->fillInAnimator$lambda$3(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private final actionAfterAnimatorSet(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "actionAfterAnimatorSet(), remove="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removeTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", goHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissingTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    const-string v2, "MR_TaskAnimationBuilder"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2f
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties()V

    if-eqz p3, :cond_3d

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTask(Lcom/android/quickstep/views/TaskView;)V

    :cond_3d
    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/FrameLayout;->setLeftTopRightBottom(IIII)V

    if-eqz p4, :cond_46

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    :cond_46
    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    return-void
.end method

.method private final addDismissedTaskViewAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    new-instance p2, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v0, 0x7f07077e

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p2

    const v0, 0x7f070bfa

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p3}, Lcom/android/quickstep/views/TaskView;->getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [F

    invoke-interface {p4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v2, p3, p4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getDismissDisplacementOfDraggedTask(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/touch/PagedOrientationHandler;)F

    move-result p4

    mul-float/2addr p4, v1

    const/4 v1, 0x0

    aput p4, v0, v1

    invoke-static {p3, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "dismissAnim"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$addDismissedTaskViewAnimation$$inlined$addListener$default$1;

    invoke-direct {p3}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$addDismissedTaskViewAnimation$$inlined$addListener$default$1;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->createTaskLaunchAnimation$lambda$8(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->snapPageWithFillin$lambda$10(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final createSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    new-instance p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, p1, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x43480000  # 200.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const p2, 0x3f4ccccd  # 0.8f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method private static final createTaskDismissAnimation$lambda$1(ILcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/util/IntSet;ZLcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/TaskView;ZLjava/util/ArrayList;Ljava/lang/Boolean;)V
    .registers 11

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topRowIdSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dismissedTaskView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$spiritAnimationList"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTaskDismissAnimation()--onEnd(), isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dismissTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MR_TaskAnimationBuilder"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const-string p0, "isSuccess"

    invoke-static {p8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p8, -0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_6b

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSet;->clear()V

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    if-eqz p3, :cond_5a

    invoke-direct {p4, p1, p5, p6, p7}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->fillInAnimator(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZLjava/util/ArrayList;)V

    goto :goto_74

    :cond_5a
    sput-boolean v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    invoke-virtual {p1, p5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTask(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    if-nez p0, :cond_68

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    :cond_68
    iput p8, p4, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    goto :goto_74

    :cond_6b
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    sput-boolean v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    iput p8, p4, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    :goto_74
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method private static final createTaskLaunchAnimation$lambda$8(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/Boolean;)V
    .registers 3

    const-string p1, "$recentsView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "MR_TaskAnimationBuilder"

    const-string v0, "onLaunchAnimationEnd"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public static synthetic d(ILcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/util/IntSet;ZLcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/TaskView;ZLjava/util/ArrayList;Ljava/lang/Boolean;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->createTaskDismissAnimation$lambda$1(ILcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/util/IntSet;ZLcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/TaskView;ZLjava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->fillInAnimator$lambda$2(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V

    return-void
.end method

.method private final fillInAnimator(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZLjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mLayoutImpl:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;->getPageScrollsCalculator()Lcom/oplus/quickstep/layout/IPageScrollsCalculator;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.oplus.quickstep.layout.grid.multirow.OplusPageScrollsCalculatorMultiRowImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1b

    iget v1, p1, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->snapPageWithFillin(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;I)Z

    goto :goto_42

    :cond_1b
    invoke-virtual {v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getMIsShowInGrid()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-ne v0, v3, :cond_29

    move v0, v3

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->actionAfterAnimatorSet(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZ)V

    sput-boolean v2, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    goto :goto_42

    :cond_30
    const/16 v1, 0x15e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->snapPageWithFillin(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;I)Z

    new-instance v0, Lcom/android/common/util/k0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/common/util/k0;-><init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V

    int-to-long v4, v1

    const/16 v1, 0x64

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {p1, v0, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_42
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->endPoint:I

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4c
    if-ge v2, v0, :cond_69

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "spiritAnimationList[i]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sput-boolean v3, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    new-instance v4, Lcom/oplus/quickstep/layout/grid/multirow/a;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/oplus/quickstep/layout/grid/multirow/a;-><init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_69
    return-void
.end method

.method private static final fillInAnimator$lambda$2(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dismissedTaskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    move v0, v2

    :cond_1a
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->actionAfterAnimatorSet(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZ)V

    return-void
.end method

.method private static final fillInAnimator$lambda$3(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 8

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$recentsView"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$dismissedTaskView"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, -0x1

    iput p4, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    iget p5, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->endPoint:I

    add-int/2addr p5, p4

    iput p5, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->endPoint:I

    if-gtz p5, :cond_26

    const/4 p4, 0x0

    sput-boolean p4, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p5

    if-nez p5, :cond_23

    const/4 p4, 0x1

    :cond_23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->actionAfterAnimatorSet(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZ)V

    :cond_26
    return-void
.end method

.method private final snapPageWithFillin(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getMIsShowInGrid()Z

    move-result v1

    if-nez v1, :cond_155

    const/4 v1, 0x4

    if-gt v0, v1, :cond_15

    goto/16 :goto_155

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v1

    const-string v9, "MR_TaskAnimationBuilder"

    if-nez v1, :cond_4d

    const-string v1, "snapPageWithFillin(), scrolling, abort first, curPage="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nextPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v6, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;

    if-eqz v1, :cond_47

    move-object v1, v6

    check-cast v1, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsView;->endScrollerAnimation()V

    :cond_4d
    iget-object v1, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v10

    iget v11, v6, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v12, 0x1

    add-int/lit8 v13, v0, -0x1

    new-array v14, v13, [I

    const/4 v3, 0x0

    new-instance v5, Lcom/android/exceptionmonitor/util/d;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/quickstep/views/TaskView;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object v2, v14

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getPageScrolls(Lcom/android/quickstep/views/RecentsView;[IZILcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/OplusPagedViewImpl;->getMinScroll()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result v2

    invoke-virtual {v7, v6, v13}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->isShowInGrid(Lcom/android/quickstep/views/RecentsView;I)Z

    move-result v3

    invoke-virtual {v7, v10, v14}, Lcom/oplus/quickstep/layout/grid/multirow/OplusPageScrollsCalculatorMultiRowImpl;->getNearestPage(I[I)I

    move-result v4

    if-ltz v11, :cond_85

    if-ge v11, v13, :cond_85

    move v5, v12

    goto :goto_86

    :cond_85
    const/4 v5, 0x0

    :goto_86
    if-eqz v5, :cond_8b

    aget v5, v14, v11

    goto :goto_8c

    :cond_8b
    const/4 v5, 0x0

    :goto_8c
    sub-int/2addr v13, v12

    aget v7, v14, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/OplusPagedViewImpl;->getPageScrolls()[I

    move-result-object v12

    if-eqz v12, :cond_9f

    invoke-static {v12}, Li4/k;->I([I)I

    move-result v13

    invoke-static {v12}, Li4/k;->v([I)I

    move-result v12

    sub-int/2addr v13, v12

    goto :goto_a0

    :cond_9f
    const/4 v13, 0x0

    :goto_a0
    invoke-static {v14}, Li4/k;->I([I)I

    move-result v12

    invoke-static {v14}, Li4/k;->v([I)I

    move-result v15

    sub-int/2addr v12, v15

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-eqz v3, :cond_b8

    if-eqz v0, :cond_b5

    sub-int v0, v2, v10

    goto :goto_d1

    :cond_b5
    sub-int v0, v1, v10

    goto :goto_d1

    :cond_b8
    if-eqz v0, :cond_bc

    move v13, v1

    goto :goto_bd

    :cond_bc
    move v13, v2

    :goto_bd
    if-ne v10, v13, :cond_c7

    if-ne v5, v7, :cond_c7

    if-eqz v0, :cond_c5

    move v0, v12

    goto :goto_d1

    :cond_c5
    neg-int v0, v12

    goto :goto_d1

    :cond_c7
    if-eqz v0, :cond_cb

    const/4 v0, -0x1

    goto :goto_cc

    :cond_cb
    const/4 v0, 0x1

    :goto_cc
    sub-int v13, v5, v10

    mul-int/2addr v0, v12

    sub-int v0, v13, v0

    :goto_d1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v13

    if-eqz v13, :cond_147

    const-string v13, "snapPageWithFillin(), cur: "

    const-string v15, ", pageScrolls: "

    invoke-static {v13, v11, v15}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/OplusPagedViewImpl;->getPageScrolls()[I

    move-result-object v16

    const-string v6, "toString(this)"

    move/from16 p0, v11

    if-eqz v16, :cond_f1

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f2

    :cond_f1
    const/4 v11, 0x0

    :goto_f2
    move-object/from16 v16, v9

    const-string v9, ", scroll: min="

    move/from16 p2, v0

    const-string v0, ", max="

    invoke-static {v13, v11, v9, v1, v0}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, ", cur="

    const-string v1, ", duration="

    invoke-static {v13, v2, v0, v10, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", afterRemove: inGrid="

    const-string v1, ", offset="

    invoke-static {v13, v8, v0, v3, v1}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", snapPage="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scroll="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", last="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", detal="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_149

    :cond_147
    move/from16 p0, v11

    :goto_149
    if-eqz v0, :cond_153

    const/4 v1, 0x0

    move/from16 v3, p0

    move-object/from16 v2, p1

    invoke-virtual {v2, v3, v0, v8, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusSnapToPage(IIIZ)Z

    :cond_153
    const/4 v0, 0x1

    return v0

    :cond_155
    :goto_155
    const/4 v0, 0x0

    return v0
.end method

.method private static final snapPageWithFillin$lambda$10(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .registers 4

    const-string v0, "$dismissedTaskView"

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


# virtual methods
.method public createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 23
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

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v4, p3

    const-string v0, "recentsView"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissedTaskView"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->isGridRecntViewFillInAnimatorRunning:Z

    new-instance v10, Lcom/android/launcher3/anim/PendingAnimation;

    move-wide/from16 v1, p5

    invoke-direct {v10, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_2e

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_60

    const-string v7, "createTaskDismissAnimation(), animate="

    const-string v8, ", remove="

    const-string v11, ", pageCount="

    move/from16 v12, p4

    invoke-static {v7, v4, v8, v12, v11}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", dismiss: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MR_TaskAnimationBuilder"

    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_60
    move/from16 v12, p4

    :goto_62
    if-nez v1, :cond_78

    iget-object v0, v9, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_77
    return-object v10

    :cond_78
    iget v1, v5, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    if-ne v1, v2, :cond_7f

    if-eq v1, v3, :cond_7f

    return-object v10

    :cond_7f
    iget-object v1, v9, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_92
    iput v2, v5, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->mDismissingTaskId:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v7

    if-eqz v4, :cond_a6

    const-string v8, "handler"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v10, v9, v6, v1}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->addDismissedTaskViewAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    :cond_a6
    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v9, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v8, v11

    int-to-float v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v13, v9, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v13}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v13

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    add-int/2addr v11, v13

    int-to-float v11, v11

    new-instance v13, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v13}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iget-object v14, v9, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v13, v14}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    move-result v14

    if-eqz v14, :cond_d5

    const/4 v3, 0x1

    :cond_d5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_da
    if-ge v0, v7, :cond_13e

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v4, v15, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v4, :cond_e7

    check-cast v15, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_e8

    :cond_e7
    const/4 v15, 0x0

    :goto_e8
    if-nez v15, :cond_eb

    goto :goto_12f

    :cond_eb
    if-le v0, v1, :cond_12f

    invoke-virtual {v15}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    move/from16 p5, v1

    iget-object v1, v9, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_11b

    sget-object v1, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getTRANSLATION_X()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v6

    move/from16 p6, v7

    int-to-float v7, v3

    mul-float/2addr v7, v8

    invoke-direct {v5, v15, v6, v7}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->createSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getTRANSLATION_Y()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v1

    invoke-direct {v5, v15, v1, v11}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->createSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v4}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    goto :goto_133

    :cond_11b
    move/from16 p6, v7

    sget-object v1, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->getTRANSLATION_Y()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v1

    neg-float v6, v11

    invoke-direct {v5, v15, v1, v6}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->createSpringAnimation(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v4}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_133

    :cond_12f
    :goto_12f
    move/from16 p5, v1

    move/from16 p6, v7

    :goto_133
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p2

    move/from16 v4, p3

    move/from16 v1, p5

    move/from16 v7, p6

    goto :goto_da

    :cond_13e
    new-instance v11, Lcom/oplus/quickstep/layout/grid/multirow/b;

    move-object v0, v11

    move v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/oplus/quickstep/layout/grid/multirow/b;-><init>(ILcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/util/IntSet;ZLcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/TaskView;ZLjava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v9, v10}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object v10
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "J",
            "Landroid/view/animation/Interpolator;",
            ")",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "interpolator"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_cb

    instance-of p0, p2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-nez p0, :cond_12

    goto/16 :goto_cb

    :cond_12
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    new-instance p5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {p5, p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    const v2, 0x7f07077e

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    const/high16 v0, 0x43480000  # 200.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object p0

    move-object v0, p2

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [F

    const v5, 0x3e99999a  # 0.3f

    iget-object v6, p1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v6, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "launchTranslationAnimator"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$doOnEnd$1;

    invoke-direct {v4, p2}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v4, 0x3dcccccd  # 0.1f

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTranslationZ(F)V

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p5, v2, v4, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTaskLaunchAnimation(), getDismissScale="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDismissScale()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MR_TaskAnimationBuilder"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDismissScale()F

    move-result v2

    sget-object v4, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    aput v2, v1, v5

    const v5, 0x3f851eb8  # 1.04f

    aput v5, v1, v3

    invoke-static {p2, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-string p4, "MUTLI_ROW_SCALE_ANIMATOR_NAME"

    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    const-string p4, "launchScaleAnimator"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;

    invoke-direct {p4, p2, p2, p2, p5}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl$createTaskLaunchAnimation$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setMinDismissScale(F)V

    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p5, p3, p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-instance p0, Lcom/android/common/a;

    invoke-direct {p0, p1}, Lcom/android/common/a;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p5, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-object p5

    :cond_cb
    :goto_cb
    const/4 p0, 0x0

    return-object p0
.end method
