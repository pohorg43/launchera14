.class public Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/navbar/NavbarColorChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ALPHA_ANIM_DURATION:I = 0x11b

.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LIMIT_TASKBAR:F = 0.0f

.field private static final LIMIT_WORKSPACE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "TaskbarNavbarPositionSwitchViewController"

.field private static final TRANS_ANIM_DURATION:I = 0x15e


# instance fields
.field private mA11yButton:Landroid/widget/ImageView;

.field private mA11yButtonWidth:I

.field private mA11yWorkspaceLeftMargin:I

.field private mIsAnimRunning:Z

.field private mIsNavbarAtLeft:Z

.field private mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

.field private mLeftTaskbarMargin:I

.field private mLeftWorkspaceMargin:I

.field private mMarginDistance:I

.field private mNavButtons:Landroid/widget/LinearLayout;

.field private mNavButtonsView:Landroid/widget/FrameLayout;

.field private mNavButtonsWidth:I

.field private mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

.field private mRightTaskbarMargin:I

.field private mRightWorkspaceMargin:I

.field private mSysuiStateFlags:I

.field private mTaskbarRtlMargin:I

.field private mTempIsWorkspace:Z

.field private mTempalignment:F


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const v3, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;Landroid/view/ViewGroup;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsAnimRunning:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    iput-object p2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    move-object p2, p4

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const p2, 0x7f0a0280

    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    iget p1, p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->mSysuiStateFlags:I

    iput p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mSysuiStateFlags:I

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->init()V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->updateLayout()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsAnimRunning:Z

    return p1
.end method

.method private alphaAnimation(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    if-eqz p2, :cond_12

    move v1, v2

    :cond_12
    aput v1, v0, v3

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "alphaAnimation(): hide = "

    const-string v2, "TaskbarNavbarPositionSwitchViewController"

    invoke-static {v1, p2, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->ALPHA_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x11b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController$2;-><init>(Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private calcNavMarginInWorkspaceByWeight(Landroid/content/res/Resources;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f0b00cf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0b00d0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0b00d1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const v4, 0x7f070ff2

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftWorkspaceMargin:I

    int-to-float p1, v3

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    const-string p1, "calcNavMarginInWorkspace(), mLeftWorkspaceMargin="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftWorkspaceMargin:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRightWorkspaceMargin="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    const-string v0, "TaskbarNavbarPositionSwitchViewController"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private getMarginDistance()I
    .registers 6

    iget v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mSysuiStateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    const-string v2, "getMarginDistance  ---->a11yVisible:"

    const-string v3, " ,mTempIsWorkspace:"

    invoke-static {v2, v0, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    const-string v4, "TaskbarNavbarPositionSwitchViewController"

    invoke-static {v2, v3, v4}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v2, :cond_29

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftWorkspaceMargin:I

    goto :goto_26

    :cond_24
    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftTaskbarMargin:I

    :goto_26
    iput v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    goto :goto_34

    :cond_29
    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-eqz v3, :cond_30

    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    goto :goto_32

    :cond_30
    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightTaskbarMargin:I

    :goto_32
    iput v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    :goto_34
    if-nez v0, :cond_4e

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-nez v3, :cond_4e

    if-nez v2, :cond_4e

    iget v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result v3

    if-eqz v3, :cond_49

    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    goto :goto_4b

    :cond_49
    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsWidth:I

    :goto_4b
    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    :cond_4e
    if-eqz v0, :cond_6e

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-eqz v2, :cond_6e

    iget v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result v3

    if-eqz v3, :cond_69

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v3, :cond_63

    goto :goto_6b

    :cond_63
    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    iget v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yWorkspaceLeftMargin:I

    add-int/2addr v1, v3

    goto :goto_6b

    :cond_69
    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsWidth:I

    :goto_6b
    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    :cond_6e
    if-eqz v0, :cond_88

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v1, :cond_88

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTaskbarRtlMargin:I

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    :cond_88
    if-eqz v0, :cond_a2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-nez v1, :cond_a2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v1, :cond_a2

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTaskbarRtlMargin:I

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    :cond_a2
    if-eqz v0, :cond_bc

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v0, :cond_bc

    iget v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTaskbarRtlMargin:I

    iput v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    :cond_bc
    const-string v0, "getMarginDistance  ---->mMarginDistance:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    invoke-static {v0, v1, v4}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    return p0
.end method

.method private init()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->initUpdateTaskbarNavSpacing()V

    return-void
.end method

.method private startAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    invoke-direct {p0, p1, p4}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->alphaAnimation(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->alphaAnimation(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p2

    const/16 p3, 0x15e

    invoke-virtual {p0, p4, p3}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->translationXAnim(ZI)Landroid/animation/Animator;

    move-result-object p3

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController$1;-><init>(Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public initUpdateTaskbarNavSpacing()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1f

    const v1, 0x7f070ff7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftWorkspaceMargin:I

    const v1, 0x7f070ff9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    goto :goto_22

    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->calcNavMarginInWorkspaceByWeight(Landroid/content/res/Resources;)V

    :goto_22
    const v1, 0x7f070ff6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftTaskbarMargin:I

    const v1, 0x7f070ff8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightTaskbarMargin:I

    const v1, 0x7f070ffa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTaskbarRtlMargin:I

    const v1, 0x7f070ff1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsWidth:I

    const v1, 0x7f070ff2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    const v1, 0x7f070fc0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yWorkspaceLeftMargin:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsAnimRunning:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
    const v1, 0x7f0a05d0

    const-string v2, "TaskbarNavbarPositionSwitchViewController"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2b

    const-string/jumbo v0, "onClick--->R.id.switch_left"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->startAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->setNavButtonsSwitchDirect(Landroid/content/Context;I)V

    iput-boolean v4, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    goto :goto_48

    :cond_2b
    const v1, 0x7f0a05d3

    if-ne v0, v1, :cond_48

    const-string/jumbo v0, "onClick--->R.id.switch_right"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->startAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->setNavButtonsSwitchDirect(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    :cond_48
    :goto_48
    return-void
.end method

.method public onDirectChanged(Z)V
    .registers 4

    const-string v0, "---->Taskbar  onDirectChanged isNavbarAtLeft:"

    const-string v1, "TaskbarNavbarPositionSwitchViewController"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsAnimRunning:Z

    if-eqz v0, :cond_13

    const-string p0, "---->Taskbar  onDirectChanged return for the anim is running"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->translationXAnim(ZI)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onNavbarColorChange(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->updateDarkness(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;->updateDarkness(F)V

    return-void
.end method

.method public setNavbarLayout()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->getNavButtonsSwitchDirect(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    const v3, 0x800003

    const v4, 0x800005

    if-eqz v2, :cond_2c

    move v2, v3

    goto :goto_2d

    :cond_2c
    move v2, v4

    :goto_2d
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->getMarginDistance()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    iget-object v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    sget-object v5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSupport()Z

    move-result v5

    if-eqz v5, :cond_66

    iget-object v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_66

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-eqz v6, :cond_63

    iget v6, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yWorkspaceLeftMargin:I

    goto :goto_64

    :cond_63
    move v6, v1

    :goto_64
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_66
    iget-boolean v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v5, :cond_7b

    iget v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    if-eqz v2, :cond_77

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTaskbarRtlMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_8b

    :cond_77
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_8b

    :cond_7b
    iget v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    if-eqz v2, :cond_88

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTaskbarRtlMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_8b

    :cond_88
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_8b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string/jumbo v1, "updateLayout()  ---->mIsNavbarAtLeft:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mMarginDistance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    const-string v5, "TaskbarNavbarPositionSwitchViewController"

    invoke-static {v1, v2, v5}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_a9
    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    if-eqz v2, :cond_b0

    goto :goto_b1

    :cond_b0
    move v3, v4

    :goto_b1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTempIsWorkspace(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    return-void
.end method

.method public setVisible(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-nez v0, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    if-eqz p1, :cond_22

    move v1, v2

    :cond_22
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public translationXAnim(ZI)Landroid/animation/Animator;
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v3

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_2d

    move v1, v3

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    iget-object v4, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v5, 0x800003

    if-ne v4, v5, :cond_3f

    move v4, v3

    goto :goto_40

    :cond_3f
    move v4, v2

    :goto_40
    if-eqz v1, :cond_46

    xor-int/lit8 p1, p1, 0x1

    xor-int/lit8 v4, v4, 0x1

    :cond_46
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_9c

    if-eqz v0, :cond_9c

    iget-boolean v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    sub-int/2addr v5, v7

    if-eqz p1, :cond_68

    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftWorkspaceMargin:I

    goto :goto_70

    :cond_68
    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    iget v8, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yWorkspaceLeftMargin:I

    sub-int/2addr v7, v8

    :goto_70
    sub-int/2addr v5, v7

    if-eqz v4, :cond_76

    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    sub-int/2addr v5, v7

    :cond_76
    sget-object v7, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v7}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v7

    if-eqz v7, :cond_ab

    if-eqz v1, :cond_ab

    iget-object v5, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mMarginDistance:I

    sub-int/2addr v5, v7

    if-eqz p1, :cond_97

    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftWorkspaceMargin:I

    iget v8, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    goto :goto_a9

    :cond_97
    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    iget v8, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yWorkspaceLeftMargin:I

    goto :goto_a9

    :cond_9c
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v5, v6

    iget v7, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightWorkspaceMargin:I

    iget v8, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mA11yButtonWidth:I

    :goto_a9
    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    :cond_ab
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_e7

    const-string/jumbo v7, "translationXAnim --->mIsStart:"

    const-string v8, "  ,isGotoLeft:"

    const-string v9, " ,isLayoutRtl:"

    invoke-static {v7, v4, v8, p1, v9}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mWidth:"

    const-string v9, " ,mNavButtons.getWidth():"

    invoke-static {v7, v1, v8, v5, v9}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTempIsWorkspace="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTaskbarEnableWithNavbar="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarNavbarPositionSwitchViewController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mNavButtons:Landroid/widget/LinearLayout;

    new-array v0, v6, [F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v1

    aput v1, v0, v2

    if-eqz p1, :cond_f8

    if-eqz v4, :cond_f6

    goto :goto_fb

    :cond_f6
    neg-int v2, v5

    goto :goto_fb

    :cond_f8
    if-eqz v4, :cond_fb

    move v2, v5

    :cond_fb
    :goto_fb
    int-to-float p1, v2

    aput p1, v0, v3

    const-string/jumbo p1, "translationX"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public updateImageResource(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mLeftSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    const v1, 0x7f08089d

    const v2, 0x7f08089c

    if-eqz p1, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mRightSwitchView:Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchView;

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateLayout()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setNavbarLayout()V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setVisible(Z)V

    return-void
.end method

.method public updateSysuiFlags(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mSysuiStateFlags:I

    return-void
.end method

.method public updateTaskbarAlignment(F)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempalignment:F

    cmpl-float v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    cmpg-float v0, v0, p1

    if-gez v0, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setVisible(Z)V

    :cond_18
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    const-string v1, "TaskbarNavbarPositionSwitchViewController"

    if-nez v0, :cond_39

    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->updateLayout()V

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->setVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->Workspace  mIsNavbarAtLeft:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mIsNavbarAtLeft:Z

    invoke-static {v0, v3, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_39
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_48

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempIsWorkspace:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->updateLayout()V

    const-string v0, "---->Taskbar  SwitchView:View.INVISIBLE"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    iput p1, p0, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarPositionSwitchViewController;->mTempalignment:F

    return-void
.end method
