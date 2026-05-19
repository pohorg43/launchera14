.class public Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA_STARTED:F = 0.0f

.field public static final ANIMATION_DURATION_MS:[I

.field public static final ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

.field public static final ANIM_TYPE_DOCK_SEARCH:I = 0x2

.field public static final ANIM_TYPE_NORMAL:I = 0x0

.field public static final ANIM_TYPE_TO_ASSISTANT:I = 0x1

.field public static final ANIM_TYPE_TO_BRACKET_SPACE:I = 0x5

.field public static final ANIM_TYPE_TO_CAPSULE:I = 0x6

.field public static final ANIM_TYPE_TO_EXTERNAL_SCREEN:I = 0x3

.field public static final ANIM_TYPE_TO_FLOAT_OR_MINI_WINDOW:I = 0x4

.field private static final DEFAULT_ANIMATION_DURATION_MS:I = 0x140

.field public static final SCALE_STARTED:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "OplusStaggeredWorkspaceAnim"


# instance fields
.field private mAnimType:I

.field public final mAnimators:Landroid/animation/AnimatorSet;

.field private mDuration:J

.field private mIsToAssistantScreen:Z

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field private mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

.field private mSpeed:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    sput-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd  # 0.1f

    const v3, 0x3e4ccccd  # 0.2f

    const v4, 0x3db851ec  # 0.09f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v6, 0x0

    aput-object v1, v0, v6

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v6, 0x1

    aput-object v1, v0, v6

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    return-void

    :array_30
    .array-data 4
        0x168
        0x1f4
        0x258
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;FZI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsToAssistantScreen:Z

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    iput-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    iput p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimType:I

    if-ne p4, v1, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, p2

    :goto_1f
    iput-boolean v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsToAssistantScreen:Z

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_2b

    return-void

    :cond_2b
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isEvaluationDurationValid()Z

    move-result p3

    if-eqz p3, :cond_40

    sget-object p3, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    iget v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget p3, p3, v0

    int-to-float p3, p3

    const v0, 0x3f19999a  # 0.6f

    mul-float/2addr p3, v0

    float-to-long v2, p3

    iput-wide v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mDuration:J

    goto :goto_49

    :cond_40
    sget-object p3, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    iget v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget p3, p3, v0

    int-to-long v2, p3

    iput-wide v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mDuration:J

    :goto_49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Anim type = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OplusStaggeredWorkspaceAnim"

    invoke-static {p4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p4, v0}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    sget-object p4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    aput-object v0, p4, p2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p4, v0

    invoke-virtual {p0, p3, p4}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->addStaggeredAnimationForView(F[Landroid/view/View;)V

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-wide p3, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mDuration:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;J)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result p2

    if-eqz p2, :cond_d0

    iget p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimType:I

    if-ne p2, v0, :cond_d0

    new-instance p2, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    invoke-direct {p2, p1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    :cond_d0
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->lambda$addStaggeredAnimationForView$0(F[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewScale(F[Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsToAssistantScreen:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method private addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;J)V
    .registers 8

    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsToAssistantScreen:Z

    if-eqz v0, :cond_22

    const-string p0, "OplusStaggeredWorkspaceAnim"

    const-string p2, "Ignore depth animation as we are swiping up to assistant screen "

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/high16 p2, 0x3f000000  # 0.5f

    invoke-virtual {p0, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    return-void

    :cond_22
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance p3, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {p3}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    const/16 p4, 0xd

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v2, v1, v2

    invoke-virtual {p3, p4, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iget-object p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-nez p4, :cond_4f

    if-ne p2, v2, :cond_4a

    goto :goto_4f

    :cond_4a
    iget p4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object p4, v1, p4

    goto :goto_51

    :cond_4f
    :goto_4f
    sget-object p4, Lcom/android/launcher3/states/OplusSpringLoadedState;->LOAD_TRANSLATE_PATH:Landroid/view/animation/Interpolator;

    :goto_51
    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private synthetic lambda$addStaggeredAnimationForView$0(F[Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const v0, 0x3f666666  # 0.9f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p3, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-static {p3, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    sget-boolean p3, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p3, :cond_23

    sget-object p3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p3}, Lcom/android/common/util/AppFeatureUtils;->isNotHighOSAnimation()Z

    move-result p3

    if-nez p3, :cond_2a

    :cond_23
    iget-boolean p3, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mIsToAssistantScreen:Z

    if-nez p3, :cond_2a

    invoke-direct {p0, v0, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewScale(F[Landroid/view/View;)V

    :cond_2a
    iget-object p3, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v0, p3, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_3e

    check-cast p3, Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result p3

    if-eqz p3, :cond_3e

    const/4 p3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p3, 0x0

    :goto_3f
    iget v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_47

    if-eqz p3, :cond_47

    goto :goto_48

    :cond_47
    move v1, p1

    :goto_48
    invoke-direct {p0, v1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method private prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method private varargs setViewAlpha(F[Landroid/view/View;)V
    .registers 6

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_2b

    aget-object v1, p2, v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    instance-of v2, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v2, :cond_11

    goto :goto_28

    :cond_11
    instance-of v2, v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v2, :cond_25

    sget-object v2, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v2}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v1, "OplusStaggeredWorkspaceAnim"

    const-string v2, "setViewAlpha: isShowGuide"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_25
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2b
    return-void
.end method

.method private varargs setViewScale(F[Landroid/view/View;)V
    .registers 6

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_19

    aget-object v1, p2, v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    instance-of v2, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v2, :cond_11

    goto :goto_16

    :cond_11
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v2, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method


# virtual methods
.method public varargs addStaggeredAnimationForView(F[Landroid/view/View;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->setViewAlpha(F[Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/iconrender/impl/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/d;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;

    invoke-direct {p1, p0, p2}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;[Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_32
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public addStaggeredAnimationForView(Landroid/view/View;Lcom/oplus/painteranimation/OplusAnimatorSet;)V
    .registers 9

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_54

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    iget v4, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget v4, v3, v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$1;

    invoke-direct {v4, p0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$1;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->play(Landroid/animation/Animator;)Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSpeed:I

    aget v1, v3, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$2;-><init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->play(Landroid/animation/Animator;)Lcom/oplus/painteranimation/OplusAnimatorSet$OplusBuilder;

    return-void

    :array_54
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->end()V

    :cond_c
    return-void
.end method

.method public end()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->end()V

    :cond_c
    return-void
.end method

.method public getAnimators()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public reverse()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->cancel()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->reverse()V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mSearchEntryAnim:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->start()V

    :cond_c
    return-void
.end method
