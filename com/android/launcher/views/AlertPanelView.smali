.class public Lcom/android/launcher/views/AlertPanelView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/views/AlertPanelView$Builder;,
        Lcom/android/launcher/views/AlertPanelView$ActionCallBack;
    }
.end annotation


# static fields
.field private static final HALF_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlertPanelView"


# instance fields
.field private mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

.field private mClickPositiveBtn:Z

.field public mContentArea:Landroid/widget/LinearLayout;

.field public mLauncher:Lcom/android/launcher/Launcher;

.field public mNegativeBtn:Landroid/widget/TextView;

.field private mPanelAnimator:Landroid/animation/AnimatorSet;

.field public mPositiveBtn:Landroid/widget/TextView;

.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/AlertPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher/views/AlertPanelView;->mClickPositiveBtn:Z

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/views/AlertPanelView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AlertPanelView;->lambda$onFinishInflate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/AlertPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/views/AlertPanelView;->closeComplete()V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/views/AlertPanelView;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/views/AlertPanelView;->createPanel(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/views/AlertPanelView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/views/AlertPanelView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AlertPanelView;->setCustomContent(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/views/AlertPanelView;Lcom/android/launcher/views/AlertPanelView$ActionCallBack;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AlertPanelView;->setActionCallBack(Lcom/android/launcher/views/AlertPanelView$ActionCallBack;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/views/AlertPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/views/AlertPanelView;->lambda$onFinishInflate$1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/views/AlertPanelView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AlertPanelView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method private closeComplete()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/launcher/views/AlertPanelView;->mClickPositiveBtn:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/views/AlertPanelView;->mClickPositiveBtn:Z

    :cond_32
    return-void
.end method

.method private static createPanel(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/views/AlertPanelView;
    .registers 5

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0035

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/views/AlertPanelView;

    invoke-virtual {v0, p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private isUninstallType()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    instance-of p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->onNegativeButtonClick()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$onFinishInflate$1()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .registers 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/views/AlertPanelView;->mClickPositiveBtn:Z

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->dialogDelayCloseTime()I

    move-result v0

    if-lez v0, :cond_21

    iget-object p1, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/views/AlertPanelView;)V

    iget-object v1, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    invoke-interface {v1}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->dialogDelayCloseTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_24

    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :goto_24
    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    if-eqz p0, :cond_2b

    invoke-interface {p0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->onPositiveButtonClick()V

    :cond_2b
    return-void
.end method

.method private setActionCallBack(Lcom/android/launcher/views/AlertPanelView$ActionCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    return-void
.end method

.method private setCustomContent(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mContentArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNavigationViewHeight()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    if-eqz p0, :cond_1b

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-interface {p0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->getDialogMarginBottomHeight()I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1b
    return-void
.end method


# virtual methods
.method public animateShow()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/AlertPanelView;

    const-string v1, "AlertPanelView"

    if-eqz v0, :cond_15

    const-string/jumbo p0, "the panel is showing!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v2, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/android/launcher/views/AlertPanelView;->mScreenHeight:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/launcher/views/AlertPanelView;->mScreenHeight:I

    add-int/2addr v2, v3

    div-int/2addr v2, v5

    const-string v3, "Calculate startTransY of large-screen mobile phones"

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_54
    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_63

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_68

    :cond_63
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_68
    add-int/2addr v2, v1

    :goto_69
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v5, [F

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    int-to-float v2, v3

    aput v2, v1, v0

    const-string/jumbo v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getWorkspaceDragScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object v2

    sget-object v4, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    new-array v6, v0, [F

    const/high16 v7, 0x3f000000  # 0.5f

    aput v7, v6, v3

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x1a4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v3

    aput-object v2, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public handleClose(Z)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClose: animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertPanelView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_22

    const-string p0, "handleClose, the panel not open yet!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v2, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_32
    iget-object v2, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    invoke-interface {v2}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->getInterceptCloseAnimate()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_56

    if-eqz p1, :cond_3e

    goto :goto_56

    :cond_3e
    sget-object p1, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getWorkspaceDragScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-direct {p0}, Lcom/android/launcher/views/AlertPanelView;->closeComplete()V

    goto/16 :goto_e7

    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_80

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iget v4, p0, Lcom/android/launcher/views/AlertPanelView;->mScreenHeight:I

    add-int/2addr p1, v4

    div-int/2addr p1, v6

    int-to-float p1, p1

    const-string v4, "Calculate endTransY of large-screen mobile phones"

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_80
    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v1, v5, :cond_8f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_94

    :cond_8f
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_94
    add-int/2addr v1, p1

    int-to-float p1, v1

    :goto_96
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v6, [F

    aput v2, v1, v0

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string/jumbo p1, "translationY"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWorkspaceDragScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    new-array v5, v2, [F

    aput v3, v5, v0

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher/views/AlertPanelView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher/views/AlertPanelView$1;-><init>(Lcom/android/launcher/views/AlertPanelView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xf0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object p1, v4, v0

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_e7
    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/views/AlertPanelView;->isUninstallType()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    invoke-interface {v0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->onDialogOutsideClick()V

    :cond_b
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/views/AlertPanelView;->isUninstallType()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/launcher/views/AlertPanelView;->mPanelAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/launcher/views/AlertPanelView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v1

    if-eqz v1, :cond_24

    return v2

    :cond_24
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    if-eqz p0, :cond_34

    invoke-interface {p0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->onDialogOutsideClick()V

    :cond_34
    return v2

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mActionCallBack:Lcom/android/launcher/views/AlertPanelView$ActionCallBack;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/launcher/views/AlertPanelView$ActionCallBack;->onDetached()V

    :cond_a
    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0135

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    const v0, 0x7f0a0134

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mNegativeBtn:Landroid/widget/TextView;

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mContentArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mNegativeBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/util/b1;

    invoke-direct {v1, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/launcher/views/AlertPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/util/c1;

    invoke-direct {v1, p0}, Lcom/android/common/util/c1;-><init>(Lcom/android/launcher/views/AlertPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    const v1, 0x7f0809b3

    const v2, 0x7f0809b4

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mNegativeBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_61

    :cond_57
    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mNegativeBtn:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_61
    return-void

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "content area can not be null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPositiveBtnClickAble(Z)V
    .registers 5

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_23

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06050f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_23
    iget-object p0, p0, Lcom/android/launcher/views/AlertPanelView;->mPositiveBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/views/AlertPanelView;->updateNavigationViewHeight()V

    return-void
.end method
