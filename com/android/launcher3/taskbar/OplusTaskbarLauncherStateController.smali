.class public final Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;
.super Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final TASKBAR_TRANSLATION_Y_FOR_HOME_DELAY:J = 0x2bcL


# instance fields
.field private deferTaskOnTransitionForHome:Ljava/lang/Runnable;

.field private isTranslationYForHome:Z

.field private mNeedUpdateIconAlignmentAnim:Z

.field private mTargetIconAlignValue:F

.field private mTaskbarIconTransYForHomeAnim:Landroid/animation/ValueAnimator;

.field private mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$Companion;

    const-string v0, "OplusTaskbarLauncherStateController"

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iput v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTargetIconAlignValue:F

    return-void
.end method

.method public static final synthetic access$onIconTranslationYForHomeEnd(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->onIconTranslationYForHomeEnd(F)V

    return-void
.end method

.method public static final synthetic access$onIconTranslationYForHomeStart(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->onIconTranslationYForHomeStart()V

    return-void
.end method

.method private final createTaskbarTranslateYForHomeAnim(FJLandroid/view/animation/Interpolator;Landroid/animation/AnimatorSet;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->getOriginTranslateY()I

    move-result v0

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v3, p1, v3

    const/4 v4, 0x1

    if-nez v3, :cond_1d

    move v3, v4

    goto :goto_1e

    :cond_1d
    move v3, v1

    :goto_1e
    const/4 v5, 0x0

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v6, "mLauncher.resources"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    goto :goto_3a

    :cond_39
    move v3, v5

    :goto_3a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_46

    move v0, v4

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInLauncher()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_56

    invoke-virtual {v0, v3}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_56
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    :cond_5b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_73

    invoke-virtual {v0, v3}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v6

    if-nez v6, :cond_6b

    invoke-virtual {v0, v3}, Lcom/android/quickstep/AnimatedFloat;->isSettledOnValue(F)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_6b
    sget-object p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string p1, "createTaskbarTranslateYForHomeAnim: Already run anim to desired value."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_73
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    :cond_7a
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_8c

    invoke-virtual {p1, v3}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_8c
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void

    :cond_92
    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_a1

    invoke-virtual {v0, v3}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_a2

    :cond_a1
    move-object v0, v2

    :goto_a2
    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTransYForHomeAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_122

    const-wide/16 v6, 0x0

    cmpg-float p1, p1, v5

    if-nez p1, :cond_ad

    move v1, v4

    :cond_ad
    if-eqz v1, :cond_d5

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d5

    :cond_d3
    const-wide/16 v6, 0x2bc

    :cond_d5
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;

    invoke-direct {p1, p0, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createTaskbarTranslateYForHomeAnim$2$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;F)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string p4, "createTaskbarTranslateYForHomeAnim - taskbarIconTranslationYForHome - "

    invoke-static {p4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p0, :cond_100

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_100
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "  -> "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", duration: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", delay: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_122
    return-void
.end method

.method private static final createTaskbarTranslateYForHomeAnim$lambda$4$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->onIconTranslationYForHomeUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->createTaskbarTranslateYForHomeAnim$lambda$4$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final interruptIconAlignmentStartWithoutAnim()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private final onIconTranslationYForHomeEnd(F)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mNeedUpdateIconAlignmentAnim:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    cmpg-float v0, p1, v4

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v3

    :goto_f
    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_1c

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v2

    :goto_1d
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_28
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mNeedUpdateIconAlignmentAnim:Z

    if-nez v0, :cond_48

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInLauncher()Z

    move-result v0

    if-nez v0, :cond_48

    cmpg-float v0, p1, v4

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    if-eqz v1, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-nez v0, :cond_3f

    goto :goto_41

    :cond_3f
    iput v4, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    :goto_41
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->deferTaskOnTransitionForHome:Ljava/lang/Runnable;

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_54
    iput-object v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->deferTaskOnTransitionForHome:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    if-eqz v0, :cond_a3

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onIconTranslationYForHomeEnd, taskbar alpha: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mNeedUpdateIconAlignmentAnim:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mNeedUpdateIconAlignmentAnim:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", toValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", isInLauncher:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInLauncher()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mTaskbarIconTranslationYForHome:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_99

    iget p1, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mNeedUpdateIconAlignmentAnim:Z

    return-void
.end method

.method private final onIconTranslationYForHomeStart()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->interruptIconAlignmentStartWithoutAnim()Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onIconTranslationYForHomeStart, icon translation y for home with anim"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mNeedUpdateIconAlignmentAnim:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_27
    return-void
.end method

.method private final onIconTranslationYForHomeUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mNeedUpdateIconAlignmentAnim:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    :cond_20
    return-void
.end method


# virtual methods
.method public final createIconAlignAnim(JFZLandroid/animation/AnimatorSet;I)V
    .registers 15

    const-string p1, "animatorSet"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    const/4 p1, 0x0

    if-eqz p4, :cond_1e

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1b

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_29

    :cond_1b
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    goto :goto_29

    :cond_1e
    cmpg-float p1, p3, p1

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-static {p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_29
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p2}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTaskbarIconTransYForHomeAnim:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_35
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/OplusHotseat;->cancelHotseatExpandAnimate()V

    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide v6

    sget-object p2, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string/jumbo p6, "onStateChangeApplied - iconAlignment - "

    invoke-static {p6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v1, "  -> "

    const-string v2, ", duration: "

    invoke-static {p6, v0, v1, p3, v2}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {p6, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", noNeedAnimation: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mTargetIconAlignValue: "

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTargetIconAlignValue:F

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "interpolator"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p3

    move-wide v2, v6

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->createTaskbarTranslateYForHomeAnim(FJLandroid/view/animation/Interpolator;Landroid/animation/AnimatorSet;)V

    iput p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->mTargetIconAlignValue:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p3}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p2, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createIconAlignAnim$2;

    invoke-direct {p2}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController$createIconAlignAnim$2;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p5, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final getDeferTaskOnTransitionForHome()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->deferTaskOnTransitionForHome:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarViewController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskbarDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    const-string v0, "mControllers.taskbarActivityContext.dragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/BaseQuickstepLauncher;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    return-void
.end method

.method public final isTranslationYForHome()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->isTranslationYForHome:Z

    return p0
.end method

.method public noNeedAnimation()Z
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->noNeedAnimation()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    return-void
.end method

.method public onIconAlignmentRatioChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateTaskbarAlignment(F)V

    return-void
.end method

.method public final setDeferTaskOnTransitionForHome(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->deferTaskOnTransitionForHome:Ljava/lang/Runnable;

    return-void
.end method

.method public final setTranslationYForHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->isTranslationYForHome:Z

    return-void
.end method
