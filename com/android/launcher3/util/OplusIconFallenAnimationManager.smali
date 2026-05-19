.class public Lcom/android/launcher3/util/OplusIconFallenAnimationManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLEAR_ICON_FOCUS_ANIMATION_TIME:I = 0x42

.field private static final GPU_BOOST_TIMEOUT:I = 0x190

.field private static final ICON_FALLEN_ANIMATION_DURATION:I = 0x12c

.field private static final ICON_FALLEN_ANIMATION_MIN_DURATION:I = 0x50

.field private static final ICON_FALLEN_COL_TWO_RADIO:I = 0x2

.field private static final ICON_FALLEN_SCALE_DEFAULT:F = 1.0f

.field private static final KEY_BF_ITEM_SCALE_DELTA:F = 0.05f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_63:F = 0.8f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_63_FOLDSCREEN:F = 0.75f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_64:F = 1.0f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_65_DEFAULT:F = 0.92f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_65_MAX:F = 0.89f

.field private static final KEY_ITEM_FALLEN_FINISH_SCALE_65_MIN:F = 1.0f

.field private static final KEY_ITEM_SCALE_DELTA:F = 0.1f

.field private static final KEY_ITEM_WIDGET_SCALE:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "OplusIconFallenAnimationManager"

.field private static volatile sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;


# instance fields
.field private mAlpha:F

.field private mAnimaIn:Landroid/animation/ValueAnimator;

.field private mAnimaOut:Landroid/animation/ValueAnimator;

.field private mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBigFolderFallenCompletedStateScale:F

.field private mBigFolderFallenCompletedStateScaleX:F

.field private mBigFolderFallenCompletedStateScaleY:F

.field private mBigFolderFallenValue:F

.field private mBigFolderFallingStateScaleX:F

.field private mBigFolderFallingStateScaleY:F

.field private mDp:Lcom/android/launcher3/OplusDeviceProfile;

.field private mFallenCompletedStateScale:F

.field private mFallenIconFocusedScale:F

.field private mFallenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusKeyView:Landroid/view/View;

.field private mHandingIconFallenState:Z

.field private mHasBigFolder:Z

.field private mHotseatTransY:F

.field private mIconFallenTouchUpOnFolderFlag:Z

.field private mIsCancelAutoFallen:Z

.field private mLastTouchedView:Landroid/view/View;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTouchPosition:[F

.field private mTouchScaleRadio:F

.field private mUnFocusKeyView:Landroid/view/View;

.field private mWidgetScalePivotX46LTR:F

.field private mWidgetScalePivotX46RTL:F

.field private mWidgetScalePivotX56LTR:F

.field private mWidgetScalePivotX56RTL:F

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScale:F

    const v1, 0x3dcccccd  # 0.1f

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenIconFocusedScale:F

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleX:F

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHasBigFolder:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    const/high16 v1, 0x40a00000  # 5.0f

    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46LTR:F

    const/high16 v1, 0x40400000  # 3.0f

    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46RTL:F

    const/high16 v2, 0x40e00000  # 7.0f

    iput v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56LTR:F

    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56RTL:F

    const v1, 0x3f2aaaab

    iput v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchScaleRadio:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[F

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenValue:F

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string/jumbo p1, "power"

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$performValueAnimation$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetNormalState()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenIconFocusedScale:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIsCancelAutoFallen:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$iconFallenAuto$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$resetFallenIconsPosition$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateKeyViewBounds(Landroid/view/View;IFFZ)Z
    .registers 15

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2a

    :cond_c
    if-eqz p5, :cond_28

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    mul-float/2addr v1, v3

    goto :goto_4f

    :cond_28
    move v2, v1

    goto :goto_52

    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchScaleRadio:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_49

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4f

    :cond_49
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    :cond_4f
    :goto_4f
    move v8, v2

    move v2, v1

    move v1, v8

    :goto_52
    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getEndPos(Landroid/view/View;)[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[F

    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getIconFocusOffsetX(Landroid/view/View;)[I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_62

    move p2, v4

    goto :goto_63

    :cond_62
    move p2, v5

    :goto_63
    if-eqz p2, :cond_73

    iget-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[F

    aget v6, p2, v5

    aget v7, v3, v5

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aget p2, p2, v5

    add-float/2addr p2, v1

    aget v1, v3, v4

    goto :goto_80

    :cond_73
    iget-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[F

    aget v6, p2, v5

    aget v7, v3, v4

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aget p2, p2, v5

    add-float/2addr p2, v1

    aget v1, v3, v5

    :goto_80
    int-to-float v1, v1

    add-float/2addr p2, v1

    cmpl-float v1, p3, v6

    if-ltz v1, :cond_8c

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_8c

    move p2, v4

    goto :goto_8d

    :cond_8c
    move p2, v5

    :goto_8d
    iget-object p3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mTouchPosition:[F

    aget v1, p3, v4

    aget v6, v3, v4

    int-to-float v6, v6

    sub-float/2addr v1, v6

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_a6

    aget p3, p3, v4

    add-float/2addr p3, v2

    aget v1, v3, v5

    int-to-float v1, v1

    add-float/2addr p3, v1

    cmpg-float p3, p4, p3

    if-gtz p3, :cond_a6

    move p3, v4

    goto :goto_a7

    :cond_a6
    move p3, v5

    :goto_a7
    if-eqz p2, :cond_eb

    if-eqz p3, :cond_eb

    if-nez v0, :cond_b3

    instance-of p2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez p2, :cond_b3

    if-eqz p5, :cond_eb

    :cond_b3
    iget-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    if-ne p2, p1, :cond_b8

    return v4

    :cond_b8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    if-eqz p5, :cond_d0

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderScaleCenterY(Lcom/android/launcher3/folder/big/BigFolderIcon;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_d7

    :cond_d0
    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    :goto_d7
    iget-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    if-eqz p2, :cond_e5

    const-string p2, "OplusIconFallenAnimationManager"

    const-string p3, "clearKeyViewFocus before"

    invoke-static {p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->clearKeyViewFocus()V

    :cond_e5
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->focusKeyView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    return v4

    :cond_eb
    return v5
.end method

.method private checkBigFolderStates(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->isSnapPageAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->cancelSnapPageAnim()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->abortScroll()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    sget-object p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->checkAndHideScrollFolderTip()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hidePopClickTip()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_3b
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$iconFallenAuto$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->lambda$performValueAnimation$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private focusKeyView(Landroid/view/View;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusKeyView + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    if-ne v0, p1, :cond_27

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_26

    const-string/jumbo p0, "same focus view return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void

    :cond_27
    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "mAnimaIn is playing return"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_82

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$4;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 p1, 0x0

    const-wide/16 v2, 0x32

    invoke-static {p0, p1, v2, v3}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    const-string p0, "focusKeyView mAnimaIn start"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_82
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static getInstance(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/OplusIconFallenAnimationManager;
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/Launcher;)V

    sput-object v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    return-object p0
.end method

.method private initBasePara(Lcom/android/launcher3/folder/Folder;)V
    .registers 13

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v1

    const-string v2, "OSENSE_ACTION_LAUNCHER_GPU_BOOST"

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openAction(Ljava/lang/String;I)J

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "IconFallen"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initFallenIconPivotY(Landroid/content/Context;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setDrawerHandleVisibility(IF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_37

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFolderExtraItems(Lcom/android/launcher3/folder/Folder;)V

    goto :goto_41

    :cond_37
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :goto_41
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    if-nez p1, :cond_4d

    const-string p0, "OplusIconFallenAnimationManager"

    const-string p1, "initBasePara: mDp == null!!!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    const/high16 v0, 0x42480000  # 50.0f

    iget v2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    mul-float/2addr v0, v2

    const/high16 v3, 0x41000000  # 8.0f

    iget v4, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v5, v4

    const/high16 v6, 0x42200000  # 40.0f

    const v7, 0x3f63d70a  # 0.89f

    const/high16 v8, 0x42600000  # 56.0f

    const v9, 0x3f6b851f  # 0.92f

    const/high16 v10, 0x3f800000  # 1.0f

    if-eqz p1, :cond_93

    mul-float p1, v2, v0

    float-to-int p1, p1

    if-le v4, p1, :cond_93

    mul-float/2addr v3, v2

    cmpl-float p1, v3, v1

    if-eqz p1, :cond_93

    cmpl-float p1, v5, v0

    if-lez p1, :cond_7f

    sub-float/2addr v5, v0

    mul-float/2addr v5, v10

    mul-float/2addr v2, v8

    sub-float/2addr v2, v0

    div-float/2addr v5, v2

    invoke-static {v5, v9, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_b6

    :cond_7f
    cmpg-float p1, v5, v0

    if-gez p1, :cond_90

    mul-float/2addr v5, v10

    sub-float p1, v0, v5

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    div-float/2addr p1, v0

    invoke-static {p1, v9, v10}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_b6

    :cond_90
    iput v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_b6

    :cond_93
    cmpl-float p1, v5, v0

    if-lez p1, :cond_a3

    sub-float/2addr v5, v0

    mul-float/2addr v5, v10

    mul-float/2addr v2, v8

    sub-float/2addr v2, v0

    div-float/2addr v5, v2

    invoke-static {v5, v9, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_b6

    :cond_a3
    cmpg-float p1, v5, v0

    if-gez p1, :cond_b4

    mul-float/2addr v5, v10

    sub-float p1, v0, v5

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    div-float/2addr p1, v0

    invoke-static {p1, v9, v10}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    goto :goto_b6

    :cond_b4
    iput v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    :goto_b6
    iget p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    const v0, 0x3dcccccd  # 0.1f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenIconFocusedScale:F

    return-void
.end method

.method private initBigFolderFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FF)V
    .registers 22

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTranslationY()F

    move-result v13

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private initBigFolderOffset(Lcom/android/launcher3/folder/big/BigFolderIcon;)[F
    .registers 14

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070950

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_c7

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000  # 2.0f

    mul-float v9, v1, v8

    add-float v10, v9, v2

    div-float/2addr v10, v7

    iput v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    add-float/2addr v9, v3

    div-float/2addr v9, v6

    iput v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    iget-object v11, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-static {p1, v11, v10, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initBigFolderRecomputeBuildParams(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusDeviceProfile;FF)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v9, 0x7f070986

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    div-float v9, v1, v8

    sub-float/2addr p1, v9

    iget v10, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    invoke-static {v7, v10, v8, p1}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p1

    const/4 v7, 0x2

    aput p1, v0, v7

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v10, 0x7f070949

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v9

    iget v9, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    invoke-static {v6, v9, v8, p1}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p1

    const/4 v6, 0x3

    aput p1, v0, v6

    const-string p1, "icon fallen in workspace: , offsets[0] = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v8, v0, v5

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", offsets[1] = "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v4

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", offsets[2] = "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", offsets[3] = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mBigFolderFallenCompletedStateScale = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScale:F

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mFallenCompletedStateScale = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mIconVisiableSizePx = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const-string v6, "OplusIconFallenAnimationManager"

    invoke-static {p1, p0, v6}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_c7
    add-float/2addr v2, v1

    aput v2, v0, v5

    add-float/2addr v1, v3

    aput v1, v0, v4

    return-object v0
.end method

.method private initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V
    .registers 23

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTranslationY()F

    move-result v13

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getScaleX()F

    move-result v6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getScaleY()F

    move-result v13

    move-object v7, p0

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private initFolderExtraItems(Lcom/android/launcher3/folder/Folder;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :cond_17
    instance-of v0, p1, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_39

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->recommendIsShowing()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendFooter()Lcom/android/launcher/folder/recommend/view/RecommendContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_39
    return-void
.end method

.method private initIconLinesInfo(Lcom/android/launcher3/folder/Folder;)Z
    .registers 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    goto :goto_2e

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_2d

    aget-object v5, p1, v4

    if-ne v1, v5, :cond_2a

    move-object v3, v5

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_2d
    move-object p1, v3

    :goto_2e
    const-string v1, ",lastLine:"

    const-string v2, ",firstLine:"

    const-string v3, "initIconLinesInfo lines:"

    const-string v4, "OplusIconFallenAnimationManager"

    if-eqz p1, :cond_fd

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_44
    if-ge v6, v5, :cond_100

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    iget v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v13, -0x65

    if-ne v12, v13, :cond_58

    goto/16 :goto_100

    :cond_58
    instance-of v12, v10, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v12, :cond_62

    move-object v13, v10

    check-cast v13, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-direct {p0, v13}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->checkBigFolderStates(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    :cond_62
    instance-of v13, v10, Lcom/android/launcher3/BubbleTextView;

    if-nez v13, :cond_6e

    invoke-static {v10}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_6e

    if-eqz v12, :cond_f9

    :cond_6e
    const-string v10, "hasNoIcon info.cellY = "

    invoke-static {v10}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " info.title"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v10, v13, v4}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    if-eqz v6, :cond_89

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v8, v10, :cond_8b

    :cond_89
    iget v8, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_8b
    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ge v9, v10, :cond_90

    move v9, v10

    :cond_90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a3

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a3
    if-eqz v12, :cond_c6

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c6

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    add-int/lit8 v13, v10, 0x1

    if-ge v9, v13, :cond_c6

    add-int/lit8 v9, v10, 0x1

    :cond_c6
    if-nez v7, :cond_cd

    if-eqz v12, :cond_cb

    goto :goto_cd

    :cond_cb
    const/4 v7, 0x0

    goto :goto_ce

    :cond_cd
    :goto_cd
    const/4 v7, 0x1

    :goto_ce
    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",title:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",cellY"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v10, v11, v4}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_f9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_44

    :cond_fd
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    :cond_100
    :goto_100
    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0, v8, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initLinesInfo(III)V

    return v7
.end method

.method private initWorkspaceFallenItems(I)[F
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_16
    if-ge v6, v3, :cond_159

    aget-object v7, v2, v6

    instance-of v8, v7, Lcom/android/launcher3/Hotseat;

    if-eqz v8, :cond_20

    goto/16 :goto_155

    :cond_20
    if-eq v7, v1, :cond_24

    goto/16 :goto_155

    :cond_24
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v4

    :goto_2d
    if-ge v9, v8, :cond_155

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenDistance(Landroid/content/Context;Landroid/view/View;)V

    instance-of v11, v10, Lcom/android/launcher3/OplusBubbleTextView;

    const/high16 v12, 0x40000000  # 2.0f

    if-eqz v11, :cond_59

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotY(F)V

    check-cast v10, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v10}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto/16 :goto_151

    :cond_59
    invoke-static {v10}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_7c

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotY(F)V

    check-cast v10, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v10}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto/16 :goto_151

    :cond_7c
    instance-of v11, v10, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v11, :cond_a5

    if-nez v5, :cond_85

    move-object v5, v10

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_85
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    move-object v11, v10

    check-cast v11, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v11}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderScaleCenterY(Lcom/android/launcher3/folder/big/BigFolderIcon;)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotY(F)V

    check-cast v10, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v10}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    goto/16 :goto_151

    :cond_a5
    if-nez p1, :cond_a9

    const/4 v11, 0x1

    goto :goto_aa

    :cond_a9
    move v11, v4

    :goto_aa
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v13

    const/4 v14, 0x6

    const/4 v15, 0x0

    if-eq v13, v14, :cond_ff

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_ba

    goto :goto_ff

    :cond_ba
    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_151

    if-eqz v11, :cond_c4

    goto :goto_cd

    :cond_c4
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46LTR:F

    div-float v15, v13, v14

    :goto_cd
    invoke-virtual {v10, v15}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v10, v13}, Landroid/view/View;->setPivotY(F)V

    iget-object v12, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    if-eqz v12, :cond_151

    if-eqz v11, :cond_ed

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    goto :goto_fb

    :cond_ed
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX46RTL:F

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    :goto_fb
    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    goto :goto_151

    :cond_ff
    :goto_ff
    if-eqz v11, :cond_102

    goto :goto_10c

    :cond_102
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    iget v14, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56LTR:F

    div-float v15, v13, v14

    :goto_10c
    invoke-virtual {v10, v15}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v10, v13}, Landroid/view/View;->setPivotY(F)V

    iget-object v12, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    if-eqz v12, :cond_151

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    if-eqz v11, :cond_12c

    goto :goto_135

    :cond_12c
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56RTL:F

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    :goto_135
    invoke-virtual {v10, v12}, Landroid/view/View;->setPivotX(F)V

    if-eqz v11, :cond_140

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    goto :goto_14e

    :cond_140
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWidgetScalePivotX56RTL:F

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    :goto_14e
    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    :cond_151
    :goto_151
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2d

    :cond_155
    :goto_155
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    :cond_159
    invoke-direct {v0, v5}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initBigFolderOffset(Lcom/android/launcher3/folder/big/BigFolderIcon;)[F

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$iconFallenAuto$3(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    return-void
.end method

.method private synthetic lambda$iconFallenAuto$4(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    return-void
.end method

.method private synthetic lambda$performValueAnimation$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_18

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    return-void
.end method

.method private synthetic lambda$performValueAnimation$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_39

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_38

    :cond_17
    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenValue:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_22

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    :cond_22
    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleX:F

    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleY:F

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1, p2, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->computePreviewDrawingParamsColor(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V

    goto :goto_64

    :cond_38
    :goto_38
    return-void

    :cond_39
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    sub-float p2, v1, p2

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_64

    :cond_4c
    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleX:F

    sub-float v0, v1, v0

    iget v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    sub-float v2, v1, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, p2

    iget v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleY:F

    sub-float v2, v1, v2

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    sub-float/2addr v1, p0

    div-float/2addr v2, v1

    mul-float/2addr v2, p2

    invoke-static {p1, v0, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->computePreviewDrawingParamsColor(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V

    :cond_64
    :goto_64
    return-void
.end method

.method private static synthetic lambda$resetFallenIconsPosition$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onAppUpdateDotSwitchChangeWhenIconFallen(Z)V

    return-void
.end method

.method private performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "I",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FF)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p6, v0, v1

    const/4 p6, 0x1

    aput p7, v0, p6

    invoke-static {p4, p5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    int-to-long v0, p2

    invoke-virtual {p6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p6, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-ne p5, p1, :cond_33

    instance-of p1, p4, Lcom/android/launcher3/pageindicators/PageIndicator;

    if-nez p1, :cond_2b

    instance-of p1, p4, Lcom/android/launcher3/Hotseat;

    if-nez p1, :cond_2b

    instance-of p1, p4, Lcom/android/launcher3/folder/Folder;

    if-nez p1, :cond_2b

    instance-of p1, p4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_33

    :cond_2b
    new-instance p1, Landroidx/core/view/h;

    invoke-direct {p1, p0, p4}, Landroidx/core/view/h;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {p6, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_33
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne p5, p1, :cond_47

    iget-boolean p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHasBigFolder:Z

    if-eqz p1, :cond_47

    instance-of p1, p4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p1, :cond_47

    new-instance p1, Lcom/android/keyguardservice/c;

    invoke-direct {p1, p0, p4}, Lcom/android/keyguardservice/c;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {p6, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_47
    return-object p6
.end method

.method private resetAllWithoutAnimation()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_d

    const-string p0, "OplusIconFallenAnimationManager"

    const-string/jumbo v0, "resetAllWithoutAnimation do nothing ,mlauncher is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_44

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolderNoAnim(Lcom/android/launcher3/views/ActivityContext;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_55

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_55
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_61

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_61
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_67
    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    instance-of v5, v3, Lcom/android/launcher3/Hotseat;

    if-eqz v5, :cond_98

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v5

    if-nez v5, :cond_94

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_67

    :cond_94
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67

    :cond_98
    instance-of v5, v3, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v6, 0x1

    if-eqz v5, :cond_b6

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBubbleTextView;->resetShadowLayer()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {v3, v6}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    goto :goto_67

    :cond_b6
    invoke-static {v3}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_ce

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/OplusFolderIcon;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBubbleTextView;->resetShadowLayer()V

    goto :goto_67

    :cond_ce
    instance-of v5, v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v5, :cond_ec

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v5}, Lcom/android/launcher/iconfallen/IconFallenUtils;->resetBigFolderRecomputeBuildParams(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v5, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextAlpha(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusBubbleTextView;->resetShadowLayer()V

    goto/16 :goto_67

    :cond_ec
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_67

    :cond_f1
    invoke-direct {p0, v4, v2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setDrawerHandleVisibility(IF)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V
    .registers 13

    instance-of v0, p4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initBigFolderFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FF)V

    goto :goto_1b

    :cond_f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    :goto_1b
    return-void
.end method

.method public static resetInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->sInstance:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    return-void
.end method

.method private resetNormalState()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetAllWithoutAnimation()V

    iget-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-eqz v0, :cond_25

    const-string v0, "OplusIconFallenAnimationManager"

    const-string/jumbo v1, "set hotseat invisible because touch up on folder"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x4

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    return-void
.end method

.method private setAppIconNormalSize(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppIconNormalSize focusView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p1, p0, p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->computePreviewDrawingParamsColor(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V

    goto :goto_2f

    :cond_25
    iget v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private setDrawerHandleVisibility(IF)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz p1, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :goto_11
    return-void
.end method

.method private startActivity(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_10

    instance-of p1, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    :goto_11
    iput-boolean p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    return-void
.end method


# virtual methods
.method public cancelAutoFallen()V
    .registers 3

    const-string v0, "OplusIconFallenAnimationManager"

    const-string v1, "cancelAutoFallen "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIsCancelAutoFallen:Z

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public clearKeyViewFocus()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKeyViewFocusDelay focusView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusIconFallenAnimationManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_6e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x42

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$3;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAnimaOut:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6d

    :cond_68
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mUnFocusKeyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    :goto_6d
    return-void

    :array_6e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public endHandingIconFallenState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenValue:F

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initOpenFolderInfo(Lcom/android/launcher3/folder/Folder;)V

    const-string p0, "OplusIconFallenAnimationManager"

    const-string v0, "endHandingIconFallenState mHandingIconFallenState false"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAnimIndicatorView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public getLastTouchedView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    return-object p0
.end method

.method public hasNoIcon()Z
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_50

    aget-object v4, p0, v3

    if-ne v0, v4, :cond_4d

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const-string v6, "hasNoIcon itemCount ="

    const-string v7, "OplusIconFallenAnimationManager"

    invoke-static {v6, v5, v7}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v6, v2

    :goto_29
    if-ge v6, v5, :cond_4d

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v9, -0x65

    if-eq v8, v9, :cond_4a

    instance-of v8, v7, Lcom/android/launcher3/BubbleTextView;

    if-nez v8, :cond_49

    invoke-static {v7}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_49

    instance-of v7, v7, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v7, :cond_4a

    :cond_49
    return v2

    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_50
    const/4 p0, 0x1

    return p0
.end method

.method public iconFallenAuto(IF)V
    .registers 21

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIsCancelAutoFallen:Z

    const/high16 v1, 0x43960000  # 300.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_13

    move v11, v2

    goto :goto_14

    :cond_13
    move v11, v1

    :goto_14
    sget-object v12, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_AUTO_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconFallenAuto direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentDistanceRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",duration:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "OplusIconFallenAnimationManager"

    invoke-static {v1, v11, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v4, :cond_6a

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguardservice/b;

    invoke-direct {v1, v8}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/download/s;

    invoke-direct {v1, v8}, Lcom/android/launcher/download/s;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_6a
    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_89

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_89
    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_9b

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_9b
    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v14, Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_d3

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v6, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto :goto_a1

    :cond_d3
    instance-of v1, v14, Lcom/android/launcher3/OplusBubbleTextView;

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_14d

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v14, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v15

    invoke-static {v14, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v16

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_112

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez v0, :cond_112

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_112

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v6

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move/from16 v17, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto :goto_114

    :cond_112
    move/from16 v17, v7

    :goto_114
    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget v7, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    check-cast v14, Lcom/android/launcher3/OplusBubbleTextView;

    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    aput v2, v1, v10

    const/4 v2, 0x0

    aput v2, v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    div-int/lit8 v1, v11, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$5;

    invoke-direct {v1, v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$5;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_a1

    :cond_14d
    invoke-static {v14}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_183

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v14, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v5

    invoke-static {v14, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    iget v7, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    check-cast v14, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v14}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    div-int/lit8 v1, v11, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_a1

    :cond_183
    instance-of v0, v14, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_1b5

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v14, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v5

    invoke-static {v14, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initBigFolderFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FF)V

    check-cast v14, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v14}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    div-int/lit8 v1, v11, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_a1

    :cond_1b5
    instance-of v0, v14, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_1df

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v14, v2, v9}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v5

    invoke-static {v14, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    const/high16 v7, 0x3f400000  # 0.75f

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFallenIconAnimationState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;FFF)V

    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    div-int/lit8 v2, v11, 0x2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_a1

    :cond_1df
    iget-object v1, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sget v7, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    move-object/from16 v0, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_a1

    :cond_1f3
    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;

    invoke-direct {v1, v8, v9}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAutoFallenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public iconFallenComplete(I)V
    .registers 6

    const-string v0, "iconFallenComplete fallenList"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_2c
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setDrawerHandleVisibility(IF)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_38

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_38
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_46

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_46
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/Hotseat;

    if-eqz v2, :cond_5d

    goto :goto_4c

    :cond_5d
    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_7d

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    iget-object v2, v2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/launcher3/IBubbleTextViewExt;->onAppUpdateDotSwitchChangeWhenIconFallen(Z)V

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-static {v2, p1, v1, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, p1, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenEndPosition(Landroid/view/View;IF)V

    goto :goto_4c

    :cond_7d
    invoke-static {v1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-static {v2, p1, v1, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, p1, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenEndPosition(Landroid/view/View;IF)V

    goto :goto_4c

    :cond_96
    instance-of v2, v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    invoke-static {v2, p1, v1, v3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->setFallenIconEndPos(Landroid/content/Context;ILandroid/view/View;F)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, p1, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenEndPosition(Landroid/view/View;IF)V

    goto :goto_4c

    :cond_aa
    return-void
.end method

.method public iconFallenScale(FFI)V
    .registers 14

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    const-wide/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/ClickUtils;->clickableIconFallen(J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iconFallenScale start  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconFallenAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_30

    instance-of v4, v5, Lcom/android/launcher3/Hotseat;

    if-nez v4, :cond_30

    instance-of v4, v5, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v4, :cond_4e

    goto :goto_30

    :cond_4e
    invoke-static {v3}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v9

    instance-of v3, v5, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v3, :cond_59

    if-nez v9, :cond_59

    goto :goto_30

    :cond_59
    move-object v4, p0

    move v6, p3

    move v7, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->calculateKeyViewBounds(Landroid/view/View;IFFZ)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_63
    if-nez v0, :cond_72

    const-string p1, "iconFallenScale hasFoundScaleIcon false"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->clearKeyViewFocus()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    :cond_72
    return-void
.end method

.method public iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v4}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    sget v4, Lcom/android/launcher/iconfallen/IconFallenUtils;->sThresholdValue:F

    div-float v4, v3, v4

    sget-object v5, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_AUTO_FALLEN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f800000  # 1.0f

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    cmpl-float v7, v6, v5

    if-lez v7, :cond_23

    goto :goto_24

    :cond_23
    move v6, v5

    :goto_24
    iput v6, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconFallenWithDistance distance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " interpolationValue = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OplusIconFallenAnimationManager"

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYHotset:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    iget-object v6, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v6, :cond_59

    invoke-virtual {v6, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v3

    iget v6, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_59
    sget-object v3, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-virtual {v3}, Lcom/android/launcher3/uparrow/UpArrowHelper;->hideUpArrow()V

    :cond_64
    if-eqz v1, :cond_6a

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFolderFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    return-void

    :cond_6a
    iget-object v1, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_7c
    if-ge v7, v6, :cond_290

    aget-object v8, v3, v7

    instance-of v9, v8, Lcom/android/launcher3/Hotseat;

    if-eqz v9, :cond_9c

    iget-object v9, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_91

    iget-object v9, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    iget v9, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget v9, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_9e

    :cond_9c
    if-eq v8, v1, :cond_a6

    :cond_9e
    :goto_9e
    move-object/from16 p1, v1

    move-object/from16 p3, v3

    move/from16 v16, v6

    goto/16 :goto_286

    :cond_a6
    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    sget v10, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    mul-float/2addr v10, v4

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v10, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bd

    iget-object v10, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bd
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_c2
    if-ge v10, v8, :cond_9e

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v14, -0x65

    if-eq v13, v14, :cond_272

    instance-of v13, v11, Lcom/android/launcher3/BubbleTextView;

    const-string v14, ", ScaleY: "

    const-string v15, ", ScaleX: "

    move-object/from16 p1, v1

    const-string v1, ", TranslationY: "

    if-eqz v13, :cond_139

    iget-object v12, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v12, v11, v4, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v12

    invoke-static {v11, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v13

    move-object/from16 p3, v3

    iget v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    move/from16 v16, v6

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6, v3, v4, v6}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v3

    iget-object v6, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_103

    iget-object v6, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    invoke-virtual {v11, v13}, Landroid/view/View;->setTranslationY(F)V

    move-object v6, v11

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    iget-object v6, v6, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v6}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    move-object v6, v11

    check-cast v6, Lcom/android/launcher3/OplusBubbleTextView;

    move/from16 v17, v8

    iget v8, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v6, v8}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setScaleY(F)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " BubbleTextVie - TranslationX: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v13, v15, v3, v14}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-static {v6, v3, v5}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto/16 :goto_27a

    :cond_139
    move-object/from16 p3, v3

    move/from16 v16, v6

    move/from16 v17, v8

    invoke-static {v11}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19d

    iget-object v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v11, v4, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v3

    invoke-static {v11, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    iget v8, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-static {v12, v8, v4, v12}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v8

    iget-object v12, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_164

    iget-object v12, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_164
    invoke-virtual {v11, v6}, Landroid/view/View;->setTranslationY(F)V

    move-object v12, v11

    check-cast v12, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v13

    iget-object v13, v13, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v13}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v12

    iget v13, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v12, v13}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setScaleY(F)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " SmallFolderIcon - TranslationX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v6, v15, v8, v14}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-static {v11, v8, v5}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto/16 :goto_27a

    :cond_19d
    instance-of v3, v11, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v3, :cond_210

    iget v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleX:F

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6, v3, v4, v6}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v3

    iput v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleX:F

    iget v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenCompletedStateScaleY:F

    invoke-static {v6, v3, v4, v6}, Landroidx/constraintlayout/utils/widget/a;->a(FFFF)F

    move-result v3

    iput v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleY:F

    iget-object v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v11, v4, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v3

    invoke-static {v11, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getBigFolderFallenDistanceY(Landroid/view/View;F)F

    move-result v6

    iget-object v8, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1ca

    iget-object v8, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1ca
    invoke-virtual {v11, v6}, Landroid/view/View;->setTranslationY(F)V

    move-object v8, v11

    check-cast v8, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v12}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v8

    iget v12, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v8, v12}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationX(F)V

    iput v4, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallenValue:F

    check-cast v11, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v11, v4, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->computePreviewDrawingParamsColor(Lcom/android/launcher3/folder/big/BigFolderIcon;FF)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BigFolderIcon - TranslationX: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleX:F

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mBigFolderFallingStateScaleY:F

    invoke-static {v8, v1, v5}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto :goto_27a

    :cond_210
    instance-of v3, v11, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v3, :cond_26c

    iget-object v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_221

    iget-object v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_221
    invoke-static {v11, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v3

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationY(F)V

    iget v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v11, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x3e800000  # 0.25f

    mul-float/2addr v3, v4

    const/high16 v6, 0x3f800000  # 1.0f

    sub-float/2addr v6, v3

    invoke-virtual {v11, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v11, v4, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v3

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationX(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " IAreaWidget - TranslationX: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8, v11, v4, v2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v6, v5}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto :goto_27a

    :cond_26c
    const-string v1, "iconFallenWithDistance info= "

    invoke-static {v1, v12, v5}, Lcom/android/common/util/g0;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    goto :goto_27a

    :cond_272
    move-object/from16 p1, v1

    move-object/from16 p3, v3

    move/from16 v16, v6

    move/from16 v17, v8

    :goto_27a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v6, v16

    move/from16 v8, v17

    goto/16 :goto_c2

    :goto_286
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v6, v16

    goto/16 :goto_7c

    :cond_290
    return-void
.end method

.method public iconFolderFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_20

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "FolderPagedView child count = %s return"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusIconFallenAnimationManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    sget v1, Lcom/android/launcher/iconfallen/IconFallenUtils;->sOffsetYWorkSpace:F

    mul-float/2addr v1, p3

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3f
    if-ge v2, p1, :cond_a5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_a2

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1, p3}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceY(Landroid/view/View;F)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v1, p3, p2}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getItemFallenDistanceX(Landroid/content/Context;Landroid/view/View;FI)F

    move-result v6

    iget v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v7, v3, :cond_7a

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez v4, :cond_7a

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_7a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_7a
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v5, v4, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v5}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    iget v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/android/launcher3/OplusBubbleTextView;->setTextAlpha(F)V

    iget v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, p3

    sub-float v4, v5, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    iget v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    sub-float v4, v5, v4

    mul-float/2addr v4, p3

    sub-float/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_a5
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_ae

    iget p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_ae
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_be

    iget p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_be
    return-void
.end method

.method public initFolderFallenItems(Lcom/android/launcher3/folder/Folder;)[F
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [F

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_42

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenDistance(Landroid/content/Context;Landroid/view/View;)V

    instance-of v5, v4, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getScaleCenterY()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    check-cast v4, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/OplusBubbleTextView;->clearShadowLayer()V

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_42
    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mDp:Lcom/android/launcher3/OplusDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenCompletedStateScale:F

    mul-float/2addr p1, v1

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070950

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    aput p1, v0, v2

    const/4 p0, 0x1

    aput p1, v0, p0

    return-object v0
.end method

.method public initIconFallenPara(Lcom/android/launcher3/folder/Folder;IF)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initOpenFolderInfo(Lcom/android/launcher3/folder/Folder;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initBasePara(Lcom/android/launcher3/folder/Folder;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initIconLinesInfo(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHasBigFolder:Z

    if-eqz p1, :cond_1f

    const-string p2, "OplusIconFallenAnimationManager"

    const-string v0, "icon fallen in folder"

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initFolderFallenItems(Lcom/android/launcher3/folder/Folder;)[F

    move-result-object p1

    goto :goto_23

    :cond_1f
    invoke-direct {p0, p2}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->initWorkspaceFallenItems(I)[F

    move-result-object p1

    :goto_23
    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, p3, p1}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initItemFallenDistance(Landroid/content/Context;F[F)V

    return-void
.end method

.method public isHandingIconFallenState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    return p0
.end method

.method public isIconFallenTouchUpOnFolderFlag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    return p0
.end method

.method public isInstateIconFallen()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public performFallenIconClick()V
    .registers 7

    const-string v0, "OplusIconFallenAnimationManager"

    const/4 v1, 0x0

    const v2, 0x7f1200b5

    :try_start_6
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pm.isScreenOn() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    if-eqz v4, :cond_4a

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v4

    if-eqz v4, :cond_4a

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->startActivity(Landroid/view/View;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_31} :catch_41
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_31} :catch_32

    goto :goto_4a

    :catch_32
    iget-object v3, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Launcher does not have the permission to launch "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :catch_41
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->setAppIconNormalSize(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLastTouchedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFocusKeyView:Landroid/view/View;

    return-void
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/iconfallen/IconFallenUtils;->initOpenFolderInfo(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method public resetFallenIconsPosition()V
    .registers 16

    const-string v0, "OplusIconFallenAnimationManager"

    const-string/jumbo v1, "resetFallenIconsPosition"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_13

    const-string/jumbo p0, "resetFallenIconsPosition do nothing , mLauncher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v9, 0x14a

    sget-object v10, Lcom/android/common/config/AnimationConstant;->TOUCH_ICON_FALLEN_RESET_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_4b

    :cond_2e
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_db

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v8, 0x0

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_db

    :cond_4b
    :goto_4b
    iget-boolean v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->getAnimIndicatorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_68
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_7f

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_7f
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_96

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_96
    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v5, :cond_a7

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v8, 0x0

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_a7
    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_ca

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    const/4 v12, 0x0

    const/16 v13, 0x14a

    const/16 v3, 0x14a

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    move v3, v13

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_ca
    iget-object v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mOpenFolderRecommendFooter:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_db

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v8, 0x0

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_db
    :goto_db
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v2

    array-length v3, v2

    move v4, v11

    :goto_ed
    const/high16 v12, 0x40000000  # 2.0f

    if-ge v4, v3, :cond_12a

    aget-object v5, v2, v4

    instance-of v6, v5, Lcom/android/launcher3/Hotseat;

    if-eqz v6, :cond_f8

    goto :goto_127

    :cond_f8
    if-eq v5, v1, :cond_fb

    goto :goto_127

    :cond_fb
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v11

    :goto_104
    if-ge v7, v6, :cond_127

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v13, v8, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v13, :cond_112

    instance-of v13, v8, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v13, :cond_124

    :cond_112
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v8, v13}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v8, v13}, Landroid/view/View;->setPivotY(F)V

    :cond_124
    add-int/lit8 v7, v7, 0x1

    goto :goto_104

    :cond_127
    :goto_127
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed

    :cond_12a
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_130
    :goto_130
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_230

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/View;

    instance-of v1, v14, Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_176

    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result v1

    if-nez v1, :cond_151

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_130

    :cond_151
    iget-boolean v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mIconFallenTouchUpOnFolderFlag:Z

    if-nez v1, :cond_167

    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    :cond_167
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v7, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHotseatTransY:F

    const/4 v8, 0x0

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto :goto_130

    :cond_176
    instance-of v1, v14, Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1b8

    invoke-direct {p0, v0, v9, v10, v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    move-object v1, v14

    check-cast v1, Lcom/android/launcher3/OplusBubbleTextView;

    sget-object v3, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mAlpha:F

    aput v5, v4, v11

    const/high16 v5, 0x3f800000  # 1.0f

    aput v5, v4, v2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v3, v9

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    invoke-virtual {v14, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    invoke-virtual {v14, v3}, Landroid/view/View;->setPivotY(F)V

    new-instance v3, Lcom/android/common/config/a;

    invoke-direct {v3, v14, v2}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_130

    :cond_1b8
    invoke-static {v14}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    invoke-direct {p0, v0, v9, v10, v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    move-object v1, v14

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    invoke-virtual {v14, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    invoke-virtual {v14, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_130

    :cond_1ea
    instance-of v1, v14, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_21a

    invoke-direct {p0, v0, v9, v10, v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    move-object v1, v14

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    invoke-virtual {v14, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    invoke-virtual {v14, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_130

    :cond_21a
    invoke-direct {p0, v0, v9, v10, v14}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconState(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;)V

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v3, 0x14a

    move-object v1, p0

    move-object v2, v0

    move-object v4, v10

    move-object v5, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->performValueAnimation(Landroid/animation/AnimatorSet;ILandroid/view/animation/Interpolator;Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    goto/16 :goto_130

    :cond_230
    new-instance v1, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$1;-><init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public resetFallenIconsPosition(Z)V
    .registers 4

    const-string v0, "OplusIconFallenAnimationManager"

    const-string/jumbo v1, "resetFallenIconsPosition"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_13

    const-string/jumbo p0, "resetFallenIconsPosition do nothing , mLauncher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetNormalState()V

    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->resetFallenIconsPosition()V

    return-void
.end method

.method public setAppWidgetFallenState(Landroid/view/View;)V
    .registers 5

    const-string v0, "OplusIconFallenAnimationManager"

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    goto :goto_28

    :cond_10
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mFallenList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "setAppWidgetFallenState set alpha 0"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void

    :cond_28
    :goto_28
    const-string/jumbo p0, "setAppWidgetFallenState  view is null or mFallenList is null or empty"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startHandingIconFallenState()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->mHandingIconFallenState:Z

    const-string p0, "OplusIconFallenAnimationManager"

    const-string/jumbo v0, "startHandingIconFallenState mHandingIconFallenState true"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
